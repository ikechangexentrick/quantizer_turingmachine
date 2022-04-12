#include <SPI.h>
#include "quantizer_logic.h"
#include "quantizer_ui.h"
#include "button.h"
#include "Display_OLED.h"
#include "AD_DA_Converters.h"

#define ICACHE_RAM_ATTR

static const int SERIAL_BAUD_RATE = 9600;

static const size_t BUFLEN = 64;
char msg_buf[BUFLEN];

template <typename... Args>
void serial_log(const char *fmt, Args... args)
{
	snprintf(msg_buf, BUFLEN, fmt, args...);
	Serial.println( msg_buf );
}

//  -----------------------------------------------

SPISettings settings(1000000, MSBFIRST, SPI_MODE0);

//  -----------------------------------------------

static const size_t N_CH = 4096;
static const double V_REF = 5.0;
static const int PIN_AD_CS = 19; // 10;

static const int PIN_DA_CS = 4;
static const int PIN_DA_LATCH = 18;// 8;

static const int PIN_ROTARY_SW1 = 10; // pin change interrupt // 7
static const int PIN_ROTARY_SW2 = 6;
static const int PIN_BUTTON = 9; // pin change interrupt

//  -----------------------------------------------

/*
123456789|123456789|
[HarmonicMinor D# 0]
[Transpose>        ]
[HarmonicMinor     ]
*/

Display_OLED display;

//  -----------------------------------------------

MCP3208 ad_converter(settings, PIN_AD_CS);
MCP4922 da_converter(settings, PIN_DA_CS, PIN_DA_LATCH);

//  -----------------------------------------------

Menu_Calib menu_calib;
Menu_Transpose menu_trans;
Menu_Scale menu_scale;

MenuApp app_menu(&menu_scale, &display);

ScaleApp app_scale;
TransposeApp app_transpose;
CalibApp app_calib;

Application *app = &app_menu;

//  -----------------------------------------------

class RSW_cmd : public RotarySwitch
{
public:
	RSW_cmd(int pin_1, int pin_2)
		: RotarySwitch(pin_1, pin_2)
	{}

private:
	virtual void onRotarySW(RSW_DIR dir) override
	{
		if (app) app->onRotarySW(dir);
	}
};

RSW_cmd rsw1(PIN_ROTARY_SW1, PIN_ROTARY_SW2);
/*	
ICACHE_RAM_ATTR void onRotarySW()
{
	rsw1.callback();
}
*/

//  -----------------------------------------------

class Button_func : public Button
{
public:
	Button_func(int pin)
		: Button(pin)
	{}

private:
	virtual void onButton(int state) override
	{
		if (app) app->onButton(state);
	}
};

Button_func button_1(PIN_BUTTON);

//  -----------------------------------------------

ISR(PCINT0_vect)
{
	button_1.callback();
	rsw1.callback();
}

void setup() {
  Serial.begin(SERIAL_BAUD_RATE);

	pinMode(PIN_AD_CS, OUTPUT);

	pinMode(PIN_DA_CS, OUTPUT);
	pinMode(PIN_DA_LATCH, OUTPUT);

	pinMode(PIN_ROTARY_SW1, INPUT);
	pinMode(PIN_ROTARY_SW2, INPUT);
	//attachInterrupt(digitalPinToInterrupt(PIN_ROTARY_SW1), onRotarySW, CHANGE);

	pinMode(PIN_BUTTON, INPUT_PULLUP);

	PCICR = 0;
	PCMSK0 = 
		1 << 5 // 9
		| 1 << 6 // 10
	;
	PCICR = 
		1 // PCIE0
	;

	menu_trans.add_sibling(&menu_calib);
	menu_scale.add_sibling(&menu_trans);

	SPI.begin();

	display.init();
	display.show_menu(app_menu.get_current()->get_title());
}

unsigned int convert(unsigned int input)
{
	static Pitch prev;
	Pitch p;
	int value;
	int transpose = app_transpose.get_transpose();

	if (app == &app_calib) {
		p = app_calib.get_pitch();
		value = generate_quantized(p);
	} else {
		value = app_scale.exec_quantizer(input, p, transpose);
	}

	if (prev != p) {
		display.show_status("%s %s %d", app_scale.get_scale_name(), CodeName[p.index], p.oct);
		prev = p;
	}

	return value;
}

void loop() {
	unsigned int data_ch0 = ad_converter.receive();

//*
	data_ch0 = 
		convert(data_ch0)
	;
// */
	da_converter.emit(data_ch0, Channel_A);

/*
	double v_ch0 = data_ch0 *V_REF/(double)N_CH;

	serial_log("AD_OUT: %d Volts: %lf", data_ch0, v_ch0);
// */

	display.display(); // graphics functions cannot be called in interruption callbacks.
}

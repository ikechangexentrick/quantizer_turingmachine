#include <SPI.h>
#include "quantizer_logic.h"
#include "quantizer_ui.h"
#include "button.h"

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

static const size_t N_CH = 4096;
static const double V_REF = 5.0;
static const int PIN_AD_CS = 10;

static const int PIN_DA_CS = 4;
static const int PIN_DA_LATCH = 8;

static const int PIN_ROTARY_SW1 = 7; // attachInterrupt
static const int PIN_ROTARY_SW2 = 6;
static const int PIN_BUTTON = 9; // pin change interrupt

SPISettings settings(1000000, MSBFIRST, SPI_MODE0);

//  -----------------------------------------------

MenuApp app_menu;
Menu_Calib menu_calib;
Menu_Transpose menu_trans;
Menu_Scale menu_scale;

Menu *cur_menu = &menu_scale;

ScaleApp app_scale;
TransposeApp app_transpose;
CalibApp app_calib;

Application *app = nullptr;

//  -----------------------------------------------

void ScaleApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		serial_log("ScaleApp::onButton: exiting..");
	}
}

void ScaleApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	if (dir == RotarySwitch::CW) {
		if (current_scale < InvalidScale-1) {
			int tmp = (int)current_scale;
			tmp += 1;
			current_scale = (ScaleType) tmp;
		}
	} else {
		if (current_scale > 0) {
			int tmp = (int)current_scale;
			tmp -= 1;
			current_scale = (ScaleType) tmp;
		}
	}

	update_n_transpose();

	serial_log("ScaleApp::onRotarySW: %d %s", dir, ::get_scale_name(current_scale));
}

int ScaleApp::exec_quantizer(int input, Pitch &p, int transpose)
{
	if (current_scale == Major) {
		return ::exec_quantizer(input, Scale_major, p, transpose);
	} else if (current_scale == Minor) {
		return ::exec_quantizer(input, Scale_minor, p, transpose);
	} else if (current_scale == HarmonicMinor) {
		return ::exec_quantizer(input, Scale_hmmin, p, transpose);
	} else if (current_scale == WholeTone) {
		return ::exec_quantizer(input, Scale_whole, p, transpose);
	} else if (current_scale == Diminish) {
		return ::exec_quantizer(input, Scale_dimsh, p, transpose);
	} else if (current_scale == Chromatic) {
		return ::exec_quantizer(input, Scale_chrom, p, transpose);
	} else {
		return 0;
	}
}

void ScaleApp::update_n_transpose()
{
	if (current_scale == Major) {
		n_transpose = sizeof(Scale_major)/sizeof(int);
	} else if (current_scale == Minor) {
		n_transpose = sizeof(Scale_minor)/sizeof(int);
	} else if (current_scale == HarmonicMinor) {
		n_transpose = sizeof(Scale_hmmin)/sizeof(int);
	} else if (current_scale == WholeTone) {
		n_transpose = sizeof(Scale_whole)/sizeof(int);
	} else if (current_scale == Diminish) {
		n_transpose = sizeof(Scale_dimsh)/sizeof(int);
	} else if (current_scale == Chromatic) {
		n_transpose = sizeof(Scale_chrom)/sizeof(int);
	} else {
		n_transpose = 0;
	}
}


//  -----------------------------------------------

void TransposeApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	if (dir == RotarySwitch::CW) {
		if (transpose < app_scale.get_n_transpose()-1) {
			transpose += 1;
		}
	} else {
		if (transpose > 0) {
			transpose -= 1;
		}
	}

	serial_log("TransposeApp::onRotarySW: %d %d", dir, transpose);
}

void TransposeApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		serial_log("TransposeApp::onButton: exiting..");
	}
}

//  -----------------------------------------------

void CalibApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	if (dir == RotarySwitch::CW) {
		current++;
	} else {
		current--;
	}

	serial_log("CalibApp::onRotarySW: %d %s %d", dir, CodeName[current.index], current.oct);
}

void CalibApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		serial_log("CalibApp::onButton: exiting..");
	}
}

//  -----------------------------------------------

void MenuApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	if (dir == RotarySwitch::CW) {
		if (cur_menu->next) cur_menu = cur_menu->next;

	} else {
		if (cur_menu->prev) cur_menu = cur_menu->prev;

	}

	serial_log("MenuApp::onRotarySW: %d %s", dir, cur_menu->get_title() );
}

void MenuApp::onButton(int state)
{
	if (state == 1) {
		if (cur_menu->child) cur_menu = cur_menu->child;
		else cur_menu->exec();
	}
}

void Menu_Back::exec() {
	if (cur_menu->parent) cur_menu = cur_menu->parent;
}

//  -----------------------------------------------

void Menu_Scale::exec()
{
	serial_log("Menu_Scale::exec: %s", app_scale.get_scale_name());

	app = &app_scale;
}

void Menu_Transpose::exec()
{
	serial_log("Menu_Transpose::exec: %d", app_transpose.get_transpose());

	app = &app_transpose;
}

void Menu_Calib::exec()
{
	auto p = app_calib.get_pitch();
	serial_log("Menu_Calib::exec: %s %d", CodeName[p.index], p.oct);

	app = &app_calib;
}

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
ICACHE_RAM_ATTR void onRotarySW()
{
	rsw1.callback();
}

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
}

void setup() {
	app = &app_menu;

  Serial.begin(SERIAL_BAUD_RATE);

	pinMode(PIN_AD_CS, OUTPUT);

	pinMode(PIN_DA_CS, OUTPUT);
	pinMode(PIN_DA_LATCH, OUTPUT);

	pinMode(PIN_ROTARY_SW1, INPUT);
	pinMode(PIN_ROTARY_SW2, INPUT);
	attachInterrupt(digitalPinToInterrupt(PIN_ROTARY_SW1), onRotarySW, CHANGE);

	pinMode(PIN_BUTTON, INPUT_PULLUP);

	PCICR = 0;
	PCMSK0 = 
		1 << 5 // 9
	;
	PCICR = 
		1 // PCIE0
	;

	menu_trans.add_sibling(&menu_calib);
	menu_scale.add_sibling(&menu_trans);

	SPI.begin();
}

unsigned int receive() {
	SPI.beginTransaction(settings);
		digitalWrite(PIN_AD_CS, LOW);
			SPI.transfer(0b00000110); // start bit:1, ch 0 single end
			byte high_byte = SPI.transfer(0b00000000);
			byte low_byte = SPI.transfer(0x00); // dummy
		digitalWrite(PIN_AD_CS, HIGH);
	SPI.endTransaction();

	unsigned int data_ch0 = ((high_byte & 0x0f) << 8) + low_byte;
	return data_ch0;
}

void emit(unsigned int data)
{
	SPI.beginTransaction(settings);
		digitalWrite(PIN_DA_LATCH, HIGH);
		digitalWrite(PIN_DA_CS, LOW);
			SPI.transfer((data >> 8) | 0x30 ); // ch A, no buf, 1x, no shdn / upper 4 bits
			SPI.transfer( data & 0xff ); // lower 8 bits
		digitalWrite(PIN_DA_CS, HIGH);
		digitalWrite(PIN_DA_LATCH, LOW);
	SPI.endTransaction();
}


/* A-D measurement
512  -> 0.999 v / 0.625 v
1536 -> 2.000 v / 1.875 v
2560 -> 3.002 v / 3.125 v
3584 -> 4.00 v  / 4.375 v

-> 9.768e-4 V/d
*/
double ad_to_volts(unsigned int ad_out)
{
	return 9.76888e-4*(ad_out - 1536) + 2.000;
}

/* D-A measurement
0    -> 0.0014 v
512  -> 0.5935 v
1536 -> 1.786  v
2560 -> 2.973  v
3584 -> 4.17   v
4095 -> 4.76   v
*/
double expected_da_out(unsigned int da_in)
{
	return 1.1607e-3*(da_in - 1536) + 1.786;
}

unsigned int volts_to_da(double v)
{
	return 861.5491*(v - 1.786) + 1536;
}

// calibrate v_out to be equal to v_in
//   -> measured, but incorrect output. Not to be used.
unsigned int calibrate(unsigned int in)
{
	return 8.4163e-1*(double)in +427.62774;
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
		serial_log(" %s %d", CodeName[p.index], p.oct);
		prev = p;
	}

	return value;
}

void loop() {
	unsigned int data_ch0 = receive();

//*
	data_ch0 = 
		convert(data_ch0)
	;
// */
	emit(data_ch0);

/*
	double v_ch0 = data_ch0 *V_REF/(double)N_CH;

	serial_log("AD_OUT: %d Volts: %lf", data_ch0, v_ch0);
// */
}

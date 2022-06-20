#include <SPI.h>

#include "turing_machine_ui.h"
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

static const int PIN_RANDOM_SEED = 20; // A2
static const int PIN_CONTROL = 21; // A3

static const size_t N_CH = 4096;
static const double V_REF = 5.0;
static const int PIN_AD_CS = 19;

static const int PIN_DA_CS = 4;
static const int PIN_DA_LATCH = 18;

static const int PIN_ROTARY_SW1 = 10; // pin change interrupt
static const int PIN_ROTARY_SW2 = 6;
static const int PIN_BUTTON = 9; // pin change interrupt
static const int PIN_CLOCK = 7; // attachInterrupt

static const int PIN_WRITE_ON = 5;
static const int PIN_WRITE_OFF = 8;

//  -----------------------------------------------

/*
 0123456789|123456789|
| show_status()       |
| ------------------  |
| show_menu()         |
| show_app_msg()      |
*/

Display_OLED display;

//  -----------------------------------------------

MCP4922 da_converter(settings, PIN_DA_CS, PIN_DA_LATCH);

//  -----------------------------------------------

int sequence[LengthApp::SEQ_MAX_LEN];
volatile size_t seq_idx = 0;

//  -----------------------------------------------

Menu_Length menu_length;
MenuApp app_menu(&menu_length, &display);

LengthApp app_length;

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

ICACHE_RAM_ATTR void onClock()
{
	int clock = digitalRead(PIN_CLOCK);
	char *ic = clock == HIGH ? "+" : "-";

	int th = analogRead(PIN_CONTROL);
	if (th < 20) {
		th = 0;
		display.show_status("%s %d steps: free", ic, app_length.get_seq_len());
	} else if (th > 1000) {
		th = 1024;
		display.show_status("%s %d steps: lock", ic, app_length.get_seq_len());
	} else {
		display.show_status("%s %d steps: %d %%", ic, app_length.get_seq_len(), (int)((double)th/1024*100));
	}

	if (clock == HIGH) {

		if (++seq_idx >= app_length.get_seq_len()) {
			seq_idx = 0;
			//serial_log("onClock:");
		}

		if (digitalRead(PIN_WRITE_ON) == LOW) {
			sequence[seq_idx] = 4095;
		} else if (digitalRead(PIN_WRITE_OFF) == LOW) {
			sequence[seq_idx] = 0;
		} else {
			int do_change = random(1024);
			if (do_change > th) {
				int value = random(N_CH);
				sequence[seq_idx] = value;
			}
		}
	}

	//serial_log("onClock: %s %d %d", do_change>th ? "free" : "lock", seq_idx, sequence[seq_idx]);
	da_converter.emit(sequence[seq_idx], Channel_A);
}

//  -----------------------------------------------

void setup() {
  Serial.begin(SERIAL_BAUD_RATE);

	randomSeed(analogRead(PIN_RANDOM_SEED));

	pinMode(PIN_AD_CS, OUTPUT);

	pinMode(PIN_DA_CS, OUTPUT);
	pinMode(PIN_DA_LATCH, OUTPUT);

	pinMode(PIN_ROTARY_SW1, INPUT);
	pinMode(PIN_ROTARY_SW2, INPUT);

	pinMode(PIN_CLOCK, INPUT);
	attachInterrupt(digitalPinToInterrupt(PIN_CLOCK), onClock, CHANGE);

	pinMode(PIN_BUTTON, INPUT_PULLUP);

	pinMode(PIN_WRITE_ON, INPUT_PULLUP);
	pinMode(PIN_WRITE_OFF, INPUT_PULLUP);

	PCICR = 0;
	PCMSK0 = 
		1 << 5 // 9
		| 1 << 6 // 10
	;
	PCICR = 
		1 // PCIE0
	;

	SPI.begin();

	display.init();
	display.show_menu(app_menu.get_current()->get_title());
}

void loop() {
	// graphics functions cannot be called in interruption callbacks.
	display.display(
		[&](){
			display.show_menu();
			display.show_graph(sequence, app_length.get_seq_len(), seq_idx);
		}
	);
}

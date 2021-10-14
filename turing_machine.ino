#include <SPI.h>
#include "turing_machine_ui.h"
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

#include <Adafruit_SSD1306.h>
#include <Adafruit_GFX.h>
#include <Wire.h>

static const char OLED_ADDRESS = 0x3C; //0x78;
static const size_t OLED_WIDTH = 128;
static const size_t OLED_HEIGHT = 64;

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

SPISettings settings(1000000, MSBFIRST, SPI_MODE0);

//  -----------------------------------------------

/*
 0123456789|123456789|
| show_status()       |
| ------------------  |
| show_menu()         |
| show_app_msg()      |
*/

class Display_OLED
{
	const static size_t TMPLEN = 21;

public:
	Display_OLED()
		: oled_display(OLED_WIDTH, OLED_HEIGHT, &Wire, -1)
	{
		memset(menu_buf, 0x0, TMPLEN);
		memset(app_msg_buf, 0x0, TMPLEN);
		memset(status_buf, 0x0, TMPLEN);
	}

	void init()
	{
		// begin() should be called in setup()
		oled_display.begin(SSD1306_SWITCHCAPVCC, OLED_ADDRESS);
		oled_display.clearDisplay();
	}

	void show_menu(const char *title)
	{
		snprintf(menu_buf, TMPLEN, "%s", title);
	}

	template <typename... Args>
	void Display_OLED::show_app_msg(const char *fmt, Args... args)
	{
		snprintf(app_msg_buf, TMPLEN, fmt, args...);
	}

	template <typename... Args>
	void Display_OLED::show_status(const char *fmt, Args... args)
	{
		snprintf(status_buf, TMPLEN, fmt, args...);
	}

	void display() {
		oled_display.clearDisplay();
		oled_display.setTextColor(WHITE);

		oled_display.setCursor(0, 0);
		oled_display.setTextSize(1);
		oled_display.print(status_buf);

  	oled_display.drawFastHLine(1, TEXT_HEIGHT+TEXT_HEIGHT/2, 120, WHITE);

		oled_display.setCursor(0, 0+TEXT_HEIGHT*2);
		oled_display.setTextSize(1);
		oled_display.print(menu_buf);

		oled_display.setCursor(0, 0+TEXT_HEIGHT*3);
		oled_display.setTextSize(1);
		oled_display.print(app_msg_buf);

		oled_display.display();
	}

private:
	char menu_buf[TMPLEN];
	char app_msg_buf[TMPLEN];
	char status_buf[TMPLEN];

	static constexpr size_t TEXT_HEIGHT = 8;
	static constexpr size_t TEXT_WIDTH = 6;

	Adafruit_SSD1306 oled_display;
};

Display_OLED display;

//  -----------------------------------------------

static const size_t SEQ_MAX_LEN = 32;
int sequence[SEQ_MAX_LEN];
volatile size_t seq_idx = 0;
volatile size_t seq_len = 16;

//  -----------------------------------------------

Menu_Length menu_length;
MenuApp app_menu(&menu_length);

LengthApp app_length;

Application *app = &app_menu;

void LengthApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		display.show_app_msg(" ");
		display.show_menu(app_menu.get_current()->get_title());
	}
}

void LengthApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	if (dir == RotarySwitch::CW) {
		if (seq_len < SEQ_MAX_LEN) {
			seq_len += 1;
		}
	} else {
		if (seq_len > 0) {
			seq_len -= 1;
		}
	}

	display.show_app_msg("   %d", seq_len);
}

//  -----------------------------------------------

void MenuApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	if (dir == RotarySwitch::CW) {
		if (current->next) current = current->next;

	} else {
		if (current->prev) current = current->prev;

	}

	display.show_menu(current->get_title());
}

void MenuApp::onButton(int state)
{
	if (state == 1) {
		if (current->child) current = current->child;
		else current->exec();
	}
}

void Menu_Back::exec() {
	auto current = app->get_current();
	if (current->parent) current = current->parent;
}

//  -----------------------------------------------

void Menu_Length::exec()
{
	display.show_app_msg("   %d", seq_len);

	app = &app_length;
}


/*
Menu_Transpose menu_trans;

TransposeApp app_transpose;

//  -----------------------------------------------

void TransposeApp::onRotarySW(RotarySwitch::RSW_DIR dir)

void TransposeApp::onButton(int state)

//  -----------------------------------------------

void Menu_Transpose::exec()
*/

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
		display.show_status("%s %d steps: free", ic, seq_len);
	} else if (th > 1000) {
		th = 1024;
		display.show_status("%s %d steps: lock", ic, seq_len);
	} else {
		display.show_status("%s %d steps: %d %%", ic, seq_len, (int)((double)th/1024*100));
	}

	if (clock == HIGH) {

		if (++seq_idx >= seq_len) {
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
	emit(sequence[seq_idx]);
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

/*
	menu_trans.add_sibling(&menu_calib);
	menu_scale.add_sibling(&menu_trans);
*/

	SPI.begin();

	display.init();
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

void loop() {
	display.display(); // graphics functions cannot be called in interruption callbacks.
}

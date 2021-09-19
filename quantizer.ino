#include <SPI.h>
#include "quantizer_logic.h"

static const int SERIAL_BAUD_RATE = 9600;

static const size_t N_CH = 4096;
static const double V_REF = 5.0;
static const int PIN_AD_CS = 10;

static const int PIN_DA_CS = 9;
static const int PIN_DA_LATCH = 8;

SPISettings settings(1000000, MSBFIRST, SPI_MODE0);

void setup() {
  Serial.begin(SERIAL_BAUD_RATE);

	pinMode(PIN_AD_CS, OUTPUT);

	pinMode(PIN_DA_CS, OUTPUT);
	pinMode(PIN_DA_LATCH, OUTPUT);

	pinMode(7, INPUT_PULLUP);

	SPI.begin();
}

static const size_t BUFLEN = 64;
char msg_buf[BUFLEN];

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

struct Slot
{
	unsigned int v_min;
	unsigned int v_max;
	unsigned int v_out;
};


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

unsigned int convert_test(unsigned int input)
{
	static const Slot table[] = {
		{0, 1024, 512}
		, {1024, 2048, 1024+512}
		, {2048, 3072, 2048+512}
		, {3072, 4096, 3072+512}
	};

	for (int i = 0; i < sizeof(table)/sizeof(Slot); ++i) {
		if (table[i].v_min <= input && input < table[i].v_max) {
			return table[i].v_out;
		}
	}

	snprintf(msg_buf, BUFLEN, "0: %d", input);
	Serial.println(msg_buf);
	return 0;
}

unsigned int convert(unsigned int input)
{
	//return convert_test(input);

	static Pitch prev;
	Pitch p;
	int value = exec_quantizer(input
		//, Scale_major
		, Scale_minor
	, p, 0);

	if (prev != p) {
		snprintf(msg_buf, BUFLEN, " %s %d", CodeName[p.index], p.oct);
		Serial.println(msg_buf);
		prev = p;
	}

	return value;
}

void loop() {
	unsigned int data_ch0 = receive();
	//data_ch0 = calibrate(data_ch0);

	if (digitalRead(7) == HIGH) {
//*
	data_ch0 = 
		convert(data_ch0)
	;
// */
	emit(data_ch0);
	} else {
		Pitch p;
		p.index = 10; // A
		p.oct = 2;
		int out = generate_quantized(p);
/*
	snprintf(msg_buf, BUFLEN, " %d", out);
	Serial.println(msg_buf);
*/
		emit(out);
	}

/*
	double v_ch0 = data_ch0 *V_REF/(double)N_CH;

	snprintf(msg_buf, BUFLEN, "AD_OUT: %d Volts: %lf", data_ch0, v_ch0);
	Serial.println(msg_buf);
// */
}

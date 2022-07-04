#ifndef TURING_MACHINE_UI__H
#define TURING_MACHINE_UI__H

#include "ui_common.h"
#include <stddef.h>

struct Menu_Length : Menu
{
	Menu_Length() : Menu("Length>") {}

	void exec() override;
};

struct Menu_Mode : Menu
{
	Menu_Mode() : Menu("Mode>") {}

	void exec() override;
};


//  -----------------------------------------------

class LengthApp : public Application
{
public:
	LengthApp() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	size_t get_seq_len() const { return seq_len; }

	static constexpr const size_t SEQ_MAX_LEN = 32;

private:
	size_t seq_len = 8;
};

//  -----------------------------------------------
	
class ModeApp : public Application
{
public:
	enum Mode {
		CV
		, Gate
	};

	ModeApp() = default;

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	Mode get_mode() const { return mode; }
	const char *get_mode_name() const { return name[(int)mode]; }

private:
	Mode mode = CV;
	const char *name[2] = {"CV", "Gate"};
};


#endif // TURING_MACHINE_UI__H

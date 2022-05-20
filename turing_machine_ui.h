#ifndef TURING_MACHINE_UI__H
#define TURING_MACHINE_UI__H

#include "ui_common.h"
#include <stddef.h>

struct Menu_Length : Menu
{
	Menu_Length() : Menu("Length>") {}

	void exec() override;
};


//  -----------------------------------------------

class LengthApp : public Application
{
public:
	LenghtApp()
	{
	}

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	size_t get_seq_len() const { return seq_len; }

	static constexpr const size_t SEQ_MAX_LEN = 32;

private:
	size_t seq_len = 16;
};

//  -----------------------------------------------

#endif // TURING_MACHINE_UI__H

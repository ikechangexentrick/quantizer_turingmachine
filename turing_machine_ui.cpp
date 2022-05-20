#include "turing_machine_ui.h"
#include "Display_OLED.h"

extern Application *app;
extern MenuApp app_menu;
extern Display_OLED display;

extern LengthApp app_length;

//  -----------------------------------------------

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

void Menu_Length::exec()
{
	display.show_app_msg("   %d", app_length.get_seq_len());

	app = &app_length;
}



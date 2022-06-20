#include "quantizer_ui.h"
#include "Display_OLED.h"

extern Application *app;
extern MenuApp app_menu;
extern Display_OLED display;

extern ScaleApp app_scale;
extern TransposeApp app_transpose;
extern CalibApp app_calib;

//  -----------------------------------------------

void ScaleApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		display.show_app_msg(" ");
		//serial_log("ScaleApp::onButton: exiting..");
		display.show_menu(app_menu.get_current()->get_title());
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

	//serial_log("ScaleApp::onRotarySW: %d %s", dir, ::get_scale_name(current_scale));
	display.show_app_msg("   %s", ::get_scale_name(current_scale));
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

	//serial_log("TransposeApp::onRotarySW: %d %d", dir, transpose);
	display.show_app_msg("   %d", transpose);
}

void TransposeApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		display.show_app_msg(" ");
		display.show_menu(app_menu.get_current()->get_title());
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

	//serial_log("CalibApp::onRotarySW: %d %s %d", dir, CodeName[current.index], current.oct);
	display.show_app_msg("   %s %d", CodeName[current.index], current.oct);
}

void CalibApp::onButton(int state)
{
	if (state == 1) {
		app = &app_menu;

		display.show_app_msg(" ");
		display.show_menu(app_menu.get_current()->get_title());
	}
}

//  -----------------------------------------------

/*
void MenuApp::onRotarySW(RotarySwitch::RSW_DIR dir)
{
	if (dir == RotarySwitch::CW) {
		if (current->next) current = current->next;

	} else {
		if (current->prev) current = current->prev;

	}

	//serial_log("MenuApp::onRotarySW: %d %s", dir, current->get_title() );
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
*/

//  -----------------------------------------------

void Menu_Scale::exec()
{
	display.show_app_msg("   %s", app_scale.get_scale_name());
	//serial_log("Menu_Scale::exec: %s", app_scale.get_scale_name());

	app = &app_scale;
}

void Menu_Transpose::exec()
{
	display.show_app_msg("   %d", app_transpose.get_transpose());
	//serial_log("Menu_Transpose::exec: %d", app_transpose.get_transpose());

	app = &app_transpose;
}

void Menu_Calib::exec()
{
	auto p = app_calib.get_pitch();
	//serial_log("Menu_Calib::exec: %s %d", CodeName[p.index], p.oct);
	display.show_app_msg("   %s %d", CodeName[p.index], p.oct);

	app = &app_calib;
}



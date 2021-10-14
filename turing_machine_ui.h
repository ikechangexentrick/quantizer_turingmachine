#ifndef TURING_MACHINE_UI__H
#define TURING_MACHINE_UI__H

#include "ui_common.h"

struct Menu_Length : Menu
{
	Menu_Length() : Menu("Length>") {}

	void exec() override;
};

//  -----------------------------------------------


class MenuApp : public Application
{
public:
	MenuApp(Menu *top) : current(top) {}
	void onRotarySW(RotarySwitch::RSW_DIR dir) override;
	void onButton(int state) override;
	Menu * const get_current() const {return current;}

private:
	Menu *current;
};

struct Menu_Back : Menu
{
	Menu_Back(const char *title, const MenuApp *const app)
		: Menu(title), app(app)
	{}
	void exec() override;

	MenuApp *app;
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

private:
};

//  -----------------------------------------------


//  -----------------------------------------------

#endif // TURING_MACHINE_UI__H

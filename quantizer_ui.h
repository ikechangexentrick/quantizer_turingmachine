#ifndef QUANTIZER_UI__H
#define QUANTIZER_UI__H

#include "ui_common.h"
#include "quantizer_logic.h"

struct Menu_Transpose : Menu
{
	Menu_Transpose() : Menu("Transpose>") {}

	void exec() override;
};

struct Menu_Calib : Menu
{
	Menu_Calib() : Menu("Calib>") {}

	void exec() override;
};

struct Menu_Scale : Menu
{
	Menu_Scale() : Menu("Scale>") {}

	void exec() override;
};

//  -----------------------------------------------

/*
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
*/

//  -----------------------------------------------

class ScaleApp : public Application
{
public:
	ScaleApp()
		: current_scale(Major)
	{
		update_n_transpose();
	}

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	ScaleType get_scale_type() const {
		return current_scale;
	}

	const char *get_scale_name() const {
		return ::get_scale_name(current_scale);
	}

	int get_n_transpose() const { return n_transpose; }

	int exec_quantizer(int input, Pitch &p, int transpose);

private:
	ScaleType current_scale;
	int n_transpose;

	void update_n_transpose();
};

//  -----------------------------------------------

class TransposeApp : public Application
{
public:
	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	int get_transpose() const {
		return transpose;
	}

private:
	int transpose = 0;
};


//  -----------------------------------------------

class CalibApp : public Application
{
public:
	CalibApp()
	{
		current.oct = 4;
		current.index = 10;
	}

	void onRotarySW(RotarySwitch::RSW_DIR dir) override;

	void onButton(int state) override;

	Pitch get_pitch() const {
		return current;
	}

private:
	Pitch current;
};

#endif // QUANTIZER_UI__H

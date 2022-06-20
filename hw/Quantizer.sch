EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 900  1250 1350 4000
U 628BAE92
F0 "Sheet628BAE91" 50
F1 "_module_interface.sch" 50
F2 "audio_in_1" I R 2250 1450 50 
F3 "audio_out_1" I R 2250 2000 50 
F4 "re_1" I R 2250 2700 50 
F5 "re_2" I R 2250 2850 50 
F6 "btn_enter" I R 2250 3150 50 
F7 "gate" I R 2250 3450 50 
F8 "i2c_clk" I R 2250 3850 50 
F9 "i2c_data" I R 2250 4050 50 
F10 "TM_on" I R 2250 4350 50 
F11 "TM_off" I R 2250 4550 50 
F12 "TM_pot" I R 2250 4800 50 
$EndSheet
$Sheet
S 3300 1250 1200 4000
U 628BB73F
F0 "Sheet628BB73E" 50
F1 "_module_core.sch" 50
F2 "audio_in_1" I L 3300 1450 50 
F3 "audio_out_1" I L 3300 2000 50 
F4 "re_1" I L 3300 2700 50 
F5 "re_2" I L 3300 2850 50 
F6 "btn_enter" I L 3300 3150 50 
F7 "gate" I L 3300 3450 50 
F8 "i2c_clk" I L 3300 3850 50 
F9 "i2c_data" I L 3300 4050 50 
F10 "TM_off" I L 3300 4550 50 
F11 "TM_on" I L 3300 4350 50 
F12 "TM_pot" I L 3300 4800 50 
$EndSheet
Wire Wire Line
	2250 1450 3300 1450
Wire Wire Line
	2250 2000 3300 2000
Wire Wire Line
	3300 2700 2250 2700
Wire Wire Line
	2250 2850 3300 2850
Wire Wire Line
	3300 3150 2250 3150
Wire Wire Line
	2250 3450 3300 3450
Wire Wire Line
	3300 3850 2250 3850
Wire Wire Line
	2250 4050 3300 4050
Wire Wire Line
	2250 4350 3300 4350
Wire Wire Line
	2250 4550 3300 4550
Wire Wire Line
	2250 4800 3300 4800
Text Notes 1750 900  0    50   ~ 0
common PCB for Quantizer and TuringMachine
$EndSCHEMATC

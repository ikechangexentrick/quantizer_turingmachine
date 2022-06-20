EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:D D?
U 1 1 628C7EBF
P 2100 1450
AR Path="/628C7EBF" Ref="D?"  Part="1" 
AR Path="/628BAE92/628C7EBF" Ref="D1"  Part="1" 
F 0 "D1" V 2054 1530 50  0000 L CNN
F 1 "D" V 2145 1530 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 2100 1450 50  0001 C CNN
F 3 "~" H 2100 1450 50  0001 C CNN
	1    2100 1450
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 628C7EC5
P 2100 1750
AR Path="/628C7EC5" Ref="D?"  Part="1" 
AR Path="/628BAE92/628C7EC5" Ref="D2"  Part="1" 
F 0 "D2" V 2054 1830 50  0000 L CNN
F 1 "D" V 2145 1830 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 2100 1750 50  0001 C CNN
F 3 "~" H 2100 1750 50  0001 C CNN
	1    2100 1750
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 628C7ECB
P 1450 1600
AR Path="/628C7ECB" Ref="J?"  Part="1" 
AR Path="/628BAE92/628C7ECB" Ref="J1"  Part="1" 
F 0 "J1" H 1270 1533 50  0000 R CNN
F 1 "Audio_in" H 1270 1624 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 1450 1600 50  0001 C CNN
F 3 "~" H 1450 1600 50  0001 C CNN
	1    1450 1600
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628C7ED1
P 2100 1300
AR Path="/628C7ED1" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628C7ED1" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 2100 1150 50  0001 C CNN
F 1 "+5V" H 2115 1473 50  0000 C CNN
F 2 "" H 2100 1300 50  0001 C CNN
F 3 "" H 2100 1300 50  0001 C CNN
	1    2100 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628C7ED7
P 2100 1900
AR Path="/628C7ED7" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628C7ED7" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 2100 1650 50  0001 C CNN
F 1 "GND" H 2105 1727 50  0000 C CNN
F 2 "" H 2100 1900 50  0001 C CNN
F 3 "" H 2100 1900 50  0001 C CNN
	1    2100 1900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 628C7EDD
P 1900 1600
AR Path="/628C7EDD" Ref="R?"  Part="1" 
AR Path="/628BAE92/628C7EDD" Ref="R3"  Part="1" 
F 0 "R3" V 1693 1600 50  0000 C CNN
F 1 "100k" V 1784 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1830 1600 50  0001 C CNN
F 3 "~" H 1900 1600 50  0001 C CNN
	1    1900 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 1600 1750 1600
Wire Wire Line
	2050 1600 2100 1600
Connection ~ 2100 1600
Text Label 2300 1600 0    50   ~ 0
audio_in
NoConn ~ 1650 1500
$Comp
L power:GND #PWR?
U 1 1 628C7EE8
P 1650 1700
AR Path="/628C7EE8" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628C7EE8" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 1650 1450 50  0001 C CNN
F 1 "GND" H 1655 1527 50  0000 C CNN
F 2 "" H 1650 1700 50  0001 C CNN
F 3 "" H 1650 1700 50  0001 C CNN
	1    1650 1700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 628CEF63
P 3450 1600
AR Path="/628CEF63" Ref="R?"  Part="1" 
AR Path="/628BAE92/628CEF63" Ref="R7"  Part="1" 
F 0 "R7" V 3243 1600 50  0000 C CNN
F 1 "1k" V 3334 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3380 1600 50  0001 C CNN
F 3 "~" H 3450 1600 50  0001 C CNN
	1    3450 1600
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 628CEF6F
P 3800 1600
AR Path="/628CEF6F" Ref="J?"  Part="1" 
AR Path="/628BAE92/628CEF6F" Ref="J4"  Part="1" 
F 0 "J4" H 3620 1533 50  0000 R CNN
F 1 "Audio_out" H 3620 1624 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 3800 1600 50  0001 C CNN
F 3 "~" H 3800 1600 50  0001 C CNN
	1    3800 1600
	-1   0    0    1   
$EndComp
NoConn ~ 3600 1500
$Comp
L power:GND #PWR?
U 1 1 628CEF8A
P 3600 1700
AR Path="/628CEF8A" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628CEF8A" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 3600 1450 50  0001 C CNN
F 1 "GND" H 3605 1527 50  0000 C CNN
F 2 "" H 3600 1700 50  0001 C CNN
F 3 "" H 3600 1700 50  0001 C CNN
	1    3600 1700
	1    0    0    -1  
$EndComp
Text Label 3300 1600 2    50   ~ 0
audio_out_1
$Comp
L Switch:SW_Push SW?
U 1 1 628DD5BE
P 1400 2750
AR Path="/628DD5BE" Ref="SW?"  Part="1" 
AR Path="/628BAE92/628DD5BE" Ref="SW2"  Part="1" 
F 0 "SW2" H 1400 3035 50  0000 C CNN
F 1 "btn_enter" H 1400 2944 50  0000 C CNN
F 2 "Attenuverter:push_button" H 1400 2950 50  0001 C CNN
F 3 "~" H 1400 2950 50  0001 C CNN
	1    1400 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder SW?
U 1 1 628DD5C4
P 1350 3550
AR Path="/628DD5C4" Ref="SW?"  Part="1" 
AR Path="/628BAE92/628DD5C4" Ref="SW1"  Part="1" 
F 0 "SW1" V 1700 3650 50  0000 R CNN
F 1 "command" V 1600 3700 50  0000 R CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E_Vertical_H20mm" H 1200 3710 50  0001 C CNN
F 3 "~" H 1350 3810 50  0001 C CNN
	1    1350 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628DD5CA
P 1350 3850
AR Path="/628DD5CA" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628DD5CA" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 1350 3600 50  0001 C CNN
F 1 "GND" H 1355 3677 50  0000 C CNN
F 2 "" H 1350 3850 50  0001 C CNN
F 3 "" H 1350 3850 50  0001 C CNN
	1    1350 3850
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 628DD5D0
P 1750 3700
AR Path="/628DD5D0" Ref="R?"  Part="1" 
AR Path="/628BAE92/628DD5D0" Ref="R1"  Part="1" 
F 0 "R1" H 1820 3746 50  0000 L CNN
F 1 "10k" H 1820 3655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1680 3700 50  0001 C CNN
F 3 "~" H 1750 3700 50  0001 C CNN
	1    1750 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 628DD5D6
P 1750 4350
AR Path="/628DD5D6" Ref="R?"  Part="1" 
AR Path="/628BAE92/628DD5D6" Ref="R2"  Part="1" 
F 0 "R2" H 1820 4396 50  0000 L CNN
F 1 "10k" H 1820 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1680 4350 50  0001 C CNN
F 3 "~" H 1750 4350 50  0001 C CNN
	1    1750 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628DD5DC
P 1750 3550
AR Path="/628DD5DC" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628DD5DC" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 1750 3400 50  0001 C CNN
F 1 "+5V" H 1765 3723 50  0000 C CNN
F 2 "" H 1750 3550 50  0001 C CNN
F 3 "" H 1750 3550 50  0001 C CNN
	1    1750 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628DD5E2
P 1750 4200
AR Path="/628DD5E2" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628DD5E2" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 1750 4050 50  0001 C CNN
F 1 "+5V" H 1765 4373 50  0000 C CNN
F 2 "" H 1750 4200 50  0001 C CNN
F 3 "" H 1750 4200 50  0001 C CNN
	1    1750 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 628DD5E8
P 2150 3850
AR Path="/628DD5E8" Ref="R?"  Part="1" 
AR Path="/628BAE92/628DD5E8" Ref="R5"  Part="1" 
F 0 "R5" V 1943 3850 50  0000 C CNN
F 1 "10k" V 2034 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2080 3850 50  0001 C CNN
F 3 "~" H 2150 3850 50  0001 C CNN
	1    2150 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 628DD5EE
P 2150 4500
AR Path="/628DD5EE" Ref="R?"  Part="1" 
AR Path="/628BAE92/628DD5EE" Ref="R6"  Part="1" 
F 0 "R6" V 1943 4500 50  0000 C CNN
F 1 "10k" V 2034 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2080 4500 50  0001 C CNN
F 3 "~" H 2150 4500 50  0001 C CNN
	1    2150 4500
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 628DD5F4
P 2400 4000
AR Path="/628DD5F4" Ref="C?"  Part="1" 
AR Path="/628BAE92/628DD5F4" Ref="C1"  Part="1" 
F 0 "C1" H 2515 4046 50  0000 L CNN
F 1 "0.1u" H 2515 3955 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 2438 3850 50  0001 C CNN
F 3 "~" H 2400 4000 50  0001 C CNN
	1    2400 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 628DD5FA
P 2400 4650
AR Path="/628DD5FA" Ref="C?"  Part="1" 
AR Path="/628BAE92/628DD5FA" Ref="C2"  Part="1" 
F 0 "C2" H 2515 4696 50  0000 L CNN
F 1 "0.1u" H 2515 4605 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 2438 4500 50  0001 C CNN
F 3 "~" H 2400 4650 50  0001 C CNN
	1    2400 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628DD600
P 2400 4150
AR Path="/628DD600" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628DD600" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 2400 3900 50  0001 C CNN
F 1 "GND" H 2405 3977 50  0000 C CNN
F 2 "" H 2400 4150 50  0001 C CNN
F 3 "" H 2400 4150 50  0001 C CNN
	1    2400 4150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628DD606
P 2400 4800
AR Path="/628DD606" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628DD606" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 2400 4550 50  0001 C CNN
F 1 "GND" H 2405 4627 50  0000 C CNN
F 2 "" H 2400 4800 50  0001 C CNN
F 3 "" H 2400 4800 50  0001 C CNN
	1    2400 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 3850 2300 3850
Wire Wire Line
	2000 3850 1750 3850
Connection ~ 1750 3850
Wire Wire Line
	1750 3850 1450 3850
Wire Wire Line
	1250 3850 1250 4500
Wire Wire Line
	1250 4500 1750 4500
Connection ~ 1750 4500
Wire Wire Line
	1750 4500 2000 4500
Wire Wire Line
	2300 4500 2400 4500
Connection ~ 2400 4500
Wire Wire Line
	2400 4500 2600 4500
Wire Wire Line
	2400 3850 2600 3850
Connection ~ 2400 3850
Text Label 2600 4500 0    50   ~ 0
re_1
Text Label 2600 3850 0    50   ~ 0
re_2
$Comp
L power:GND #PWR?
U 1 1 628DD61B
P 1200 2750
AR Path="/628DD61B" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628DD61B" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 1200 2500 50  0001 C CNN
F 1 "GND" H 1205 2577 50  0000 C CNN
F 2 "" H 1200 2750 50  0001 C CNN
F 3 "" H 1200 2750 50  0001 C CNN
	1    1200 2750
	-1   0    0    -1  
$EndComp
Text Label 1600 2750 0    50   ~ 0
btn_enter
$Comp
L Arduino_compatible:OLED_Display_SSD1306 U?
U 1 1 628DD622
P 3600 3550
AR Path="/628DD622" Ref="U?"  Part="1" 
AR Path="/628BAE92/628DD622" Ref="U1"  Part="1" 
F 0 "U1" H 3500 3850 50  0000 L CNN
F 1 "OLED_Display_SSD1306" H 3200 3750 50  0000 L CNN
F 2 "Attenuverter:aki_OLED_0.96in" H 3600 3550 50  0001 C CNN
F 3 "" H 3600 3550 50  0001 C CNN
	1    3600 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628DD628
P 3300 4000
AR Path="/628DD628" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628DD628" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 3300 3750 50  0001 C CNN
F 1 "GND" V 3305 3872 50  0000 R CNN
F 2 "" H 3300 4000 50  0001 C CNN
F 3 "" H 3300 4000 50  0001 C CNN
	1    3300 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628DD62E
P 3500 4000
AR Path="/628DD62E" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628DD62E" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 3500 3850 50  0001 C CNN
F 1 "+5V" H 3515 4173 50  0000 C CNN
F 2 "" H 3500 4000 50  0001 C CNN
F 3 "" H 3500 4000 50  0001 C CNN
	1    3500 4000
	-1   0    0    1   
$EndComp
Text Label 3900 4000 3    50   ~ 0
i2c_data
Text Label 3700 4000 3    50   ~ 0
i2c_clk
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 628E456C
P 6400 3050
AR Path="/628E456C" Ref="Q?"  Part="1" 
AR Path="/628BAE92/628E456C" Ref="Q1"  Part="1" 
F 0 "Q1" H 6590 3096 50  0000 L CNN
F 1 "2SC1815" H 6590 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6600 2975 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 6400 3050 50  0001 L CNN
	1    6400 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 628E4572
P 6100 3400
AR Path="/628E4572" Ref="R?"  Part="1" 
AR Path="/628BAE92/628E4572" Ref="R11"  Part="1" 
F 0 "R11" V 5893 3400 50  0000 C CNN
F 1 "100k" V 5984 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6030 3400 50  0001 C CNN
F 3 "~" H 6100 3400 50  0001 C CNN
	1    6100 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 628E4578
P 5900 3050
AR Path="/628E4578" Ref="R?"  Part="1" 
AR Path="/628BAE92/628E4578" Ref="R10"  Part="1" 
F 0 "R10" V 5693 3050 50  0000 C CNN
F 1 "100k" V 5784 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5830 3050 50  0001 C CNN
F 3 "~" H 5900 3050 50  0001 C CNN
	1    5900 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628E457E
P 6500 2850
AR Path="/628E457E" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628E457E" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 6500 2700 50  0001 C CNN
F 1 "+5V" H 6515 3023 50  0000 C CNN
F 2 "" H 6500 2850 50  0001 C CNN
F 3 "" H 6500 2850 50  0001 C CNN
	1    6500 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628E4584
P 6500 3550
AR Path="/628E4584" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628E4584" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 6500 3300 50  0001 C CNN
F 1 "GND" H 6505 3377 50  0000 C CNN
F 2 "" H 6500 3550 50  0001 C CNN
F 3 "" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628E458A
P 6100 3550
AR Path="/628E458A" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628E458A" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 6100 3300 50  0001 C CNN
F 1 "GND" H 6105 3377 50  0000 C CNN
F 2 "" H 6100 3550 50  0001 C CNN
F 3 "" H 6100 3550 50  0001 C CNN
	1    6100 3550
	1    0    0    -1  
$EndComp
Connection ~ 6500 3250
$Comp
L Device:R R?
U 1 1 628E4592
P 6500 3400
AR Path="/628E4592" Ref="R?"  Part="1" 
AR Path="/628BAE92/628E4592" Ref="R12"  Part="1" 
F 0 "R12" V 6293 3400 50  0000 C CNN
F 1 "100k" V 6384 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6430 3400 50  0001 C CNN
F 3 "~" H 6500 3400 50  0001 C CNN
	1    6500 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 3050 6100 3050
Wire Wire Line
	6100 3250 6100 3050
Connection ~ 6100 3050
Wire Wire Line
	6100 3050 6200 3050
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 628E459C
P 5200 3050
AR Path="/628E459C" Ref="J?"  Part="1" 
AR Path="/628BAE92/628E459C" Ref="J3"  Part="1" 
F 0 "J3" H 5020 2983 50  0000 R CNN
F 1 "gate_in" H 5020 3074 50  0000 R CNN
F 2 "Attenuverter:mono_jack_3.5mm" H 5200 3050 50  0001 C CNN
F 3 "~" H 5200 3050 50  0001 C CNN
	1    5200 3050
	1    0    0    1   
$EndComp
NoConn ~ 5400 2950
$Comp
L power:GND #PWR?
U 1 1 628E45A3
P 5400 3150
AR Path="/628E45A3" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628E45A3" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 5400 2900 50  0001 C CNN
F 1 "GND" H 5405 2977 50  0000 C CNN
F 2 "" H 5400 3150 50  0001 C CNN
F 3 "" H 5400 3150 50  0001 C CNN
	1    5400 3150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 628E45A9
P 5550 3500
AR Path="/628E45A9" Ref="R?"  Part="1" 
AR Path="/628BAE92/628E45A9" Ref="R9"  Part="1" 
F 0 "R9" V 5343 3500 50  0000 C CNN
F 1 "10k" V 5434 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5480 3500 50  0001 C CNN
F 3 "~" H 5550 3500 50  0001 C CNN
	1    5550 3500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628E45AF
P 5550 3650
AR Path="/628E45AF" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/628E45AF" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 5550 3400 50  0001 C CNN
F 1 "GND" H 5555 3477 50  0000 C CNN
F 2 "" H 5550 3650 50  0001 C CNN
F 3 "" H 5550 3650 50  0001 C CNN
	1    5550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 628E45B5
P 5550 3200
AR Path="/628E45B5" Ref="D?"  Part="1" 
AR Path="/628BAE92/628E45B5" Ref="D5"  Part="1" 
F 0 "D5" V 5589 3082 50  0000 R CNN
F 1 "LED" V 5498 3082 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5550 3200 50  0001 C CNN
F 3 "~" H 5550 3200 50  0001 C CNN
	1    5550 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 3050 5550 3050
Connection ~ 5550 3050
Wire Wire Line
	5550 3050 5750 3050
Text Label 7000 3250 0    50   ~ 0
gate
Wire Wire Line
	6500 3250 7000 3250
Text Label 5600 1950 2    50   ~ 0
audio_in
Text Label 6150 1950 0    50   ~ 0
audio_out_1
Text Label 5600 1550 2    50   ~ 0
re_1
Text Label 5600 1450 2    50   ~ 0
re_2
$Comp
L power:GND #PWR?
U 1 1 6290DC78
P 6150 1750
AR Path="/6290DC78" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/6290DC78" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 6150 1500 50  0001 C CNN
F 1 "GND" V 6155 1622 50  0000 R CNN
F 2 "" H 6150 1750 50  0001 C CNN
F 3 "" H 6150 1750 50  0001 C CNN
	1    6150 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6290DC7E
P 5500 1650
AR Path="/6290DC7E" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/6290DC7E" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 5500 1500 50  0001 C CNN
F 1 "+5V" H 5515 1823 50  0000 C CNN
F 2 "" H 5500 1650 50  0001 C CNN
F 3 "" H 5500 1650 50  0001 C CNN
	1    5500 1650
	0    -1   -1   0   
$EndComp
Text Label 5600 1350 2    50   ~ 0
i2c_data
Text Label 6250 1350 0    50   ~ 0
i2c_clk
Text Label 5600 1750 2    50   ~ 0
gate
Wire Wire Line
	2100 1600 2300 1600
Text Label 6150 1450 0    50   ~ 0
btn_enter
Wire Wire Line
	6150 1350 6650 1350
Wire Wire Line
	6150 1450 6650 1450
Wire Wire Line
	6150 1650 6650 1650
Wire Wire Line
	6150 1950 6650 1950
Wire Wire Line
	5650 1350 5200 1350
Wire Wire Line
	5650 1450 5200 1450
Wire Wire Line
	5650 1550 5200 1550
Wire Wire Line
	5650 1650 5500 1650
Text HLabel 5200 1950 0    50   Input ~ 0
audio_in_1
Text HLabel 6650 1950 2    50   Input ~ 0
audio_out_1
Text HLabel 5200 1550 0    50   Input ~ 0
re_1
Text HLabel 5200 1450 0    50   Input ~ 0
re_2
Text HLabel 6650 1450 2    50   Input ~ 0
btn_enter
Text HLabel 5200 1750 0    50   Input ~ 0
gate
Text HLabel 6650 1350 2    50   Input ~ 0
i2c_clk
Text HLabel 5200 1350 0    50   Input ~ 0
i2c_data
Wire Wire Line
	5200 1750 5650 1750
Wire Wire Line
	5200 1950 5650 1950
$Comp
L Device:R_POT RV1
U 1 1 62A42FE4
P 5300 4500
F 0 "RV1" H 5231 4454 50  0000 R CNN
F 1 "param" H 5231 4545 50  0000 R CNN
F 2 "Attenuverter:Potentiometer_Alps_RK09L_Single_Vertical" H 5300 4500 50  0001 C CNN
F 3 "~" H 5300 4500 50  0001 C CNN
	1    5300 4500
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62A4427B
P 5300 4350
AR Path="/62A4427B" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/62A4427B" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 5300 4200 50  0001 C CNN
F 1 "+5V" H 5315 4523 50  0000 C CNN
F 2 "" H 5300 4350 50  0001 C CNN
F 3 "" H 5300 4350 50  0001 C CNN
	1    5300 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A447E9
P 5300 4650
AR Path="/62A447E9" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/62A447E9" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 5300 4400 50  0001 C CNN
F 1 "GND" H 5305 4477 50  0000 C CNN
F 2 "" H 5300 4650 50  0001 C CNN
F 3 "" H 5300 4650 50  0001 C CNN
	1    5300 4650
	1    0    0    -1  
$EndComp
Text Label 5450 4500 0    50   ~ 0
TM_pot
$Comp
L Arduino_compatible:SW_DPDT SW4
U 1 1 62A48494
P 6650 4550
F 0 "SW4" H 6600 4875 50  0000 C CNN
F 1 "write" H 6600 4784 50  0000 C CNN
F 2 "Attenuverter:SW_DPDT_Momentary" H 6650 4550 50  0001 C CNN
F 3 "" H 6650 4550 50  0001 C CNN
	1    6650 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A48CF1
P 6400 4550
AR Path="/62A48CF1" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/62A48CF1" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 6400 4300 50  0001 C CNN
F 1 "GND" H 6405 4377 50  0000 C CNN
F 2 "" H 6400 4550 50  0001 C CNN
F 3 "" H 6400 4550 50  0001 C CNN
	1    6400 4550
	0    1    1    0   
$EndComp
Text Label 6800 4650 0    50   ~ 0
TM_on
Text Label 6800 4450 0    50   ~ 0
TM_off
Text HLabel 6650 1650 2    50   Input ~ 0
TM_on
Text HLabel 6650 1550 2    50   Input ~ 0
TM_off
Text HLabel 6650 1850 2    50   Input ~ 0
TM_pot
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J6
U 1 1 62A67888
P 5850 1650
F 0 "J6" H 5900 2167 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 5900 2076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 5850 1650 50  0001 C CNN
F 3 "~" H 5850 1650 50  0001 C CNN
	1    5850 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A6B8F7
P 5650 1850
AR Path="/62A6B8F7" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/62A6B8F7" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 5650 1600 50  0001 C CNN
F 1 "GND" V 5655 1722 50  0000 R CNN
F 2 "" H 5650 1850 50  0001 C CNN
F 3 "" H 5650 1850 50  0001 C CNN
	1    5650 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 1550 6650 1550
Wire Wire Line
	6150 1850 6650 1850
Text Label 6150 1850 0    50   ~ 0
TM_pot
Text Label 6150 1550 0    50   ~ 0
TM_off
Text Label 6150 1650 0    50   ~ 0
TM_on
Wire Notes Line
	4600 2450 7450 2450
Wire Notes Line
	7450 2450 7450 4950
Wire Notes Line
	7450 4950 4600 4950
Wire Notes Line
	4600 4950 4600 2450
Text Notes 4700 2600 0    50   ~ 0
Interface for TuringMachine
$EndSCHEMATC

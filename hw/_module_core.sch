EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Device:CP C?
U 1 1 628EC36A
P 10350 5650
AR Path="/628EC36A" Ref="C?"  Part="1" 
AR Path="/628BB73F/628EC36A" Ref="C8"  Part="1" 
F 0 "C8" H 10232 5696 50  0000 R CNN
F 1 "100u" H 10232 5605 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 10388 5500 50  0001 C CNN
F 3 "~" H 10350 5650 50  0001 C CNN
	1    10350 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 628EC370
P 10350 5950
AR Path="/628EC370" Ref="C?"  Part="1" 
AR Path="/628BB73F/628EC370" Ref="C9"  Part="1" 
F 0 "C9" H 10232 5996 50  0000 R CNN
F 1 "100u" H 10232 5905 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 10388 5800 50  0001 C CNN
F 3 "~" H 10350 5950 50  0001 C CNN
	1    10350 5950
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 628EC376
P 8850 5850
AR Path="/628EC376" Ref="J?"  Part="1" 
AR Path="/628BB73F/628EC376" Ref="J9"  Part="1" 
F 0 "J9" H 8900 6267 50  0000 C CNN
F 1 "power_bus" H 8900 6176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Horizontal" H 8850 5850 50  0001 C CNN
F 3 "~" H 8850 5850 50  0001 C CNN
	1    8850 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 628EC37C
P 8650 6050
AR Path="/628EC37C" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628EC37C" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 8650 5900 50  0001 C CNN
F 1 "+12V" V 8665 6178 50  0000 L CNN
F 2 "" H 8650 6050 50  0001 C CNN
F 3 "" H 8650 6050 50  0001 C CNN
	1    8650 6050
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 628EC382
P 9150 6050
AR Path="/628EC382" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628EC382" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 9150 5900 50  0001 C CNN
F 1 "+12V" V 9165 6178 50  0000 L CNN
F 2 "" H 9150 6050 50  0001 C CNN
F 3 "" H 9150 6050 50  0001 C CNN
	1    9150 6050
	0    1    1    0   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 628EC388
P 8650 5650
AR Path="/628EC388" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628EC388" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 8650 5750 50  0001 C CNN
F 1 "-12V" V 8665 5778 50  0000 L CNN
F 2 "" H 8650 5650 50  0001 C CNN
F 3 "" H 8650 5650 50  0001 C CNN
	1    8650 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 628EC38E
P 9150 5650
AR Path="/628EC38E" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628EC38E" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 9150 5750 50  0001 C CNN
F 1 "-12V" V 9165 5778 50  0000 L CNN
F 2 "" H 9150 5650 50  0001 C CNN
F 3 "" H 9150 5650 50  0001 C CNN
	1    9150 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628EC394
P 8650 5850
AR Path="/628EC394" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628EC394" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 8650 5600 50  0001 C CNN
F 1 "GND" V 8655 5722 50  0000 R CNN
F 2 "" H 8650 5850 50  0001 C CNN
F 3 "" H 8650 5850 50  0001 C CNN
	1    8650 5850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628EC39A
P 9150 5850
AR Path="/628EC39A" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628EC39A" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 9150 5600 50  0001 C CNN
F 1 "GND" V 9155 5722 50  0000 R CNN
F 2 "" H 9150 5850 50  0001 C CNN
F 3 "" H 9150 5850 50  0001 C CNN
	1    9150 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 5750 8650 5850
Connection ~ 8650 5850
Wire Wire Line
	8650 5850 8650 5950
Wire Wire Line
	9150 5750 9150 5850
Connection ~ 9150 5850
Wire Wire Line
	9150 5850 9150 5950
$Comp
L power:-12V #PWR?
U 1 1 628EC3A6
P 10350 6100
AR Path="/628EC3A6" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628EC3A6" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 10350 6200 50  0001 C CNN
F 1 "-12V" H 10365 6273 50  0000 C CNN
F 2 "" H 10350 6100 50  0001 C CNN
F 3 "" H 10350 6100 50  0001 C CNN
	1    10350 6100
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 628EC3AC
P 10350 5500
AR Path="/628EC3AC" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628EC3AC" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 10350 5350 50  0001 C CNN
F 1 "+12V" H 10365 5673 50  0000 C CNN
F 2 "" H 10350 5500 50  0001 C CNN
F 3 "" H 10350 5500 50  0001 C CNN
	1    10350 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628EC3B2
P 10000 5800
AR Path="/628EC3B2" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628EC3B2" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 10000 5550 50  0001 C CNN
F 1 "GND" H 10005 5627 50  0000 C CNN
F 2 "" H 10000 5800 50  0001 C CNN
F 3 "" H 10000 5800 50  0001 C CNN
	1    10000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 5800 10000 5800
Connection ~ 10350 5800
$Comp
L power:PWR_FLAG #FLG?
U 1 1 628EC3BA
P 10000 5800
AR Path="/628EC3BA" Ref="#FLG?"  Part="1" 
AR Path="/628BB73F/628EC3BA" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 10000 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 10000 5973 50  0000 C CNN
F 2 "" H 10000 5800 50  0001 C CNN
F 3 "~" H 10000 5800 50  0001 C CNN
	1    10000 5800
	1    0    0    -1  
$EndComp
Connection ~ 10000 5800
$Comp
L power:PWR_FLAG #FLG?
U 1 1 628EC3C1
P 10350 5500
AR Path="/628EC3C1" Ref="#FLG?"  Part="1" 
AR Path="/628BB73F/628EC3C1" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 10350 5575 50  0001 C CNN
F 1 "PWR_FLAG" V 10350 5628 50  0000 L CNN
F 2 "" H 10350 5500 50  0001 C CNN
F 3 "~" H 10350 5500 50  0001 C CNN
	1    10350 5500
	0    1    1    0   
$EndComp
Connection ~ 10350 5500
$Comp
L power:PWR_FLAG #FLG?
U 1 1 628EC3C8
P 10350 6100
AR Path="/628EC3C8" Ref="#FLG?"  Part="1" 
AR Path="/628BB73F/628EC3C8" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 10350 6175 50  0001 C CNN
F 1 "PWR_FLAG" V 10350 6228 50  0000 L CNN
F 2 "" H 10350 6100 50  0001 C CNN
F 3 "~" H 10350 6100 50  0001 C CNN
	1    10350 6100
	0    1    1    0   
$EndComp
Connection ~ 10350 6100
Wire Wire Line
	7400 2050 7400 2200
Wire Wire Line
	7400 2200 8000 2200
Wire Wire Line
	8000 2200 8000 1950
Wire Wire Line
	8000 1950 8150 1950
Wire Wire Line
	8000 2750 8000 3000
Wire Wire Line
	8000 3000 7400 3000
Wire Wire Line
	7400 3000 7400 2850
Wire Wire Line
	7100 1850 7400 1850
Wire Wire Line
	7100 2650 7400 2650
Wire Wire Line
	8000 2750 8150 2750
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 62918F21
P 7700 1950
AR Path="/62918F21" Ref="U?"  Part="1" 
AR Path="/628BAE92/62918F21" Ref="U?"  Part="1" 
AR Path="/628BB73F/62918F21" Ref="U5"  Part="1" 
F 0 "U5" H 7700 2317 50  0000 C CNN
F 1 "TL074" H 7700 2226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7650 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7750 2150 50  0001 C CNN
	1    7700 1950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 2 1 62918F27
P 2350 1600
AR Path="/62918F27" Ref="U?"  Part="2" 
AR Path="/628BAE92/62918F27" Ref="U?"  Part="2" 
AR Path="/628BB73F/62918F27" Ref="U5"  Part="2" 
F 0 "U5" H 2350 1967 50  0000 C CNN
F 1 "TL074" H 2350 1876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2300 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2400 1800 50  0001 C CNN
	2    2350 1600
	1    0    0    -1  
$EndComp
Connection ~ 8000 1950
Connection ~ 8000 2750
$Comp
L Device:C C?
U 1 1 62921644
P 7850 5800
AR Path="/62921644" Ref="C?"  Part="1" 
AR Path="/628BAE92/62921644" Ref="C?"  Part="1" 
AR Path="/628BB73F/62921644" Ref="C7"  Part="1" 
F 0 "C7" H 7965 5846 50  0000 L CNN
F 1 "0.1u" H 7965 5755 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 7888 5650 50  0001 C CNN
F 3 "~" H 7850 5800 50  0001 C CNN
	1    7850 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5650 7850 5500
Wire Wire Line
	7850 5500 7400 5500
Wire Wire Line
	7400 6100 7850 6100
Wire Wire Line
	7850 6100 7850 5950
$Comp
L power:+12V #PWR?
U 1 1 6292164E
P 7400 5500
AR Path="/6292164E" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/6292164E" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/6292164E" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 7400 5350 50  0001 C CNN
F 1 "+12V" H 7415 5673 50  0000 C CNN
F 2 "" H 7400 5500 50  0001 C CNN
F 3 "" H 7400 5500 50  0001 C CNN
	1    7400 5500
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 62921654
P 7400 6100
AR Path="/62921654" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/62921654" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/62921654" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 7400 6200 50  0001 C CNN
F 1 "-12V" H 7415 6273 50  0000 C CNN
F 2 "" H 7400 6100 50  0001 C CNN
F 3 "" H 7400 6100 50  0001 C CNN
	1    7400 6100
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 6292165A
P 7500 5800
AR Path="/6292165A" Ref="U?"  Part="5" 
AR Path="/628BAE92/6292165A" Ref="U?"  Part="5" 
AR Path="/628BB73F/6292165A" Ref="U5"  Part="5" 
F 0 "U5" H 7458 5846 50  0000 L CNN
F 1 "TL074" H 7458 5755 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7450 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7550 6000 50  0001 C CNN
	5    7500 5800
	1    0    0    -1  
$EndComp
Connection ~ 7400 6100
Connection ~ 7400 5500
Text HLabel 8150 1950 2    50   Input ~ 0
audio_out_1
Wire Wire Line
	2050 2550 2650 2550
NoConn ~ 3050 2600
NoConn ~ 3050 2500
NoConn ~ 3050 2400
NoConn ~ 3050 2300
NoConn ~ 3050 2200
NoConn ~ 3050 2100
Wire Wire Line
	3700 2800 3550 2800
Connection ~ 3700 2800
$Comp
L power:GND #PWR?
U 1 1 628F5825
P 3700 2800
AR Path="/628F5825" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F5825" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 3700 2550 50  0001 C CNN
F 1 "GND" H 3705 2627 50  0000 C CNN
F 2 "" H 3700 2800 50  0001 C CNN
F 3 "" H 3700 2800 50  0001 C CNN
	1    3700 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 2800 3700 2800
Connection ~ 3850 1250
$Comp
L power:+5V #PWR?
U 1 1 628F581D
P 3850 1250
AR Path="/628F581D" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F581D" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 3850 1100 50  0001 C CNN
F 1 "+5V" H 3865 1423 50  0000 C CNN
F 2 "" H 3850 1250 50  0001 C CNN
F 3 "" H 3850 1250 50  0001 C CNN
	1    3850 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 1550 3850 1700
Connection ~ 3850 1550
Wire Wire Line
	3550 1550 3550 1700
Wire Wire Line
	3850 1550 3550 1550
Wire Wire Line
	4300 1250 3850 1250
Connection ~ 4300 1250
Wire Wire Line
	3850 1250 3850 1550
Wire Wire Line
	4650 1250 4300 1250
Wire Wire Line
	4450 1550 4300 1550
Connection ~ 4450 1550
Wire Wire Line
	4650 1550 4450 1550
$Comp
L power:GND #PWR?
U 1 1 628F580C
P 4450 1550
AR Path="/628F580C" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F580C" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 4450 1300 50  0001 C CNN
F 1 "GND" H 4455 1377 50  0000 C CNN
F 2 "" H 4450 1550 50  0001 C CNN
F 3 "" H 4450 1550 50  0001 C CNN
	1    4450 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 628F5806
P 4650 1400
AR Path="/628F5806" Ref="C?"  Part="1" 
AR Path="/628BB73F/628F5806" Ref="C4"  Part="1" 
F 0 "C4" H 4768 1446 50  0000 L CNN
F 1 "1u" H 4768 1355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4688 1250 50  0001 C CNN
F 3 "~" H 4650 1400 50  0001 C CNN
	1    4650 1400
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 628F5800
P 4300 1400
AR Path="/628F5800" Ref="C?"  Part="1" 
AR Path="/628BB73F/628F5800" Ref="C3"  Part="1" 
F 0 "C3" H 4418 1446 50  0000 L CNN
F 1 "10u" H 4418 1355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4338 1250 50  0001 C CNN
F 3 "~" H 4300 1400 50  0001 C CNN
	1    4300 1400
	-1   0    0    -1  
$EndComp
Text Label 4250 2100 0    50   ~ 0
SPI_CLOCK
Text Label 4250 2200 0    50   ~ 0
SPI_MISO
Text Label 4250 2300 0    50   ~ 0
SPI_MOSI
Text Label 4250 2400 0    50   ~ 0
CS_AD
$Comp
L Analog_ADC:MCP3208 U?
U 1 1 628F57A2
P 3650 2200
AR Path="/628F57A2" Ref="U?"  Part="1" 
AR Path="/628BB73F/628F57A2" Ref="U2"  Part="1" 
F 0 "U2" H 4400 1750 50  0000 C CNN
F 1 "MCP3208" H 4400 1650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3750 2300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21298c.pdf" H 3750 2300 50  0001 C CNN
	1    3650 2200
	1    0    0    -1  
$EndComp
Connection ~ 6050 1350
Wire Wire Line
	6050 1350 6050 1800
Wire Wire Line
	6350 1350 6050 1350
Connection ~ 6350 1350
Wire Wire Line
	6050 1350 6050 1300
Wire Wire Line
	6700 1350 6350 1350
Wire Wire Line
	6550 1650 6700 1650
Connection ~ 6550 1650
Wire Wire Line
	6350 1650 6550 1650
$Comp
L Device:CP C?
U 1 1 628F5852
P 6700 1500
AR Path="/628F5852" Ref="C?"  Part="1" 
AR Path="/628BB73F/628F5852" Ref="C6"  Part="1" 
F 0 "C6" H 6818 1546 50  0000 L CNN
F 1 "1u" H 6818 1455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6738 1350 50  0001 C CNN
F 3 "~" H 6700 1500 50  0001 C CNN
	1    6700 1500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628F584C
P 6550 1650
AR Path="/628F584C" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F584C" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 6550 1400 50  0001 C CNN
F 1 "GND" H 6555 1477 50  0000 C CNN
F 2 "" H 6550 1650 50  0001 C CNN
F 3 "" H 6550 1650 50  0001 C CNN
	1    6550 1650
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 628F5846
P 6350 1500
AR Path="/628F5846" Ref="C?"  Part="1" 
AR Path="/628BB73F/628F5846" Ref="C5"  Part="1" 
F 0 "C5" H 6468 1546 50  0000 L CNN
F 1 "10u" H 6468 1455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6388 1350 50  0001 C CNN
F 3 "~" H 6350 1500 50  0001 C CNN
	1    6350 1500
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628F5839
P 6550 2500
AR Path="/628F5839" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F5839" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 6550 2350 50  0001 C CNN
F 1 "+5V" V 6565 2628 50  0000 L CNN
F 2 "" H 6550 2500 50  0001 C CNN
F 3 "" H 6550 2500 50  0001 C CNN
	1    6550 2500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628F5833
P 6550 2000
AR Path="/628F5833" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F5833" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 6550 1850 50  0001 C CNN
F 1 "+5V" V 6565 2128 50  0000 L CNN
F 2 "" H 6550 2000 50  0001 C CNN
F 3 "" H 6550 2000 50  0001 C CNN
	1    6550 2000
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628F582D
P 6050 1300
AR Path="/628F582D" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F582D" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 6050 1150 50  0001 C CNN
F 1 "+5V" H 6065 1473 50  0000 C CNN
F 2 "" H 6050 1300 50  0001 C CNN
F 3 "" H 6050 1300 50  0001 C CNN
	1    6050 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628F57FA
P 5550 2000
AR Path="/628F57FA" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F57FA" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 5550 1850 50  0001 C CNN
F 1 "+5V" V 5565 2128 50  0000 L CNN
F 2 "" H 5550 2000 50  0001 C CNN
F 3 "" H 5550 2000 50  0001 C CNN
	1    5550 2000
	0    -1   -1   0   
$EndComp
Text Label 5550 2400 2    50   ~ 0
SPI_MOSI
Text Label 5550 2200 2    50   ~ 0
SPI_CLOCK
Text Label 5550 2300 2    50   ~ 0
latch_DA
Text Label 5550 2500 2    50   ~ 0
CS_DA
$Comp
L power:GND #PWR?
U 1 1 628F57AE
P 6050 2700
AR Path="/628F57AE" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F57AE" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 6050 2450 50  0001 C CNN
F 1 "GND" H 6055 2527 50  0000 C CNN
F 2 "" H 6050 2700 50  0001 C CNN
F 3 "" H 6050 2700 50  0001 C CNN
	1    6050 2700
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4922 U?
U 1 1 628F57A8
P 6050 2200
AR Path="/628F57A8" Ref="U?"  Part="1" 
AR Path="/628BB73F/628F57A8" Ref="U4"  Part="1" 
F 0 "U4" H 5750 2700 50  0000 C CNN
F 1 "MCP4922" H 5750 2600 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6850 1900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22250A.pdf" H 6850 1900 50  0001 C CNN
	1    6050 2200
	1    0    0    -1  
$EndComp
Text Label 4350 4850 2    50   ~ 0
gate
Text Label 10350 4050 0    50   ~ 0
D21_A3
Text Label 10350 4150 0    50   ~ 0
D20_A2
Text Label 10350 4250 0    50   ~ 0
D19_A1
Text Label 10350 4350 0    50   ~ 0
D18_A0
Text Label 10350 4550 0    50   ~ 0
D15
Text Label 10350 4650 0    50   ~ 0
D14
Text Label 10350 4450 0    50   ~ 0
D16
Text Label 10350 4750 0    50   ~ 0
D10_A10
Text Label 9850 4750 2    50   ~ 0
D9_A9
Text Label 9850 4650 2    50   ~ 0
D8_A8
Text Label 9850 4550 2    50   ~ 0
D7
Text Label 9850 4450 2    50   ~ 0
D6_A7
Text Label 9850 4350 2    50   ~ 0
D5
Text Label 9850 4250 2    50   ~ 0
D4
Text Label 9850 4150 2    50   ~ 0
D3
Text Label 9850 4050 2    50   ~ 0
D2
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 628F5889
P 10050 4350
AR Path="/628F5889" Ref="J?"  Part="1" 
AR Path="/628BB73F/628F5889" Ref="J8"  Part="1" 
F 0 "J8" H 10100 4867 50  0000 C CNN
F 1 "breakout" H 10100 4776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 10050 4350 50  0001 C CNN
F 3 "~" H 10050 4350 50  0001 C CNN
	1    10050 4350
	1    0    0    -1  
$EndComp
Text Label 6000 5000 0    50   ~ 0
D16
Text Label 6000 4850 0    50   ~ 0
D14
Text Label 6000 4700 0    50   ~ 0
D15
Wire Wire Line
	5550 4700 6000 4700
Wire Wire Line
	5550 5000 6000 5000
Wire Wire Line
	5550 4850 6000 4850
Text Label 3950 4100 2    50   ~ 0
D2
Text Label 3950 4250 2    50   ~ 0
D3
Wire Wire Line
	4350 4100 3950 4100
Wire Wire Line
	4350 4250 3950 4250
Text Label 3950 4400 2    50   ~ 0
D4
Text Label 3950 4550 2    50   ~ 0
D5
Text Label 3950 4700 2    50   ~ 0
D6_A7
Text Label 3950 4850 2    50   ~ 0
D7
Text Label 3950 5000 2    50   ~ 0
D8_A8
Text Label 3950 5150 2    50   ~ 0
D9_A9
Text Label 5900 5150 0    50   ~ 0
D10_A10
Text Label 5900 4550 0    50   ~ 0
D18_A0
Text Label 5900 4400 0    50   ~ 0
D19_A1
Text Label 5900 4250 0    50   ~ 0
D20_A2
Text Label 5900 4100 0    50   ~ 0
D21_A3
Wire Wire Line
	5550 4550 5900 4550
Wire Wire Line
	5550 4400 5900 4400
Wire Wire Line
	5550 4250 5900 4250
Wire Wire Line
	5550 4100 5900 4100
Wire Wire Line
	4350 5150 3950 5150
Wire Wire Line
	4350 4400 3950 4400
Wire Wire Line
	4350 4550 3950 4550
Wire Wire Line
	4350 4700 3950 4700
Wire Wire Line
	4350 4850 3950 4850
Wire Wire Line
	4350 5000 3950 5000
Wire Wire Line
	5550 5150 5900 5150
Text Label 4350 4250 2    50   ~ 0
i2c_clk
Text Label 4350 4100 2    50   ~ 0
i2c_data
NoConn ~ 4350 3650
NoConn ~ 4350 3500
Text Label 4350 5150 2    50   ~ 0
btn_enter
Text Label 5550 5150 0    50   ~ 0
re_1
Text Label 4350 4700 2    50   ~ 0
re_2
Text Label 5550 4700 0    50   ~ 0
SPI_CLOCK
Text Label 5550 4850 0    50   ~ 0
SPI_MISO
Text Label 5550 5000 0    50   ~ 0
SPI_MOSI
Text Label 5550 4550 0    50   ~ 0
latch_DA
Text Label 5550 4400 0    50   ~ 0
CS_AD
Text Label 4350 4400 2    50   ~ 0
CS_DA
Connection ~ 6400 3800
Wire Wire Line
	5550 3800 6400 3800
$Comp
L power:+5V #PWR?
U 1 1 628F57E4
P 6400 3500
AR Path="/628F57E4" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F57E4" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 6400 3350 50  0001 C CNN
F 1 "+5V" H 6415 3673 50  0000 C CNN
F 2 "" H 6400 3500 50  0001 C CNN
F 3 "" H 6400 3500 50  0001 C CNN
	1    6400 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 628F57DE
P 6400 3650
AR Path="/628F57DE" Ref="R?"  Part="1" 
AR Path="/628BB73F/628F57DE" Ref="R13"  Part="1" 
F 0 "R13" H 6470 3696 50  0000 L CNN
F 1 "10k" H 6470 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6330 3650 50  0001 C CNN
F 3 "~" H 6400 3650 50  0001 C CNN
	1    6400 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628F57D8
P 6400 4200
AR Path="/628F57D8" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F57D8" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 6400 3950 50  0001 C CNN
F 1 "GND" H 6405 4027 50  0000 C CNN
F 2 "" H 6400 4200 50  0001 C CNN
F 3 "" H 6400 4200 50  0001 C CNN
	1    6400 4200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 628F57D2
P 6400 4000
AR Path="/628F57D2" Ref="SW?"  Part="1" 
AR Path="/628BB73F/628F57D2" Ref="SW3"  Part="1" 
F 0 "SW3" V 6354 4148 50  0000 L CNN
F 1 "reset" V 6445 4148 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 6400 4200 50  0001 C CNN
F 3 "~" H 6400 4200 50  0001 C CNN
	1    6400 4000
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 628F57CC
P 5550 3500
AR Path="/628F57CC" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F57CC" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 5550 3350 50  0001 C CNN
F 1 "+12V" V 5565 3628 50  0000 L CNN
F 2 "" H 5550 3500 50  0001 C CNN
F 3 "" H 5550 3500 50  0001 C CNN
	1    5550 3500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628F57C6
P 5550 3950
AR Path="/628F57C6" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F57C6" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 5550 3800 50  0001 C CNN
F 1 "+5V" V 5565 4078 50  0000 L CNN
F 2 "" H 5550 3950 50  0001 C CNN
F 3 "" H 5550 3950 50  0001 C CNN
	1    5550 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628F57C0
P 5550 3650
AR Path="/628F57C0" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F57C0" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 5550 3400 50  0001 C CNN
F 1 "GND" V 5555 3522 50  0000 R CNN
F 2 "" H 5550 3650 50  0001 C CNN
F 3 "" H 5550 3650 50  0001 C CNN
	1    5550 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628F57BA
P 4350 3800
AR Path="/628F57BA" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F57BA" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 4350 3550 50  0001 C CNN
F 1 "GND" V 4355 3672 50  0000 R CNN
F 2 "" H 4350 3800 50  0001 C CNN
F 3 "" H 4350 3800 50  0001 C CNN
	1    4350 3800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628F57B4
P 4350 3950
AR Path="/628F57B4" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/628F57B4" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 4350 3700 50  0001 C CNN
F 1 "GND" V 4355 3822 50  0000 R CNN
F 2 "" H 4350 3950 50  0001 C CNN
F 3 "" H 4350 3950 50  0001 C CNN
	1    4350 3950
	0    1    1    0   
$EndComp
$Comp
L Arduino_compatible:ProMicro U?
U 1 1 628F579C
P 4950 4350
AR Path="/628F579C" Ref="U?"  Part="1" 
AR Path="/628BB73F/628F579C" Ref="U3"  Part="1" 
F 0 "U3" V 3875 4350 50  0000 C CNN
F 1 "ProMicro" V 3966 4350 50  0000 C CNN
F 2 "ClockGenerator:Pro_Micro_Top_side_Up" H 4900 4150 50  0001 C CNN
F 3 "" H 4900 4150 50  0001 C CNN
	1    4950 4350
	0    1    1    0   
$EndComp
Text Label 4750 6700 2    50   ~ 0
re_1
Text Label 4750 6600 2    50   ~ 0
re_2
$Comp
L power:GND #PWR?
U 1 1 62940848
P 5300 6900
AR Path="/62940848" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/62940848" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/62940848" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 5300 6650 50  0001 C CNN
F 1 "GND" V 5305 6772 50  0000 R CNN
F 2 "" H 5300 6900 50  0001 C CNN
F 3 "" H 5300 6900 50  0001 C CNN
	1    5300 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6294084E
P 4800 6800
AR Path="/6294084E" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/6294084E" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/6294084E" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 4800 6650 50  0001 C CNN
F 1 "+5V" H 4815 6973 50  0000 C CNN
F 2 "" H 4800 6800 50  0001 C CNN
F 3 "" H 4800 6800 50  0001 C CNN
	1    4800 6800
	0    -1   -1   0   
$EndComp
Text Label 4750 6500 2    50   ~ 0
i2c_data
Text Label 5350 6500 0    50   ~ 0
i2c_clk
Text Label 4600 6900 2    50   ~ 0
gate
Text Label 5350 6600 0    50   ~ 0
btn_enter
Wire Wire Line
	5300 6500 5800 6500
Wire Wire Line
	5300 6600 5800 6600
Wire Wire Line
	5300 6800 5800 6800
Wire Wire Line
	5300 7000 5800 7000
Wire Wire Line
	4800 6500 4350 6500
Wire Wire Line
	4800 6600 4350 6600
Wire Wire Line
	4800 6700 4350 6700
Text HLabel 4350 7100 0    50   Input ~ 0
audio_in_1
Text HLabel 5300 7100 2    50   Input ~ 0
audio_out_1
Text HLabel 4350 6700 0    50   Input ~ 0
re_1
Text HLabel 4350 6600 0    50   Input ~ 0
re_2
Text HLabel 5800 6600 2    50   Input ~ 0
btn_enter
Text HLabel 4350 6900 0    50   Input ~ 0
gate
Text HLabel 5800 6500 2    50   Input ~ 0
i2c_clk
Text HLabel 4350 6500 0    50   Input ~ 0
i2c_data
Wire Wire Line
	7100 1850 7100 2100
Wire Wire Line
	7100 2100 6550 2100
Wire Wire Line
	6550 2400 7100 2400
Wire Wire Line
	7100 2400 7100 2650
$Comp
L Amplifier_Operational:TL074 U?
U 3 1 62918EFF
P 2350 2300
AR Path="/62918EFF" Ref="U?"  Part="3" 
AR Path="/628BAE92/62918EFF" Ref="U?"  Part="3" 
AR Path="/628BB73F/62918EFF" Ref="U5"  Part="3" 
F 0 "U5" H 2350 2667 50  0000 C CNN
F 1 "TL074" H 2350 2576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2300 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2400 2500 50  0001 C CNN
	3    2350 2300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 62918F05
P 7700 2750
AR Path="/62918F05" Ref="U?"  Part="4" 
AR Path="/628BAE92/62918F05" Ref="U?"  Part="4" 
AR Path="/628BB73F/62918F05" Ref="U5"  Part="4" 
F 0 "U5" H 7700 3117 50  0000 C CNN
F 1 "TL074" H 7700 3026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7650 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7750 2950 50  0001 C CNN
	4    7700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1600 2650 1850
Wire Wire Line
	2650 1850 2050 1850
Wire Wire Line
	2050 1850 2050 1700
Connection ~ 2650 1600
Wire Wire Line
	1800 1500 2050 1500
Wire Wire Line
	2050 2400 2050 2550
Wire Wire Line
	2650 2550 2650 2300
Connection ~ 2650 2300
Text HLabel 1800 1500 0    50   Input ~ 0
audio_in_1
Wire Wire Line
	2900 1600 2900 1900
Wire Wire Line
	2900 1900 3050 1900
Wire Wire Line
	2650 1600 2900 1600
Wire Wire Line
	2900 2300 2900 2000
Wire Wire Line
	2900 2000 3050 2000
Wire Wire Line
	2650 2300 2900 2300
$Comp
L Device:D D?
U 1 1 629FDFAC
P 1600 2050
AR Path="/629FDFAC" Ref="D?"  Part="1" 
AR Path="/628BAE92/629FDFAC" Ref="D?"  Part="1" 
AR Path="/628BB73F/629FDFAC" Ref="D3"  Part="1" 
F 0 "D3" V 1554 2130 50  0000 L CNN
F 1 "D" V 1645 2130 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 1600 2050 50  0001 C CNN
F 3 "~" H 1600 2050 50  0001 C CNN
	1    1600 2050
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 629FDFB2
P 1600 2350
AR Path="/629FDFB2" Ref="D?"  Part="1" 
AR Path="/628BAE92/629FDFB2" Ref="D?"  Part="1" 
AR Path="/628BB73F/629FDFB2" Ref="D4"  Part="1" 
F 0 "D4" V 1554 2430 50  0000 L CNN
F 1 "D" V 1645 2430 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 1600 2350 50  0001 C CNN
F 3 "~" H 1600 2350 50  0001 C CNN
	1    1600 2350
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 629FDFB8
P 1600 1900
AR Path="/629FDFB8" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/629FDFB8" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/629FDFB8" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 1600 1750 50  0001 C CNN
F 1 "+5V" H 1615 2073 50  0000 C CNN
F 2 "" H 1600 1900 50  0001 C CNN
F 3 "" H 1600 1900 50  0001 C CNN
	1    1600 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 629FDFBE
P 1600 2500
AR Path="/629FDFBE" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/629FDFBE" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/629FDFBE" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 1600 2250 50  0001 C CNN
F 1 "GND" H 1605 2327 50  0000 C CNN
F 2 "" H 1600 2500 50  0001 C CNN
F 3 "" H 1600 2500 50  0001 C CNN
	1    1600 2500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 629FDFC4
P 1400 2200
AR Path="/629FDFC4" Ref="R?"  Part="1" 
AR Path="/628BAE92/629FDFC4" Ref="R?"  Part="1" 
AR Path="/628BB73F/629FDFC4" Ref="R4"  Part="1" 
F 0 "R4" V 1193 2200 50  0000 C CNN
F 1 "100k" V 1284 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1330 2200 50  0001 C CNN
F 3 "~" H 1400 2200 50  0001 C CNN
	1    1400 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 2200 1600 2200
Connection ~ 1600 2200
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 629FDFCD
P 1050 2200
AR Path="/629FDFCD" Ref="J?"  Part="1" 
AR Path="/628BAE92/629FDFCD" Ref="J?"  Part="1" 
AR Path="/628BB73F/629FDFCD" Ref="J2"  Part="1" 
F 0 "J2" H 750 2300 50  0000 C CNN
F 1 "Audio_in_2" H 800 2200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1050 2200 50  0001 C CNN
F 3 "~" H 1050 2200 50  0001 C CNN
	1    1050 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62A049B8
P 8300 2750
AR Path="/62A049B8" Ref="R?"  Part="1" 
AR Path="/628BAE92/62A049B8" Ref="R?"  Part="1" 
AR Path="/628BB73F/62A049B8" Ref="R8"  Part="1" 
F 0 "R8" V 8093 2750 50  0000 C CNN
F 1 "1k" V 8184 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8230 2750 50  0001 C CNN
F 3 "~" H 8300 2750 50  0001 C CNN
	1    8300 2750
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 62A049BE
P 8650 2750
AR Path="/62A049BE" Ref="J?"  Part="1" 
AR Path="/628BAE92/62A049BE" Ref="J?"  Part="1" 
AR Path="/628BB73F/62A049BE" Ref="J5"  Part="1" 
F 0 "J5" H 8350 2850 50  0000 C CNN
F 1 "Audio_out_2" H 8400 2750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8650 2750 50  0001 C CNN
F 3 "~" H 8650 2750 50  0001 C CNN
	1    8650 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 2200 2050 2200
Wire Wire Line
	4350 6900 4800 6900
Text HLabel 5800 6700 2    50   Input ~ 0
TM_off
Text HLabel 5800 6800 2    50   Input ~ 0
TM_on
Text HLabel 5800 7000 2    50   Input ~ 0
TM_pot
Wire Wire Line
	5300 6700 5800 6700
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J7
U 1 1 62A58117
P 5000 6800
F 0 "J7" H 5050 7317 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 5050 7226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 5000 6800 50  0001 C CNN
F 3 "~" H 5000 6800 50  0001 C CNN
	1    5000 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A5E8F3
P 4800 7000
AR Path="/62A5E8F3" Ref="#PWR?"  Part="1" 
AR Path="/628BAE92/62A5E8F3" Ref="#PWR?"  Part="1" 
AR Path="/628BB73F/62A5E8F3" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 4800 6750 50  0001 C CNN
F 1 "GND" V 4805 6872 50  0000 R CNN
F 2 "" H 4800 7000 50  0001 C CNN
F 3 "" H 4800 7000 50  0001 C CNN
	1    4800 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 7100 4350 7100
Text Label 5350 6700 0    50   ~ 0
TM_off
Text Label 5350 6800 0    50   ~ 0
TM_on
Text Label 5350 7000 0    50   ~ 0
TM_pot
Text Label 5550 4100 0    50   ~ 0
TM_pot
Text Label 4350 4550 2    50   ~ 0
TM_on
Text Label 4350 5000 2    50   ~ 0
TM_off
$EndSCHEMATC

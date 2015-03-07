EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:LazIRTag
LIBS:IR-Reciever-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "6 mar 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TSOP38238 U1
U 1 1 54F95920
P 2250 1500
F 0 "U1" H 2250 1050 60  0000 C CNN
F 1 "TSOP38238" H 2250 1950 60  0000 C CNN
F 2 "~" H 2250 2400 60  0000 C CNN
F 3 "~" H 2250 2400 60  0000 C CNN
	1    2250 1500
	1    0    0    -1  
$EndComp
$Comp
L TSOP38238 U2
U 1 1 54F9592F
P 2250 2850
F 0 "U2" H 2250 2400 60  0000 C CNN
F 1 "TSOP38238" H 2250 3300 60  0000 C CNN
F 2 "~" H 2250 3750 60  0000 C CNN
F 3 "~" H 2250 3750 60  0000 C CNN
	1    2250 2850
	1    0    0    -1  
$EndComp
$Comp
L TSOP38238 U3
U 1 1 54F9593E
P 2250 4150
F 0 "U3" H 2250 3700 60  0000 C CNN
F 1 "TSOP38238" H 2250 4600 60  0000 C CNN
F 2 "~" H 2250 5050 60  0000 C CNN
F 3 "~" H 2250 5050 60  0000 C CNN
	1    2250 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 54F95CF1
P 3000 1500
F 0 "#PWR01" H 3000 1500 30  0001 C CNN
F 1 "GND" H 3000 1430 30  0001 C CNN
F 2 "" H 3000 1500 60  0000 C CNN
F 3 "" H 3000 1500 60  0000 C CNN
	1    3000 1500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 54F95D00
P 3000 2850
F 0 "#PWR02" H 3000 2850 30  0001 C CNN
F 1 "GND" H 3000 2780 30  0001 C CNN
F 2 "" H 3000 2850 60  0000 C CNN
F 3 "" H 3000 2850 60  0000 C CNN
	1    3000 2850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 54F95D0F
P 3000 4150
F 0 "#PWR03" H 3000 4150 30  0001 C CNN
F 1 "GND" H 3000 4080 30  0001 C CNN
F 2 "" H 3000 4150 60  0000 C CNN
F 3 "" H 3000 4150 60  0000 C CNN
	1    3000 4150
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR04
U 1 1 54F95D1F
P 3000 1250
F 0 "#PWR04" H 3000 1350 30  0001 C CNN
F 1 "VCC" H 3000 1350 30  0000 C CNN
F 2 "" H 3000 1250 60  0000 C CNN
F 3 "" H 3000 1250 60  0000 C CNN
	1    3000 1250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 54F95D2C
P 3000 2600
F 0 "#PWR05" H 3000 2700 30  0001 C CNN
F 1 "VCC" H 3000 2700 30  0000 C CNN
F 2 "" H 3000 2600 60  0000 C CNN
F 3 "" H 3000 2600 60  0000 C CNN
	1    3000 2600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 54F95D32
P 3000 3900
F 0 "#PWR06" H 3000 4000 30  0001 C CNN
F 1 "VCC" H 3000 4000 30  0000 C CNN
F 2 "" H 3000 3900 60  0000 C CNN
F 3 "" H 3000 3900 60  0000 C CNN
	1    3000 3900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 54F95D92
P 4950 850
F 0 "#PWR07" H 4950 950 30  0001 C CNN
F 1 "VCC" H 4950 950 30  0000 C CNN
F 2 "" H 4950 850 60  0000 C CNN
F 3 "" H 4950 850 60  0000 C CNN
	1    4950 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 54F95D98
P 5250 850
F 0 "#PWR08" H 5250 850 30  0001 C CNN
F 1 "GND" H 5250 780 30  0001 C CNN
F 2 "" H 5250 850 60  0000 C CNN
F 3 "" H 5250 850 60  0000 C CNN
	1    5250 850 
	-1   0    0    1   
$EndComp
$Comp
L CONN_6 P1
U 1 1 54F95E7E
P 5900 1200
F 0 "P1" V 5850 1200 60  0000 C CNN
F 1 "CONN_6" V 5950 1200 60  0000 C CNN
F 2 "" H 5900 1200 60  0000 C CNN
F 3 "" H 5900 1200 60  0000 C CNN
	1    5900 1200
	1    0    0    -1  
$EndComp
$Comp
L RGBLED U4
U 1 1 54F95F97
P 5750 2400
F 0 "U4" H 5750 1800 60  0000 C CNN
F 1 "RGBLED" H 5750 2750 60  0000 C CNN
F 2 "" H 5750 2400 60  0000 C CNN
F 3 "" H 5750 2400 60  0000 C CNN
	1    5750 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 54F95FA4
P 5150 2400
F 0 "#PWR09" H 5150 2400 30  0001 C CNN
F 1 "GND" H 5150 2330 30  0001 C CNN
F 2 "" H 5150 2400 60  0000 C CNN
F 3 "" H 5150 2400 60  0000 C CNN
	1    5150 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 1350 3000 1350
Wire Wire Line
	3000 1350 3000 1250
Wire Wire Line
	2650 1500 3000 1500
Wire Wire Line
	2650 2700 3000 2700
Wire Wire Line
	3000 2700 3000 2600
Wire Wire Line
	2650 2850 3000 2850
Wire Wire Line
	2650 4000 3000 4000
Wire Wire Line
	3000 4000 3000 3900
Wire Wire Line
	2650 4150 3000 4150
Wire Wire Line
	2650 1650 3450 1650
Wire Wire Line
	3450 1150 3450 4300
Wire Wire Line
	3450 3000 2650 3000
Wire Wire Line
	3450 4300 2650 4300
Connection ~ 3450 3000
Wire Wire Line
	5250 850  5250 950 
Wire Wire Line
	5250 950  5550 950 
Wire Wire Line
	4950 850  4950 1050
Wire Wire Line
	4950 1050 5550 1050
Wire Wire Line
	5550 1150 3450 1150
Connection ~ 3450 1650
Wire Wire Line
	5150 2400 5300 2400
Wire Wire Line
	5550 1450 5200 1450
Wire Wire Line
	5200 1450 5200 2250
Wire Wire Line
	5200 2250 5300 2250
Wire Wire Line
	5550 1350 5000 1350
Wire Wire Line
	5000 1350 5000 2550
Wire Wire Line
	5000 2550 5300 2550
Wire Wire Line
	5550 1250 4850 1250
Wire Wire Line
	4850 1250 4850 2700
Wire Wire Line
	4850 2700 5300 2700
$Comp
L VCC #PWR010
U 1 1 54F9604D
P 4250 2150
F 0 "#PWR010" H 4250 2250 30  0001 C CNN
F 1 "VCC" H 4250 2250 30  0000 C CNN
F 2 "" H 4250 2150 60  0000 C CNN
F 3 "" H 4250 2150 60  0000 C CNN
	1    4250 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 54F96053
P 4250 2750
F 0 "#PWR011" H 4250 2750 30  0001 C CNN
F 1 "GND" H 4250 2680 30  0001 C CNN
F 2 "" H 4250 2750 60  0000 C CNN
F 3 "" H 4250 2750 60  0000 C CNN
	1    4250 2750
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 54F9605B
P 4250 2450
F 0 "C1" H 4250 2550 60  0000 L CNN
F 1 "200 uF" H 4256 2365 40  0000 L CNN
F 2 "~" H 4288 2300 30  0000 C CNN
F 3 "~" H 4250 2450 60  0000 C CNN
	1    4250 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2150 4250 2250
Wire Wire Line
	4250 2650 4250 2750
$EndSCHEMATC
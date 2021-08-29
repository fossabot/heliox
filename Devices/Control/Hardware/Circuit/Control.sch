EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "LightControl Console"
Date "2021-08-10"
Rev "v00"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Author: GHOSCHT"
$EndDescr
$Comp
L TYPE-C-31-M-12:TYPE-C-31-M-12 J8
U 1 1 6112D89A
P 11850 1700
F 0 "J8" H 11850 2367 50  0000 C CNN
F 1 "TYPE-C-31-M-12" H 11850 2276 50  0000 C CNN
F 2 "HRO_TYPE-C-31-M-12:HRO_TYPE-C-31-M-12" H 11850 1700 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/lcsc/1811131825_Korean-Hroparts-Elec-TYPE-C-31-M-12_C165948.pdf" H 11850 1700 50  0001 L BNN
F 4 "3.31mm" H 11850 1700 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Manufacturer Recommendations" H 11850 1700 50  0001 L BNN "STANDARD"
F 6 "A" H 11850 1700 50  0001 L BNN "PARTREV"
F 7 "HRO Electronics" H 11850 1700 50  0001 L BNN "MANUFACTURER"
	1    11850 1700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 6113282A
P 9900 1350
F 0 "JP1" H 9900 1555 50  0000 C CNN
F 1 "SolderJumper" H 9900 1464 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 9900 1350 50  0001 C CNN
F 3 "~" H 9900 1350 50  0001 C CNN
	1    9900 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6116FC1F
P 11050 2100
F 0 "#PWR027" H 11050 1850 50  0001 C CNN
F 1 "GND" V 11055 1972 50  0000 R CNN
F 2 "" H 11050 2100 50  0001 C CNN
F 3 "" H 11050 2100 50  0001 C CNN
	1    11050 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR037
U 1 1 6117066A
P 12650 2100
F 0 "#PWR037" H 12650 1850 50  0001 C CNN
F 1 "GND" V 12655 1972 50  0000 R CNN
F 2 "" H 12650 2100 50  0001 C CNN
F 3 "" H 12650 2100 50  0001 C CNN
	1    12650 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 61170DB1
P 11850 2500
F 0 "#PWR034" H 11850 2250 50  0001 C CNN
F 1 "GND" H 11855 2327 50  0000 C CNN
F 2 "" H 11850 2500 50  0001 C CNN
F 3 "" H 11850 2500 50  0001 C CNN
	1    11850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11600 2400 11600 2500
Wire Wire Line
	11600 2500 11750 2500
Wire Wire Line
	12100 2500 12100 2400
Connection ~ 11850 2500
Wire Wire Line
	11850 2500 11950 2500
Wire Wire Line
	11950 2400 11950 2500
Connection ~ 11950 2500
Wire Wire Line
	11950 2500 12100 2500
Wire Wire Line
	11750 2400 11750 2500
Connection ~ 11750 2500
Wire Wire Line
	11750 2500 11850 2500
Wire Wire Line
	11050 1300 11150 1300
Wire Wire Line
	12550 1300 12650 1300
Wire Wire Line
	12550 2100 12650 2100
Wire Wire Line
	11050 2100 11150 2100
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 6118262C
P 9900 1950
F 0 "JP3" H 9900 2155 50  0000 C CNN
F 1 "SolderJumper" H 9900 2064 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 9900 1950 50  0001 C CNN
F 3 "~" H 9900 1950 50  0001 C CNN
	1    9900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1350 9750 1350
Wire Wire Line
	9700 1650 9750 1650
Wire Wire Line
	9700 1950 9750 1950
Wire Wire Line
	9700 2250 9750 2250
Wire Wire Line
	10050 1350 10200 1350
Wire Wire Line
	10200 1350 10200 1500
Wire Wire Line
	10200 1650 10050 1650
Wire Wire Line
	10050 1950 10200 1950
Wire Wire Line
	10200 1950 10200 2100
Wire Wire Line
	11150 1600 10450 1600
Wire Wire Line
	10450 1600 10450 1500
Wire Wire Line
	10450 1500 10200 1500
Connection ~ 10200 1500
Wire Wire Line
	10200 1500 10200 1650
Wire Wire Line
	11150 1700 10450 1700
Wire Wire Line
	10450 1700 10450 2100
Wire Wire Line
	10450 2100 10200 2100
Connection ~ 10200 2100
Wire Wire Line
	10200 2100 10200 2250
$Comp
L Jumper:SolderJumper_2_Open JP10
U 1 1 611A3577
P 13700 2250
F 0 "JP10" H 13700 2455 50  0000 C CNN
F 1 "SolderJumper" H 13700 2364 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 13700 2250 50  0001 C CNN
F 3 "~" H 13700 2250 50  0001 C CNN
	1    13700 2250
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP8
U 1 1 611A3587
P 13700 1650
F 0 "JP8" H 13700 1855 50  0000 C CNN
F 1 "SolderJumper" H 13700 1764 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 13700 1650 50  0001 C CNN
F 3 "~" H 13700 1650 50  0001 C CNN
	1    13700 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	13900 2250 13850 2250
Wire Wire Line
	13900 1950 13850 1950
Wire Wire Line
	13900 1650 13850 1650
Wire Wire Line
	13900 1350 13850 1350
Wire Wire Line
	13550 2250 13400 2250
Wire Wire Line
	13400 2250 13400 2100
Wire Wire Line
	13400 1950 13550 1950
Wire Wire Line
	13550 1650 13400 1650
Wire Wire Line
	13400 1650 13400 1500
Wire Wire Line
	13400 1350 13550 1350
Wire Wire Line
	13150 2100 13400 2100
Connection ~ 13400 2100
Wire Wire Line
	13400 2100 13400 1950
Wire Wire Line
	13150 1500 13400 1500
Connection ~ 13400 1500
Wire Wire Line
	13400 1500 13400 1350
Wire Wire Line
	12550 1600 13150 1600
Wire Wire Line
	13150 1600 13150 1500
Wire Wire Line
	12550 1700 13150 1700
Wire Wire Line
	13150 1700 13150 2100
NoConn ~ 11150 1500
Wire Wire Line
	9700 2550 9750 2550
Wire Wire Line
	10050 2550 10550 2550
Wire Wire Line
	10550 2550 10550 1800
Wire Wire Line
	10550 1800 11150 1800
Wire Wire Line
	13900 1050 13850 1050
Wire Wire Line
	13550 1050 13050 1050
Wire Wire Line
	13050 1050 13050 1500
Wire Wire Line
	13050 1500 12550 1500
NoConn ~ 12550 1800
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 613021A3
P 5800 5300
F 0 "J5" H 5880 5292 50  0000 L CNN
F 1 "Conn_01x04" H 5880 5201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5800 5300 50  0001 C CNN
F 3 "~" H 5800 5300 50  0001 C CNN
	1    5800 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 613031C0
P 5800 4300
F 0 "J3" H 5880 4292 50  0000 L CNN
F 1 "Conn_01x04" H 5880 4201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5800 4300 50  0001 C CNN
F 3 "~" H 5800 4300 50  0001 C CNN
	1    5800 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 613043F8
P 5500 4200
F 0 "#PWR012" H 5500 3950 50  0001 C CNN
F 1 "GND" V 5505 4072 50  0000 R CNN
F 2 "" H 5500 4200 50  0001 C CNN
F 3 "" H 5500 4200 50  0001 C CNN
	1    5500 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 6130498C
P 5500 5200
F 0 "#PWR014" H 5500 4950 50  0001 C CNN
F 1 "GND" V 5505 5072 50  0000 R CNN
F 2 "" H 5500 5200 50  0001 C CNN
F 3 "" H 5500 5200 50  0001 C CNN
	1    5500 5200
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR015
U 1 1 613057E4
P 5500 5500
F 0 "#PWR015" H 5500 5350 50  0001 C CNN
F 1 "VCC" V 5515 5627 50  0000 L CNN
F 2 "" H 5500 5500 50  0001 C CNN
F 3 "" H 5500 5500 50  0001 C CNN
	1    5500 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 4200 5600 4200
Wire Wire Line
	5500 4300 5600 4300
Wire Wire Line
	5500 4400 5600 4400
Wire Wire Line
	5500 4500 5600 4500
Wire Wire Line
	5500 5200 5600 5200
Wire Wire Line
	5500 5300 5600 5300
Wire Wire Line
	5500 5400 5600 5400
Wire Wire Line
	5500 5500 5600 5500
Wire Notes Line
	5100 4000 5100 5600
Wire Notes Line
	5100 5600 6550 5600
Wire Notes Line
	6550 5600 6550 4000
Wire Notes Line
	6550 4000 5100 4000
Text Notes 5100 4000 0    50   ~ 0
Failsafe breakout pins
Text Notes 5900 4200 0    50   ~ 0
UART
Text Notes 5900 5200 0    50   ~ 0
I2C
Wire Notes Line
	14250 2800 14250 600 
Wire Notes Line
	14250 600  9350 600 
Wire Notes Line
	9350 600  9350 2800
Text Notes 9350 600  0    50   ~ 0
USB C connector repurposed as communication header
Text Notes 9350 700  0    50   ~ 10
CHOOSE PROTOCOL WITH JUMERS
Text GLabel 5500 4500 0    50   Input ~ 0
RST
Text GLabel 5500 5300 0    50   Input ~ 0
SDA
Text GLabel 5500 5400 0    50   Input ~ 0
SCL
Text GLabel 9700 1350 0    50   Input ~ 0
SDA
Text GLabel 9700 1950 0    50   Input ~ 0
SCL
Text GLabel 13900 1650 2    50   Input ~ 0
SCL
Text GLabel 13900 2250 2    50   Input ~ 0
SDA
Wire Wire Line
	10200 2250 10050 2250
Wire Notes Line
	9350 2800 14250 2800
Text Notes 15150 9250 0    50   ~ 0
ERC Flags
Wire Notes Line
	16000 9250 15150 9250
Wire Notes Line
	16000 9900 16000 9250
Wire Notes Line
	15150 9900 16000 9900
Wire Notes Line
	15150 9250 15150 9900
Wire Wire Line
	15750 9500 15750 9650
Wire Wire Line
	15400 9500 15400 9650
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61261DA9
P 15750 9500
F 0 "#FLG02" H 15750 9575 50  0001 C CNN
F 1 "PWR_FLAG" H 15750 9673 50  0000 C CNN
F 2 "" H 15750 9500 50  0001 C CNN
F 3 "~" H 15750 9500 50  0001 C CNN
	1    15750 9500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61261172
P 15400 9650
F 0 "#FLG01" H 15400 9725 50  0001 C CNN
F 1 "PWR_FLAG" H 15400 9823 50  0000 C CNN
F 2 "" H 15400 9650 50  0001 C CNN
F 3 "~" H 15400 9650 50  0001 C CNN
	1    15400 9650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR047
U 1 1 6125F0D6
P 15750 9650
F 0 "#PWR047" H 15750 9400 50  0001 C CNN
F 1 "GND" H 15755 9477 50  0000 C CNN
F 2 "" H 15750 9650 50  0001 C CNN
F 3 "" H 15750 9650 50  0001 C CNN
	1    15750 9650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR046
U 1 1 6125E759
P 15400 9500
F 0 "#PWR046" H 15400 9350 50  0001 C CNN
F 1 "VCC" H 15415 9673 50  0000 C CNN
F 2 "" H 15400 9500 50  0001 C CNN
F 3 "" H 15400 9500 50  0001 C CNN
	1    15400 9500
	1    0    0    -1  
$EndComp
Text GLabel 6450 1600 2    50   Input ~ 0
RST
Text GLabel 6450 1500 2    50   Input ~ 0
SCK
Text GLabel 6450 1300 2    50   Input ~ 0
MISO
Text GLabel 6450 1400 2    50   Input ~ 0
MOSI
Text GLabel 1850 9300 1    50   Input ~ 0
RST
Text GLabel 1300 9400 1    50   Input ~ 0
XTAL2
Text GLabel 700  9400 1    50   Input ~ 0
XTAL1
Text Notes 6300 9100 0    50   ~ 0
Power LED
Wire Notes Line
	7600 9100 6300 9100
Wire Notes Line
	7600 10650 7600 9100
Wire Notes Line
	6300 10650 7600 10650
Wire Notes Line
	6300 9100 6300 10650
$Comp
L Device:LED D2
U 1 1 6113FB23
P 6400 10100
F 0 "D2" V 6439 9982 50  0000 R CNN
F 1 "17-21/BHC-XL2M2TY/3T" V 6348 9982 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 6400 10100 50  0001 C CNN
F 3 "~" H 6400 10100 50  0001 C CNN
	1    6400 10100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 6114AFDD
P 6400 9650
F 0 "R6" H 6330 9604 50  0000 R CNN
F 1 "200" H 6330 9695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6330 9650 50  0001 C CNN
F 3 "~" H 6400 9650 50  0001 C CNN
	1    6400 9650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 61161984
P 6400 10400
F 0 "#PWR020" H 6400 10150 50  0001 C CNN
F 1 "GND" H 6405 10227 50  0000 C CNN
F 2 "" H 6400 10400 50  0001 C CNN
F 3 "" H 6400 10400 50  0001 C CNN
	1    6400 10400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR019
U 1 1 6116263D
P 6400 9350
F 0 "#PWR019" H 6400 9200 50  0001 C CNN
F 1 "VCC" H 6415 9523 50  0000 C CNN
F 2 "" H 6400 9350 50  0001 C CNN
F 3 "" H 6400 9350 50  0001 C CNN
	1    6400 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 9350 6400 9500
Wire Wire Line
	6400 9800 6400 9950
Wire Wire Line
	6400 10250 6400 10400
Text Notes 1700 9050 0    50   ~ 0
Reset pullup
Text Notes 650  1450 0    50   ~ 0
ATmega decoupling
Wire Notes Line
	2100 9050 1700 9050
Wire Notes Line
	2100 10150 2100 9050
Wire Notes Line
	1700 10150 2100 10150
Wire Notes Line
	1700 9050 1700 10150
Wire Notes Line
	1150 1450 650  1450
Wire Notes Line
	1150 2550 1150 1450
Wire Notes Line
	650  2550 1150 2550
Wire Notes Line
	650  1450 650  2550
Text Notes 550  9050 0    50   ~ 0
ATmega oscillator
Wire Notes Line
	1600 9050 550  9050
Wire Notes Line
	1600 10450 1600 9050
Wire Notes Line
	550  10450 1600 10450
Wire Notes Line
	550  9050 550  10450
Text Notes 5100 650  0    50   ~ 0
ICSP Flashing Header
Wire Notes Line
	6800 650  5100 650 
Wire Notes Line
	6800 2300 6800 650 
Wire Notes Line
	5100 2300 6800 2300
Wire Notes Line
	5100 650  5100 2300
Wire Wire Line
	1850 9300 1850 9400
Wire Wire Line
	1850 9700 1850 9800
$Comp
L power:VCC #PWR05
U 1 1 61167C00
P 1850 9800
F 0 "#PWR05" H 1850 9650 50  0001 C CNN
F 1 "VCC" H 1865 9973 50  0000 C CNN
F 2 "" H 1850 9800 50  0001 C CNN
F 3 "" H 1850 9800 50  0001 C CNN
	1    1850 9800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 1600 6450 1600
Wire Wire Line
	6350 1500 6450 1500
Wire Wire Line
	6350 1400 6450 1400
Wire Wire Line
	6350 1300 6450 1300
Wire Wire Line
	5850 1900 5850 2000
Wire Wire Line
	5850 900  5850 1000
$Comp
L power:GND #PWR017
U 1 1 6116239D
P 5850 2000
F 0 "#PWR017" H 5850 1750 50  0001 C CNN
F 1 "GND" H 5855 1827 50  0000 C CNN
F 2 "" H 5850 2000 50  0001 C CNN
F 3 "" H 5850 2000 50  0001 C CNN
	1    5850 2000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 61161D0D
P 5850 900
F 0 "#PWR016" H 5850 750 50  0001 C CNN
F 1 "VCC" H 5865 1073 50  0000 C CNN
F 2 "" H 5850 900 50  0001 C CNN
F 3 "" H 5850 900 50  0001 C CNN
	1    5850 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J6
U 1 1 61134728
P 5950 1500
F 0 "J6" H 5621 1596 50  0000 R CNN
F 1 "AVR-ISP-6" H 5621 1505 50  0000 R CNN
F 2 "AVR-ISP:AVR-ISP" V 5700 1550 50  0001 C CNN
F 3 " ~" H 4675 950 50  0001 C CNN
	1    5950 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 6113484F
P 1000 9650
F 0 "Y1" H 1000 9918 50  0000 C CNN
F 1 "16MHz" H 1000 9827 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD_HandSoldering" H 1000 9650 50  0001 C CNN
F 3 "~" H 1000 9650 50  0001 C CNN
	1    1000 9650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6113DC2F
P 700 9900
F 0 "C1" H 815 9946 50  0000 L CNN
F 1 "22p" H 815 9855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 738 9750 50  0001 C CNN
F 3 "~" H 700 9900 50  0001 C CNN
	1    700  9900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 611448F1
P 1300 9900
F 0 "C3" H 1415 9946 50  0000 L CNN
F 1 "22p" H 1415 9855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1338 9750 50  0001 C CNN
F 3 "~" H 1300 9900 50  0001 C CNN
	1    1300 9900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 611452AB
P 1000 10150
F 0 "#PWR04" H 1000 9900 50  0001 C CNN
F 1 "GND" H 1005 9977 50  0000 C CNN
F 2 "" H 1000 10150 50  0001 C CNN
F 3 "" H 1000 10150 50  0001 C CNN
	1    1000 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  9650 700  9750
Wire Wire Line
	1300 9650 1300 9750
Wire Wire Line
	700  10050 700  10150
Wire Wire Line
	700  10150 1000 10150
Wire Wire Line
	1300 10150 1300 10050
Wire Wire Line
	1000 10150 1300 10150
Connection ~ 1000 10150
Wire Wire Line
	700  9650 850  9650
Wire Wire Line
	1150 9650 1300 9650
Wire Wire Line
	700  9400 700  9650
Connection ~ 700  9650
Wire Wire Line
	1300 9400 1300 9650
Connection ~ 1300 9650
Wire Wire Line
	800  2150 800  2250
Wire Wire Line
	800  1750 800  1850
$Comp
L Device:C C2
U 1 1 6115564D
P 800 2000
F 0 "C2" H 915 2046 50  0000 L CNN
F 1 "100n" H 915 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 838 1850 50  0001 C CNN
F 3 "~" H 800 2000 50  0001 C CNN
	1    800  2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61155121
P 800 2250
F 0 "#PWR03" H 800 2000 50  0001 C CNN
F 1 "GND" H 805 2077 50  0000 C CNN
F 2 "" H 800 2250 50  0001 C CNN
F 3 "" H 800 2250 50  0001 C CNN
	1    800  2250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 61154991
P 800 1750
F 0 "#PWR02" H 800 1600 50  0001 C CNN
F 1 "VCC" H 815 1923 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 6117AFF9
P 5800 2800
F 0 "J1" H 5880 2842 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 5880 2751 50  0000 L CNN
F 2 "CUI_TB006-508-03BE:CUI_TB006-508-03BE" H 5800 2800 50  0001 C CNN
F 3 "~" H 5800 2800 50  0001 C CNN
	1    5800 2800
	1    0    0    -1  
$EndComp
$Comp
L TYPE-C-31-M-12:TYPE-C-31-M-12 J7
U 1 1 6118AF6C
P 10800 3850
F 0 "J7" H 10800 4517 50  0000 C CNN
F 1 "TYPE-C-31-M-12" H 10800 4426 50  0000 C CNN
F 2 "HRO_TYPE-C-31-M-12:HRO_TYPE-C-31-M-12" H 10800 3850 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/lcsc/1811131825_Korean-Hroparts-Elec-TYPE-C-31-M-12_C165948.pdf" H 10800 3850 50  0001 L BNN
F 4 "3.31mm" H 10800 3850 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Manufacturer Recommendations" H 10800 3850 50  0001 L BNN "STANDARD"
F 6 "A" H 10800 3850 50  0001 L BNN "PARTREV"
F 7 "HRO Electronics" H 10800 3850 50  0001 L BNN "MANUFACTURER"
	1    10800 3850
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CH340C U4
U 1 1 6118DFFB
P 13300 4200
F 0 "U4" H 13150 4050 50  0000 C CNN
F 1 "CH340C" H 13150 3950 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 13350 3650 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Jiangsu-Qin-Heng-CH340C_C84681.pdf" H 12950 5000 50  0001 C CNN
	1    13300 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 61192611
P 5800 3350
F 0 "J2" H 5880 3392 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 5880 3301 50  0000 L CNN
F 2 "CUI_TB006-508-03BE:CUI_TB006-508-03BE" H 5800 3350 50  0001 C CNN
F 3 "~" H 5800 3350 50  0001 C CNN
	1    5800 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 611931AE
P 3600 10600
F 0 "R4" V 3393 10600 50  0000 C CNN
F 1 "120" V 3484 10600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3530 10600 50  0001 C CNN
F 3 "~" H 3600 10600 50  0001 C CNN
	1    3600 10600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 611669B4
P 1850 9550
F 0 "R2" H 1920 9596 50  0000 L CNN
F 1 "10k" H 1920 9505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1780 9550 50  0001 C CNN
F 3 "~" H 1850 9550 50  0001 C CNN
	1    1850 9550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP2
U 1 1 6119BC53
P 9900 1650
F 0 "JP2" H 9900 1855 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 9900 1764 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 9900 1650 50  0001 C CNN
F 3 "~" H 9900 1650 50  0001 C CNN
	1    9900 1650
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP4
U 1 1 6119D4AD
P 9900 2250
F 0 "JP4" H 9900 2455 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 9900 2364 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 9900 2250 50  0001 C CNN
F 3 "~" H 9900 2250 50  0001 C CNN
	1    9900 2250
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP5
U 1 1 6119DE73
P 9900 2550
F 0 "JP5" H 9900 2755 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 9900 2664 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 9900 2550 50  0001 C CNN
F 3 "~" H 9900 2550 50  0001 C CNN
	1    9900 2550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP6
U 1 1 6119E34D
P 13700 1050
F 0 "JP6" H 13700 1255 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 13700 1164 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 13700 1050 50  0001 C CNN
F 3 "~" H 13700 1050 50  0001 C CNN
	1    13700 1050
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP7
U 1 1 6119F385
P 13700 1350
F 0 "JP7" H 13700 1555 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 13700 1464 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 13700 1350 50  0001 C CNN
F 3 "~" H 13700 1350 50  0001 C CNN
	1    13700 1350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP9
U 1 1 6119F7AD
P 13700 1950
F 0 "JP9" H 13700 2155 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 13700 2064 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 13700 1950 50  0001 C CNN
F 3 "~" H 13700 1950 50  0001 C CNN
	1    13700 1950
	1    0    0    -1  
$EndComp
Text GLabel 5500 4300 0    50   Input ~ 0
TX
Text GLabel 5500 4400 0    50   Input ~ 0
RX
Text GLabel 10000 3750 0    50   Input ~ 0
D+
Text GLabel 10000 3850 0    50   Input ~ 0
D-
Text GLabel 11600 3850 2    50   Input ~ 0
D+
Text GLabel 11600 3750 2    50   Input ~ 0
D-
Text GLabel 12800 4200 0    50   Input ~ 0
D-
Text GLabel 12800 4100 0    50   Input ~ 0
D+
Wire Wire Line
	10000 3750 10100 3750
Wire Wire Line
	10000 3850 10100 3850
Wire Wire Line
	11500 3750 11600 3750
Wire Wire Line
	11500 3850 11600 3850
Wire Wire Line
	12800 4100 12900 4100
Wire Wire Line
	12800 4200 12900 4200
Wire Wire Line
	13700 3800 13800 3800
Wire Wire Line
	13700 3900 13800 3900
$Comp
L Device:C C8
U 1 1 6124E822
P 13950 4500
F 0 "C8" H 14065 4546 50  0000 L CNN
F 1 "100n" H 14065 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 13988 4350 50  0001 C CNN
F 3 "~" H 13950 4500 50  0001 C CNN
	1    13950 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	13700 4500 13800 4500
Text Notes 13100 5450 2    50   ~ 0
CH340C decoupling
Wire Notes Line
	12350 5450 12350 5950
Wire Notes Line
	13450 5450 12350 5450
Wire Notes Line
	13450 5950 13450 5450
Wire Notes Line
	12350 5950 13450 5950
Wire Wire Line
	13050 5800 13150 5800
Wire Wire Line
	12650 5800 12750 5800
$Comp
L Device:C C5
U 1 1 612767EE
P 12900 5800
F 0 "C5" H 13015 5846 50  0000 L CNN
F 1 "100n" H 13015 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 12938 5650 50  0001 C CNN
F 3 "~" H 12900 5800 50  0001 C CNN
	1    12900 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR041
U 1 1 612767F4
P 13150 5800
F 0 "#PWR041" H 13150 5550 50  0001 C CNN
F 1 "GND" H 13155 5627 50  0000 C CNN
F 2 "" H 13150 5800 50  0001 C CNN
F 3 "" H 13150 5800 50  0001 C CNN
	1    13150 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR038
U 1 1 612767FA
P 12650 5800
F 0 "#PWR038" H 12650 5650 50  0001 C CNN
F 1 "VCC" H 12665 5973 50  0000 C CNN
F 2 "" H 12650 5800 50  0001 C CNN
F 3 "" H 12650 5800 50  0001 C CNN
	1    12650 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR043
U 1 1 6127D497
P 13300 3450
F 0 "#PWR043" H 13300 3300 50  0001 C CNN
F 1 "VCC" H 13315 3623 50  0000 C CNN
F 2 "" H 13300 3450 50  0001 C CNN
F 3 "" H 13300 3450 50  0001 C CNN
	1    13300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	13300 3450 13300 3600
$Comp
L power:GND #PWR044
U 1 1 61285B81
P 13300 4900
F 0 "#PWR044" H 13300 4650 50  0001 C CNN
F 1 "GND" H 13305 4727 50  0000 C CNN
F 2 "" H 13300 4900 50  0001 C CNN
F 3 "" H 13300 4900 50  0001 C CNN
	1    13300 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 6129550D
P 12750 3450
F 0 "#PWR039" H 12750 3200 50  0001 C CNN
F 1 "GND" H 12755 3277 50  0000 C CNN
F 2 "" H 12750 3450 50  0001 C CNN
F 3 "" H 12750 3450 50  0001 C CNN
	1    12750 3450
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 61296637
P 13050 3450
F 0 "C6" H 13165 3496 50  0000 L CNN
F 1 "100n" H 13165 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 13088 3300 50  0001 C CNN
F 3 "~" H 13050 3450 50  0001 C CNN
	1    13050 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13200 3450 13200 3600
Wire Wire Line
	12750 3450 12900 3450
NoConn ~ 13700 4100
NoConn ~ 13700 4200
NoConn ~ 13700 4300
NoConn ~ 13700 4400
NoConn ~ 12900 3900
Wire Wire Line
	10550 4550 10550 4650
Wire Wire Line
	10550 4650 10700 4650
Wire Wire Line
	11050 4650 11050 4550
Connection ~ 10800 4650
Wire Wire Line
	10800 4650 10900 4650
Wire Wire Line
	10900 4550 10900 4650
Connection ~ 10900 4650
Wire Wire Line
	10900 4650 11050 4650
Wire Wire Line
	10700 4550 10700 4650
Connection ~ 10700 4650
Wire Wire Line
	10700 4650 10800 4650
$Comp
L power:GND #PWR024
U 1 1 612E0E05
P 10000 4250
F 0 "#PWR024" H 10000 4000 50  0001 C CNN
F 1 "GND" V 10005 4122 50  0000 R CNN
F 2 "" H 10000 4250 50  0001 C CNN
F 3 "" H 10000 4250 50  0001 C CNN
	1    10000 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 4250 10100 4250
$Comp
L power:GND #PWR029
U 1 1 612E9092
P 11600 4250
F 0 "#PWR029" H 11600 4000 50  0001 C CNN
F 1 "GND" V 11605 4122 50  0000 R CNN
F 2 "" H 11600 4250 50  0001 C CNN
F 3 "" H 11600 4250 50  0001 C CNN
	1    11600 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11600 4250 11500 4250
$Comp
L power:VCC #PWR023
U 1 1 612F2964
P 10000 3450
F 0 "#PWR023" H 10000 3300 50  0001 C CNN
F 1 "VCC" V 10015 3577 50  0000 L CNN
F 2 "" H 10000 3450 50  0001 C CNN
F 3 "" H 10000 3450 50  0001 C CNN
	1    10000 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10000 3450 10100 3450
$Comp
L power:VCC #PWR028
U 1 1 612FAFB2
P 11600 3450
F 0 "#PWR028" H 11600 3300 50  0001 C CNN
F 1 "VCC" V 11615 3577 50  0000 L CNN
F 2 "" H 11600 3450 50  0001 C CNN
F 3 "" H 11600 3450 50  0001 C CNN
	1    11600 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	11600 3450 11500 3450
Wire Wire Line
	13300 4800 13300 4900
$Comp
L power:VCC #PWR036
U 1 1 6132AA97
P 12650 900
F 0 "#PWR036" H 12650 750 50  0001 C CNN
F 1 "VCC" V 12665 1027 50  0000 L CNN
F 2 "" H 12650 900 50  0001 C CNN
F 3 "" H 12650 900 50  0001 C CNN
	1    12650 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 6132AA9D
P 12650 1150
F 0 "R10" H 12580 1104 50  0000 R CNN
F 1 "40.2" H 12580 1195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12580 1150 50  0001 C CNN
F 3 "~" H 12650 1150 50  0001 C CNN
	1    12650 1150
	1    0    0    -1  
$EndComp
NoConn ~ 11500 3650
NoConn ~ 11500 3950
NoConn ~ 10100 3650
NoConn ~ 10100 3950
$Comp
L power:GND #PWR011
U 1 1 613557BF
P 5500 3450
F 0 "#PWR011" H 5500 3200 50  0001 C CNN
F 1 "GND" H 5505 3277 50  0000 C CNN
F 2 "" H 5500 3450 50  0001 C CNN
F 3 "" H 5500 3450 50  0001 C CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 61356B7F
P 5500 2900
F 0 "#PWR010" H 5500 2650 50  0001 C CNN
F 1 "GND" H 5505 2727 50  0000 C CNN
F 2 "" H 5500 2900 50  0001 C CNN
F 3 "" H 5500 2900 50  0001 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
Text GLabel 5500 2700 0    50   Input ~ 0
SIG1A
Text GLabel 5500 2800 0    50   Input ~ 0
SIG1B
Text GLabel 5500 3250 0    50   Input ~ 0
SIG2A
Text GLabel 5500 3350 0    50   Input ~ 0
SIG2B
Wire Wire Line
	5500 2700 5600 2700
Wire Wire Line
	5500 2800 5600 2800
Wire Wire Line
	5500 2900 5600 2900
Wire Wire Line
	5500 3250 5600 3250
Wire Wire Line
	5500 3350 5600 3350
Wire Wire Line
	5500 3450 5600 3450
Wire Wire Line
	12650 900  12650 1000
Text GLabel 14500 3600 2    50   Input ~ 0
MUXRX
Text GLabel 14500 4250 2    50   Input ~ 0
MUXTX
Text GLabel 11700 5900 2    50   Input ~ 0
MUXTX
Text GLabel 11700 6200 2    50   Input ~ 0
MUXRX
Text GLabel 15450 4600 2    50   Input ~ 0
MUXRST
Text GLabel 11700 6500 2    50   Input ~ 0
MUXRST
Text GLabel 11700 6000 2    50   Input ~ 0
RX
Text GLabel 11700 5700 2    50   Input ~ 0
TX
Text GLabel 11700 6300 2    50   Input ~ 0
RST
Text GLabel 11700 6100 2    50   Input ~ 0
EXTRX
Text GLabel 11700 5800 2    50   Input ~ 0
EXTTX
Text GLabel 11700 6400 2    50   Input ~ 0
EXTRST
Wire Wire Line
	11600 5700 11700 5700
Wire Wire Line
	11600 5800 11700 5800
Wire Wire Line
	11600 5900 11700 5900
Wire Wire Line
	11600 6000 11700 6000
Wire Wire Line
	11600 6100 11700 6100
Wire Wire Line
	11600 6200 11700 6200
Wire Wire Line
	11600 6300 11700 6300
Wire Wire Line
	11600 6400 11700 6400
Wire Wire Line
	11600 6500 11700 6500
$Comp
L power:GND #PWR031
U 1 1 6121168E
P 11700 6900
F 0 "#PWR031" H 11700 6650 50  0001 C CNN
F 1 "GND" H 11705 6727 50  0000 C CNN
F 2 "" H 11700 6900 50  0001 C CNN
F 3 "" H 11700 6900 50  0001 C CNN
	1    11700 6900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11600 6900 11650 6900
Wire Wire Line
	11600 6800 11650 6800
Wire Wire Line
	11650 6800 11650 6900
Connection ~ 11650 6900
Wire Wire Line
	11650 6900 11700 6900
$Comp
L power:VCC #PWR030
U 1 1 6122B478
P 11700 5500
F 0 "#PWR030" H 11700 5350 50  0001 C CNN
F 1 "VCC" H 11715 5673 50  0000 C CNN
F 2 "" H 11700 5500 50  0001 C CNN
F 3 "" H 11700 5500 50  0001 C CNN
	1    11700 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	11600 5500 11700 5500
$Comp
L power:GND #PWR021
U 1 1 61248935
P 9700 5700
F 0 "#PWR021" H 9700 5450 50  0001 C CNN
F 1 "GND" H 9705 5527 50  0000 C CNN
F 2 "" H 9700 5700 50  0001 C CNN
F 3 "" H 9700 5700 50  0001 C CNN
	1    9700 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 612495F2
P 9950 5700
F 0 "R7" H 10020 5746 50  0000 L CNN
F 1 "10k" H 10020 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9880 5700 50  0001 C CNN
F 3 "~" H 9950 5700 50  0001 C CNN
	1    9950 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 5700 9800 5700
Wire Wire Line
	10100 5700 10200 5700
Text GLabel 10100 5800 0    50   Input ~ 0
MUX1S0
Text GLabel 10100 5900 0    50   Input ~ 0
MUX1S1
Text GLabel 10100 6000 0    50   Input ~ 0
MUX1S2
Wire Wire Line
	10100 5800 10200 5800
Wire Wire Line
	10100 5900 10200 5900
Wire Wire Line
	10100 6000 10200 6000
Text GLabel 9700 1650 0    50   Input ~ 0
EXTRX
Text GLabel 9700 2250 0    50   Input ~ 0
EXTTX
Text GLabel 9700 2550 0    50   Input ~ 0
EXTRST
Text GLabel 13900 1050 2    50   Input ~ 0
EXTRST
Text GLabel 13900 1350 2    50   Input ~ 0
EXTTX
Text GLabel 13900 1950 2    50   Input ~ 0
EXTRX
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 611AC231
P 3500 9750
F 0 "Q1" H 3691 9796 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3691 9705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 3700 9850 50  0001 C CNN
F 3 "~" H 3500 9750 50  0001 C CNN
	1    3500 9750
	1    0    0    -1  
$EndComp
Text GLabel 2750 9750 0    50   Input ~ 0
STOPRST
Text GLabel 3600 10850 3    50   Input ~ 0
RST
$Comp
L power:VCC #PWR08
U 1 1 611CEAF9
P 3600 9400
F 0 "#PWR08" H 3600 9250 50  0001 C CNN
F 1 "VCC" H 3615 9573 50  0000 C CNN
F 2 "" H 3600 9400 50  0001 C CNN
F 3 "" H 3600 9400 50  0001 C CNN
	1    3600 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 9400 3600 9550
Wire Wire Line
	3150 9750 3300 9750
Wire Wire Line
	3600 10750 3600 10850
$Comp
L Switch:SW_Push SW2
U 1 1 61257FBA
P 5550 9500
F 0 "SW2" H 5550 9785 50  0000 C CNN
F 1 "SW_Push" H 5550 9694 50  0000 C CNN
F 2 "SKRKAEE020:SKRKAEE020" H 5550 9700 50  0001 C CNN
F 3 "~" H 5550 9700 50  0001 C CNN
	1    5550 9500
	1    0    0    -1  
$EndComp
Text GLabel 5250 9500 0    50   Input ~ 0
RST
$Comp
L power:GND #PWR018
U 1 1 61258742
P 5850 9500
F 0 "#PWR018" H 5850 9250 50  0001 C CNN
F 1 "GND" H 5855 9327 50  0000 C CNN
F 2 "" H 5850 9500 50  0001 C CNN
F 3 "" H 5850 9500 50  0001 C CNN
	1    5850 9500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 9500 5350 9500
Wire Wire Line
	5750 9500 5850 9500
$Comp
L power:VCC #PWR026
U 1 1 6116E743
P 11050 900
F 0 "#PWR026" H 11050 750 50  0001 C CNN
F 1 "VCC" V 11065 1027 50  0000 L CNN
F 2 "" H 11050 900 50  0001 C CNN
F 3 "" H 11050 900 50  0001 C CNN
	1    11050 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 900  11050 1000
$Comp
L Device:R R9
U 1 1 61303408
P 11050 1150
F 0 "R9" H 10980 1104 50  0000 R CNN
F 1 "40.2" H 10980 1195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10980 1150 50  0001 C CNN
F 3 "~" H 11050 1150 50  0001 C CNN
	1    11050 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 611A5CE7
P 3000 9750
F 0 "R3" H 3070 9796 50  0000 L CNN
F 1 "40.2" H 3070 9705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2930 9750 50  0001 C CNN
F 3 "~" H 3000 9750 50  0001 C CNN
	1    3000 9750
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 9750 2850 9750
$Comp
L MCU_Microchip_ATmega:ATmega328PB-AU U1
U 1 1 611B4248
P 2050 2350
F 0 "U1" H 2050 2450 50  0000 C CNN
F 1 "ATmega328PB-AU" H 1900 2350 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2050 2350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001906C.pdf" H 2050 2350 50  0001 C CNN
	1    2050 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 611C40BF
P 2050 3950
F 0 "#PWR07" H 2050 3700 50  0001 C CNN
F 1 "GND" H 2055 3777 50  0000 C CNN
F 2 "" H 2050 3950 50  0001 C CNN
F 3 "" H 2050 3950 50  0001 C CNN
	1    2050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3850 2050 3950
$Comp
L power:VCC #PWR06
U 1 1 611D004C
P 2050 750
F 0 "#PWR06" H 2050 600 50  0001 C CNN
F 1 "VCC" H 2065 923 50  0000 C CNN
F 2 "" H 2050 750 50  0001 C CNN
F 3 "" H 2050 750 50  0001 C CNN
	1    2050 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 750  2050 800 
Wire Wire Line
	2050 800  2150 800 
Wire Wire Line
	2150 800  2150 850 
Connection ~ 2050 800 
Wire Wire Line
	2050 800  2050 850 
NoConn ~ 1450 1150
Text GLabel 2750 1950 2    50   Input ~ 0
XTAL2
Text GLabel 2750 1750 2    50   Input ~ 0
SCK
Text GLabel 2750 1450 2    50   Input ~ 0
MOSI
Text GLabel 2750 1550 2    50   Input ~ 0
MISO
Text GLabel 2750 1150 2    50   Input ~ 0
SIG1A
Text GLabel 2750 1250 2    50   Input ~ 0
SIG1B
Text GLabel 2750 1850 2    50   Input ~ 0
XTAL1
Wire Wire Line
	2650 1850 2650 1950
Wire Wire Line
	2650 1950 2750 1950
Wire Wire Line
	2650 1750 2650 1800
Wire Wire Line
	2650 1800 2700 1800
Wire Wire Line
	2700 1800 2700 1850
Wire Wire Line
	2700 1850 2750 1850
Wire Wire Line
	2650 1650 2650 1700
Wire Wire Line
	2650 1700 2700 1700
Wire Wire Line
	2700 1700 2700 1750
Wire Wire Line
	2700 1750 2750 1750
Wire Wire Line
	2650 1550 2650 1600
Wire Wire Line
	2650 1600 2700 1600
Wire Wire Line
	2700 1600 2700 1650
Wire Wire Line
	2700 1650 2750 1650
Wire Wire Line
	2650 1550 2750 1550
Connection ~ 2650 1550
Wire Wire Line
	2650 1450 2750 1450
Wire Wire Line
	2650 1450 2650 1400
Wire Wire Line
	2650 1400 2700 1400
Wire Wire Line
	2700 1400 2700 1350
Wire Wire Line
	2700 1350 2750 1350
Connection ~ 2650 1450
Text GLabel 2750 2050 2    50   Input ~ 0
STOPRST
Wire Wire Line
	2650 2050 2750 2050
Wire Wire Line
	2650 2650 2750 2650
Wire Wire Line
	2650 2550 2750 2550
Wire Wire Line
	2650 2450 2750 2450
Text GLabel 2750 2450 2    50   Input ~ 0
SDA
Text GLabel 2750 2550 2    50   Input ~ 0
SCL
Text GLabel 2750 2650 2    50   Input ~ 0
RST
Wire Wire Line
	2650 2850 2750 2850
Wire Wire Line
	2650 2950 2750 2950
Wire Wire Line
	2650 3050 2750 3050
Wire Wire Line
	2650 3150 2750 3150
Wire Wire Line
	2650 3250 2750 3250
Wire Wire Line
	2650 3350 2750 3350
Wire Wire Line
	2650 3450 2750 3450
Text GLabel 2750 2950 2    50   Input ~ 0
TX
Text GLabel 2750 3350 2    50   Input ~ 0
SIG2A
Text GLabel 2750 3450 2    50   Input ~ 0
SIG2B
Text GLabel 2750 3050 2    50   Input ~ 0
MUX1S0
Text GLabel 2750 3150 2    50   Input ~ 0
MUX1S1
Text GLabel 2750 3250 2    50   Input ~ 0
MUX1S2
NoConn ~ 1450 3150
NoConn ~ 2650 2250
NoConn ~ 2650 2350
Wire Wire Line
	2650 1350 2650 1300
Wire Wire Line
	2650 1300 2700 1300
Wire Wire Line
	2700 1300 2700 1250
Wire Wire Line
	2700 1250 2750 1250
Wire Wire Line
	2650 1250 2650 1200
Wire Wire Line
	2650 1200 2700 1200
Wire Wire Line
	2700 1200 2700 1150
Wire Wire Line
	2700 1150 2750 1150
NoConn ~ 2650 1150
Wire Notes Line
	9350 4900 12200 4900
Wire Notes Line
	12200 4900 12200 3050
Wire Notes Line
	12200 3050 9350 3050
Wire Notes Line
	9350 3050 9350 4900
Text Notes 9350 3050 0    50   ~ 0
Reals USB C to serial
Wire Notes Line
	12350 5300 15950 5300
Wire Notes Line
	15950 5300 15950 3050
Wire Notes Line
	15950 3050 12350 3050
Wire Notes Line
	12350 3050 12350 5300
Text Notes 12350 3050 0    50   ~ 0
USB to UART
Wire Notes Line
	5100 2550 5100 3750
Wire Notes Line
	5100 3750 6850 3750
Wire Notes Line
	6850 3750 6850 2550
Wire Notes Line
	6850 2550 5100 2550
Text Notes 5100 2550 0    50   ~ 0
Connection to light modules
$Comp
L power:VCC #PWR035
U 1 1 611E06BC
P 12500 6900
F 0 "#PWR035" H 12500 6750 50  0001 C CNN
F 1 "VCC" H 12515 7073 50  0000 C CNN
F 2 "" H 12500 6900 50  0001 C CNN
F 3 "" H 12500 6900 50  0001 C CNN
	1    12500 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR040
U 1 1 611E06B6
P 13000 6900
F 0 "#PWR040" H 13000 6650 50  0001 C CNN
F 1 "GND" H 13005 6727 50  0000 C CNN
F 2 "" H 13000 6900 50  0001 C CNN
F 3 "" H 13000 6900 50  0001 C CNN
	1    13000 6900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 611E06B0
P 12750 6900
F 0 "C4" H 12865 6946 50  0000 L CNN
F 1 "100n" H 12865 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 12788 6750 50  0001 C CNN
F 3 "~" H 12750 6900 50  0001 C CNN
	1    12750 6900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12500 6900 12600 6900
Wire Wire Line
	12900 6900 13000 6900
Wire Notes Line
	12200 7050 13300 7050
Wire Notes Line
	13300 7050 13300 6550
Wire Notes Line
	13250 6550 12200 6550
Wire Notes Line
	12200 6550 12200 7050
Text Notes 13300 6550 2    50   ~ 0
CD74HC4053PWR decoupling
$Comp
L CD74HC4053PWR:CD74HC4053PWR U2
U 1 1 611A257A
P 10900 6200
F 0 "U2" H 10900 7170 50  0000 C CNN
F 1 "CD74HC4053PWR" H 10900 7079 50  0000 C CNN
F 2 "CD74HC4053PWR:SOP65P640X120-16N" H 10900 6200 50  0001 L BNN
F 3 "" H 10900 6200 50  0001 L BNN
	1    10900 6200
	1    0    0    -1  
$EndComp
Wire Notes Line
	9350 5050 9350 7050
Wire Notes Line
	9350 7050 12100 7050
Wire Notes Line
	12100 7050 12100 5050
Wire Notes Line
	12100 5050 9350 5050
Text Notes 9350 5050 0    50   ~ 0
Serial Multiplexer - USB to UART
Wire Notes Line
	5000 9100 5000 9650
Wire Notes Line
	5000 9650 6100 9650
Wire Notes Line
	6100 9650 6100 9100
Wire Notes Line
	6100 9100 5000 9100
Text Notes 5000 9100 0    50   ~ 0
Reset button
Wire Notes Line
	2300 11100 4800 11100
Wire Notes Line
	4800 11100 4800 9100
Wire Notes Line
	4800 9100 2300 9100
Wire Notes Line
	2300 9100 2300 11100
Text Notes 2300 9100 0    50   ~ 0
Digitally disable reset on serial connect + hardware override
$Comp
L power:GND #PWR025
U 1 1 612D8ED6
P 10800 4650
F 0 "#PWR025" H 10800 4400 50  0001 C CNN
F 1 "GND" H 10805 4477 50  0000 C CNN
F 2 "" H 10800 4650 50  0001 C CNN
F 3 "" H 10800 4650 50  0001 C CNN
	1    10800 4650
	1    0    0    -1  
$EndComp
Text Notes 9600 5450 0    50   ~ 0
pulldown to\npermanently enable\nmultiplexer
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 61885232
P 5800 4800
F 0 "J4" H 5880 4792 50  0000 L CNN
F 1 "Conn_01x04" H 5880 4701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5800 4800 50  0001 C CNN
F 3 "~" H 5800 4800 50  0001 C CNN
	1    5800 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 61885238
P 5500 4700
F 0 "#PWR013" H 5500 4450 50  0001 C CNN
F 1 "GND" V 5505 4572 50  0000 R CNN
F 2 "" H 5500 4700 50  0001 C CNN
F 3 "" H 5500 4700 50  0001 C CNN
	1    5500 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4700 5600 4700
Wire Wire Line
	5500 4800 5600 4800
Wire Wire Line
	5500 4900 5600 4900
Wire Wire Line
	5500 5000 5600 5000
Text Notes 5900 4700 0    50   ~ 0
External UART
Text GLabel 5500 5000 0    50   Input ~ 0
EXTRST
Text GLabel 5500 4800 0    50   Input ~ 0
EXTTX
Text GLabel 5500 4900 0    50   Input ~ 0
EXTRX
Text GLabel 14500 3450 2    50   Input ~ 0
RX
Text GLabel 14500 4100 2    50   Input ~ 0
TX
Text GLabel 15450 4400 2    50   Input ~ 0
RST
$Comp
L Jumper:SolderJumper_2_Bridged JP12
U 1 1 6191A11B
P 14250 3600
F 0 "JP12" H 14250 3805 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 14250 3714 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 14250 3600 50  0001 C CNN
F 3 "~" H 14250 3600 50  0001 C CNN
	1    14250 3600
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP11
U 1 1 6191ADB7
P 14250 3450
F 0 "JP11" H 14250 3655 50  0000 C CNN
F 1 "SolderJumper" H 14250 3564 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 14250 3450 50  0001 C CNN
F 3 "~" H 14250 3450 50  0001 C CNN
	1    14250 3450
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP14
U 1 1 619337D7
P 14250 4250
F 0 "JP14" H 14250 4455 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 14250 4364 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 14250 4250 50  0001 C CNN
F 3 "~" H 14250 4250 50  0001 C CNN
	1    14250 4250
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP13
U 1 1 619337DD
P 14250 4100
F 0 "JP13" H 14250 4305 50  0000 C CNN
F 1 "SolderJumper" H 14250 4214 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 14250 4100 50  0001 C CNN
F 3 "~" H 14250 4100 50  0001 C CNN
	1    14250 4100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP16
U 1 1 619648E7
P 15200 4600
F 0 "JP16" H 15200 4805 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 15200 4714 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 15200 4600 50  0001 C CNN
F 3 "~" H 15200 4600 50  0001 C CNN
	1    15200 4600
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP15
U 1 1 619648ED
P 15200 4400
F 0 "JP15" H 15200 4605 50  0000 C CNN
F 1 "SolderJumper" H 15200 4514 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 15200 4400 50  0001 C CNN
F 3 "~" H 15200 4400 50  0001 C CNN
	1    15200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 3450 14500 3450
Wire Wire Line
	14400 3600 14500 3600
Wire Wire Line
	14400 4100 14500 4100
Wire Wire Line
	14400 4250 14500 4250
Wire Wire Line
	13800 3800 13800 3600
Wire Wire Line
	13800 3450 14100 3450
Wire Wire Line
	13800 3600 14100 3600
Connection ~ 13800 3600
Wire Wire Line
	13800 3600 13800 3450
Wire Wire Line
	13800 3900 13800 4100
Wire Wire Line
	13800 4250 14100 4250
Wire Wire Line
	14100 4100 13800 4100
Connection ~ 13800 4100
Wire Wire Line
	13800 4100 13800 4250
Wire Wire Line
	15350 4400 15450 4400
Wire Wire Line
	15350 4600 15450 4600
NoConn ~ 13700 4600
Text Notes 550  7200 0    50   ~ 0
Status LED
Wire Notes Line
	1850 7200 550  7200
Wire Notes Line
	1850 8750 1850 7200
Wire Notes Line
	550  8750 1850 8750
Wire Notes Line
	550  7200 550  8750
$Comp
L Device:LED D1
U 1 1 61C08A60
P 650 8200
F 0 "D1" V 689 8082 50  0000 R CNN
F 1 "17-21/BHC-XL2M2TY/3T" V 598 8082 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 650 8200 50  0001 C CNN
F 3 "~" H 650 8200 50  0001 C CNN
	1    650  8200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 61C08A66
P 650 7750
F 0 "R1" H 580 7704 50  0000 R CNN
F 1 "200" H 580 7795 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 580 7750 50  0001 C CNN
F 3 "~" H 650 7750 50  0001 C CNN
	1    650  7750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61C08A6C
P 650 8500
F 0 "#PWR01" H 650 8250 50  0001 C CNN
F 1 "GND" H 655 8327 50  0000 C CNN
F 2 "" H 650 8500 50  0001 C CNN
F 3 "" H 650 8500 50  0001 C CNN
	1    650  8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  7450 650  7600
Wire Wire Line
	650  7900 650  8050
Wire Wire Line
	650  8350 650  8500
Text GLabel 650  7450 1    50   Input ~ 0
LED
Text GLabel 2750 3550 2    50   Input ~ 0
LED
Wire Wire Line
	2650 3550 2750 3550
Text GLabel 11700 8050 2    50   Input ~ 0
MUXEXTTX
Text GLabel 11700 8350 2    50   Input ~ 0
MUXEXTRX
Text GLabel 11700 8150 2    50   Input ~ 0
EXTRX
Text GLabel 11700 7850 2    50   Input ~ 0
EXTTX
Wire Wire Line
	11600 7850 11700 7850
Wire Wire Line
	11600 8050 11700 8050
Wire Wire Line
	11600 8150 11700 8150
Wire Wire Line
	11600 8350 11700 8350
$Comp
L power:GND #PWR033
U 1 1 61207BD8
P 11700 9050
F 0 "#PWR033" H 11700 8800 50  0001 C CNN
F 1 "GND" H 11705 8877 50  0000 C CNN
F 2 "" H 11700 9050 50  0001 C CNN
F 3 "" H 11700 9050 50  0001 C CNN
	1    11700 9050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11600 9050 11650 9050
Wire Wire Line
	11600 8950 11650 8950
Wire Wire Line
	11650 8950 11650 9050
Connection ~ 11650 9050
Wire Wire Line
	11650 9050 11700 9050
$Comp
L power:VCC #PWR032
U 1 1 61207BE3
P 11700 7650
F 0 "#PWR032" H 11700 7500 50  0001 C CNN
F 1 "VCC" H 11715 7823 50  0000 C CNN
F 2 "" H 11700 7650 50  0001 C CNN
F 3 "" H 11700 7650 50  0001 C CNN
	1    11700 7650
	0    1    1    0   
$EndComp
Wire Wire Line
	11600 7650 11700 7650
$Comp
L power:GND #PWR022
U 1 1 61207BEA
P 9700 7850
F 0 "#PWR022" H 9700 7600 50  0001 C CNN
F 1 "GND" H 9705 7677 50  0000 C CNN
F 2 "" H 9700 7850 50  0001 C CNN
F 3 "" H 9700 7850 50  0001 C CNN
	1    9700 7850
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 61207BF0
P 9950 7850
F 0 "R8" H 10020 7896 50  0000 L CNN
F 1 "10k" H 10020 7805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9880 7850 50  0001 C CNN
F 3 "~" H 9950 7850 50  0001 C CNN
	1    9950 7850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 7850 9800 7850
Wire Wire Line
	10100 7850 10200 7850
Text GLabel 10100 7950 0    50   Input ~ 0
MUX2S0
Text GLabel 10100 8050 0    50   Input ~ 0
MUX2S1
Text GLabel 10100 8150 0    50   Input ~ 0
MUX2S2
Wire Wire Line
	10100 7950 10200 7950
Wire Wire Line
	10100 8050 10200 8050
Wire Wire Line
	10100 8150 10200 8150
$Comp
L CD74HC4053PWR:CD74HC4053PWR U3
U 1 1 61207BFE
P 10900 8350
F 0 "U3" H 10900 9320 50  0000 C CNN
F 1 "CD74HC4053PWR" H 10900 9229 50  0000 C CNN
F 2 "CD74HC4053PWR:SOP65P640X120-16N" H 10900 8350 50  0001 L BNN
F 3 "" H 10900 8350 50  0001 L BNN
	1    10900 8350
	1    0    0    -1  
$EndComp
Wire Notes Line
	9350 7200 9350 9200
Wire Notes Line
	9350 9200 12850 9200
Wire Notes Line
	12850 9200 12850 7200
Wire Notes Line
	12900 7200 9350 7200
Text Notes 9350 7200 0    50   ~ 0
Serial Multiplexer - External connection
Text Notes 9600 7600 0    50   ~ 0
pulldown to\npermanently enable\nmultiplexer
$Comp
L power:VCC #PWR042
U 1 1 612205D1
P 13250 9050
F 0 "#PWR042" H 13250 8900 50  0001 C CNN
F 1 "VCC" H 13265 9223 50  0000 C CNN
F 2 "" H 13250 9050 50  0001 C CNN
F 3 "" H 13250 9050 50  0001 C CNN
	1    13250 9050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR045
U 1 1 612205D7
P 13750 9050
F 0 "#PWR045" H 13750 8800 50  0001 C CNN
F 1 "GND" H 13755 8877 50  0000 C CNN
F 2 "" H 13750 9050 50  0001 C CNN
F 3 "" H 13750 9050 50  0001 C CNN
	1    13750 9050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C7
U 1 1 612205DD
P 13500 9050
F 0 "C7" H 13615 9096 50  0000 L CNN
F 1 "100n" H 13615 9005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 13538 8900 50  0001 C CNN
F 3 "~" H 13500 9050 50  0001 C CNN
	1    13500 9050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13250 9050 13350 9050
Wire Wire Line
	13650 9050 13750 9050
Wire Notes Line
	12950 9200 14050 9200
Wire Notes Line
	14050 9200 14050 8700
Wire Notes Line
	14000 8700 12950 8700
Wire Notes Line
	12950 8700 12950 9200
Text Notes 14050 8700 2    50   ~ 0
CD74HC4053PWR decoupling
NoConn ~ 11600 8550
NoConn ~ 11600 8650
NoConn ~ 11600 8450
Text GLabel 2750 1350 2    50   Input ~ 0
MUXEXTTX
Text GLabel 2750 1650 2    50   Input ~ 0
MUXEXTRX
Text GLabel 1350 2850 0    50   Input ~ 0
MUX2S0
Text GLabel 1350 2950 0    50   Input ~ 0
MUX2S1
Text GLabel 1350 3050 0    50   Input ~ 0
MUX2S2
Wire Wire Line
	1350 2850 1450 2850
Wire Wire Line
	1350 2950 1450 2950
Wire Wire Line
	1350 3050 1450 3050
NoConn ~ 11600 8250
NoConn ~ 11600 7950
Text GLabel 2750 2850 2    50   Input ~ 0
RX
$Comp
L Switch:SW_Push SW1
U 1 1 6128EB08
P 3950 10250
F 0 "SW1" H 3950 10535 50  0000 C CNN
F 1 "SW_Push" H 3950 10444 50  0000 C CNN
F 2 "SKRKAEE020:SKRKAEE020" H 3950 10450 50  0001 C CNN
F 3 "~" H 3950 10450 50  0001 C CNN
	1    3950 10250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 612A80A8
P 4250 10600
F 0 "R5" H 4320 10646 50  0000 L CNN
F 1 "40.2" H 4320 10555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4180 10600 50  0001 C CNN
F 3 "~" H 4250 10600 50  0001 C CNN
	1    4250 10600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 612A90B1
P 4250 10850
F 0 "#PWR09" H 4250 10600 50  0001 C CNN
F 1 "GND" H 4255 10677 50  0000 C CNN
F 2 "" H 4250 10850 50  0001 C CNN
F 3 "" H 4250 10850 50  0001 C CNN
	1    4250 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 9950 3600 10250
Wire Wire Line
	3750 10250 3600 10250
Connection ~ 3600 10250
Wire Wire Line
	3600 10250 3600 10450
Wire Wire Line
	4250 10250 4250 10450
Wire Wire Line
	4250 10750 4250 10850
Wire Wire Line
	4150 10250 4250 10250
NoConn ~ 2650 2150
Wire Wire Line
	14100 4500 15000 4500
Wire Wire Line
	15000 4500 15000 4400
Wire Wire Line
	15000 4400 15050 4400
Wire Wire Line
	15000 4500 15000 4600
Wire Wire Line
	15000 4600 15050 4600
Connection ~ 15000 4500
Text GLabel 7950 9900 0    50   Input ~ 0
SDA
Text GLabel 7950 9750 0    50   Input ~ 0
SCL
$Comp
L Device:R R12
U 1 1 612EAB9B
P 8100 9500
F 0 "R12" H 8170 9546 50  0000 L CNN
F 1 "10k" H 8170 9455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8030 9500 50  0001 C CNN
F 3 "~" H 8100 9500 50  0001 C CNN
	1    8100 9500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 612ECBE9
P 8400 9500
F 0 "R13" H 8470 9546 50  0000 L CNN
F 1 "10k" H 8470 9455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8330 9500 50  0001 C CNN
F 3 "~" H 8400 9500 50  0001 C CNN
	1    8400 9500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR049
U 1 1 612ED1A9
P 8100 9250
F 0 "#PWR049" H 8100 9100 50  0001 C CNN
F 1 "VCC" H 8115 9423 50  0000 C CNN
F 2 "" H 8100 9250 50  0001 C CNN
F 3 "" H 8100 9250 50  0001 C CNN
	1    8100 9250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR050
U 1 1 612EDE07
P 8400 9250
F 0 "#PWR050" H 8400 9100 50  0001 C CNN
F 1 "VCC" H 8415 9423 50  0000 C CNN
F 2 "" H 8400 9250 50  0001 C CNN
F 3 "" H 8400 9250 50  0001 C CNN
	1    8400 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 9750 8100 9750
Wire Wire Line
	8100 9750 8100 9650
Wire Wire Line
	7950 9900 8400 9900
Wire Wire Line
	8400 9900 8400 9650
Wire Wire Line
	8100 9250 8100 9350
Wire Wire Line
	8400 9250 8400 9350
Wire Notes Line
	7700 10000 8600 10000
Wire Notes Line
	8600 10000 8600 9000
Wire Notes Line
	8600 9000 7700 9000
Wire Notes Line
	7700 9000 7700 10000
Text Notes 7700 9000 0    50   ~ 0
I2C Pull-Ups
$Comp
L Device:R R11
U 1 1 61382EBC
P 7850 10650
F 0 "R11" H 7920 10696 50  0000 L CNN
F 1 "10k" H 7920 10605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7780 10650 50  0001 C CNN
F 3 "~" H 7850 10650 50  0001 C CNN
	1    7850 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 10400 7850 10500
Wire Notes Line
	7700 11150 8100 11150
Wire Notes Line
	8100 11150 8100 10150
Wire Notes Line
	8100 10150 7700 10150
Wire Notes Line
	7700 10150 7700 11150
Text Notes 7700 10150 0    50   ~ 0
UART Pull-Up
Text GLabel 7850 10900 3    50   Input ~ 0
RX
Wire Wire Line
	7850 10800 7850 10900
$Comp
L power:VCC #PWR048
U 1 1 61382EC8
P 7850 10400
F 0 "#PWR048" H 7850 10250 50  0001 C CNN
F 1 "VCC" H 3650 10250 50  0000 C CNN
F 2 "" H 7850 10400 50  0001 C CNN
F 3 "" H 7850 10400 50  0001 C CNN
	1    7850 10400
	1    0    0    -1  
$EndComp
Text Notes 650  3300 0    50   ~ 0
ATmega decoupling
Wire Notes Line
	1150 3300 650  3300
Wire Notes Line
	1150 4400 1150 3300
Wire Notes Line
	650  4400 1150 4400
Wire Notes Line
	650  3300 650  4400
Wire Wire Line
	800  4000 800  4100
Wire Wire Line
	800  3600 800  3700
$Comp
L Device:C C9
U 1 1 614BF013
P 800 3850
F 0 "C9" H 915 3896 50  0000 L CNN
F 1 "100n" H 915 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 838 3700 50  0001 C CNN
F 3 "~" H 800 3850 50  0001 C CNN
	1    800  3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 614BF019
P 800 4100
F 0 "#PWR052" H 800 3850 50  0001 C CNN
F 1 "GND" H 805 3927 50  0000 C CNN
F 2 "" H 800 4100 50  0001 C CNN
F 3 "" H 800 4100 50  0001 C CNN
	1    800  4100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR051
U 1 1 614BF01F
P 800 3600
F 0 "#PWR051" H 800 3450 50  0001 C CNN
F 1 "VCC" H 815 3773 50  0000 C CNN
F 2 "" H 800 3600 50  0001 C CNN
F 3 "" H 800 3600 50  0001 C CNN
	1    800  3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC

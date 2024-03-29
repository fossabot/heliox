EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
L Device:Rotary_Encoder_Switch SW1
U 1 1 6112A1C1
P 7100 1200
F 0 "SW1" H 7100 1567 50  0000 C CNN
F 1 "PEC11R-4220F-S0012" H 7100 1476 50  0000 C CNN
F 2 "Bourns-PEC11R-4220F-S0012:Bourns-PEC11R-4220F-S0012-MFG" H 6950 1360 50  0001 C CNN
F 3 "https://datasheet.octopart.com/PEC11R-4220F-S0012-Bourns-datasheet-68303416.pdf" H 7100 1460 50  0001 C CNN
	1    7100 1200
	1    0    0    -1  
$EndComp
$Comp
L TYPE-C-31-M-12:TYPE-C-31-M-12 J2
U 1 1 6112D89A
P 8700 4450
F 0 "J2" H 8700 5117 50  0000 C CNN
F 1 "TYPE-C-31-M-12" H 8700 5026 50  0000 C CNN
F 2 "HRO_TYPE-C-31-M-12:HRO_TYPE-C-31-M-12" H 8700 4450 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/lcsc/1811131825_Korean-Hroparts-Elec-TYPE-C-31-M-12_C165948.pdf" H 8700 4450 50  0001 L BNN
F 4 "3.31mm" H 8700 4450 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Manufacturer Recommendations" H 8700 4450 50  0001 L BNN "STANDARD"
F 6 "A" H 8700 4450 50  0001 L BNN "PARTREV"
F 7 "HRO Electronics" H 8700 4450 50  0001 L BNN "MANUFACTURER"
	1    8700 4450
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 6113282A
P 6750 4100
F 0 "JP1" H 6750 4305 50  0000 C CNN
F 1 "SolderJumper" H 6750 4214 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 6750 4100 50  0001 C CNN
F 3 "~" H 6750 4100 50  0001 C CNN
	1    6750 4100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR019
U 1 1 6116E743
P 7900 4050
F 0 "#PWR019" H 7900 3900 50  0001 C CNN
F 1 "VCC" V 7915 4177 50  0000 L CNN
F 2 "" H 7900 4050 50  0001 C CNN
F 3 "" H 7900 4050 50  0001 C CNN
	1    7900 4050
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR026
U 1 1 6116F373
P 9500 4050
F 0 "#PWR026" H 9500 3900 50  0001 C CNN
F 1 "VCC" V 9515 4178 50  0000 L CNN
F 2 "" H 9500 4050 50  0001 C CNN
F 3 "" H 9500 4050 50  0001 C CNN
	1    9500 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 6116FC1F
P 7900 4850
F 0 "#PWR020" H 7900 4600 50  0001 C CNN
F 1 "GND" V 7905 4722 50  0000 R CNN
F 2 "" H 7900 4850 50  0001 C CNN
F 3 "" H 7900 4850 50  0001 C CNN
	1    7900 4850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6117066A
P 9500 4850
F 0 "#PWR027" H 9500 4600 50  0001 C CNN
F 1 "GND" V 9505 4722 50  0000 R CNN
F 2 "" H 9500 4850 50  0001 C CNN
F 3 "" H 9500 4850 50  0001 C CNN
	1    9500 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 61170DB1
P 8700 5250
F 0 "#PWR025" H 8700 5000 50  0001 C CNN
F 1 "GND" H 8705 5077 50  0000 C CNN
F 2 "" H 8700 5250 50  0001 C CNN
F 3 "" H 8700 5250 50  0001 C CNN
	1    8700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5150 8450 5250
Wire Wire Line
	8450 5250 8600 5250
Wire Wire Line
	8950 5250 8950 5150
Connection ~ 8700 5250
Wire Wire Line
	8700 5250 8800 5250
Wire Wire Line
	8800 5150 8800 5250
Connection ~ 8800 5250
Wire Wire Line
	8800 5250 8950 5250
Wire Wire Line
	8600 5150 8600 5250
Connection ~ 8600 5250
Wire Wire Line
	8600 5250 8700 5250
Wire Wire Line
	7900 4050 8000 4050
Wire Wire Line
	9400 4050 9500 4050
Wire Wire Line
	9400 4850 9500 4850
Wire Wire Line
	7900 4850 8000 4850
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 6118262C
P 6750 4700
F 0 "JP3" H 6750 4905 50  0000 C CNN
F 1 "SolderJumper" H 6750 4814 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 6750 4700 50  0001 C CNN
F 3 "~" H 6750 4700 50  0001 C CNN
	1    6750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4100 6600 4100
Wire Wire Line
	6550 4400 6600 4400
Wire Wire Line
	6550 4700 6600 4700
Wire Wire Line
	6550 5000 6600 5000
Wire Wire Line
	6900 4100 7050 4100
Wire Wire Line
	7050 4100 7050 4250
Wire Wire Line
	7050 4400 6900 4400
Wire Wire Line
	6900 4700 7050 4700
Wire Wire Line
	7050 4700 7050 4850
Wire Wire Line
	8000 4350 7300 4350
Wire Wire Line
	7300 4350 7300 4250
Wire Wire Line
	7300 4250 7050 4250
Connection ~ 7050 4250
Wire Wire Line
	7050 4250 7050 4400
Wire Wire Line
	8000 4450 7300 4450
Wire Wire Line
	7300 4450 7300 4850
Wire Wire Line
	7300 4850 7050 4850
Connection ~ 7050 4850
Wire Wire Line
	7050 4850 7050 5000
$Comp
L Jumper:SolderJumper_2_Open JP8
U 1 1 611A3587
P 10550 4400
F 0 "JP8" H 10550 4605 50  0000 C CNN
F 1 "SolderJumper" H 10550 4514 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 10550 4400 50  0001 C CNN
F 3 "~" H 10550 4400 50  0001 C CNN
	1    10550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 5000 10700 5000
Wire Wire Line
	10750 4700 10700 4700
Wire Wire Line
	10750 4400 10700 4400
Wire Wire Line
	10750 4100 10700 4100
Wire Wire Line
	10400 5000 10250 5000
Wire Wire Line
	10250 5000 10250 4850
Wire Wire Line
	10250 4700 10400 4700
Wire Wire Line
	10400 4400 10250 4400
Wire Wire Line
	10250 4400 10250 4250
Wire Wire Line
	10250 4100 10400 4100
Wire Wire Line
	10000 4850 10250 4850
Connection ~ 10250 4850
Wire Wire Line
	10250 4850 10250 4700
Wire Wire Line
	10000 4250 10250 4250
Connection ~ 10250 4250
Wire Wire Line
	10250 4250 10250 4100
Wire Wire Line
	9400 4350 10000 4350
Wire Wire Line
	10000 4350 10000 4250
Wire Wire Line
	9400 4450 10000 4450
Wire Wire Line
	10000 4450 10000 4850
NoConn ~ 8000 4250
Wire Wire Line
	6550 5300 6600 5300
Wire Wire Line
	6900 5300 7400 5300
Wire Wire Line
	7400 5300 7400 4550
Wire Wire Line
	7400 4550 8000 4550
Wire Wire Line
	10750 3800 10700 3800
Wire Wire Line
	10400 3800 9900 3800
Wire Wire Line
	9900 3800 9900 4250
Wire Wire Line
	9900 4250 9400 4250
NoConn ~ 9400 4550
$Comp
L Device:Rotary_Encoder_Switch SW2
U 1 1 611CC8B9
P 7100 1900
F 0 "SW2" H 7100 2267 50  0000 C CNN
F 1 "PEC11R-4220F-S0012" H 7100 2176 50  0000 C CNN
F 2 "Bourns-PEC11R-4220F-S0012:Bourns-PEC11R-4220F-S0012-MFG" H 6950 2060 50  0001 C CNN
F 3 "https://datasheet.octopart.com/PEC11R-4220F-S0012-Bourns-datasheet-68303416.pdf" H 7100 2160 50  0001 C CNN
	1    7100 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW3
U 1 1 611CDF12
P 7100 2550
F 0 "SW3" H 7100 2917 50  0000 C CNN
F 1 "PEC11R-4220F-S0012" H 7100 2826 50  0000 C CNN
F 2 "Bourns-PEC11R-4220F-S0012:Bourns-PEC11R-4220F-S0012-MFG" H 6950 2710 50  0001 C CNN
F 3 "https://datasheet.octopart.com/PEC11R-4220F-S0012-Bourns-datasheet-68303416.pdf" H 7100 2810 50  0001 C CNN
	1    7100 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW4
U 1 1 611CEA4E
P 7100 3200
F 0 "SW4" H 7100 3567 50  0000 C CNN
F 1 "PEC11R-4220F-S0012" H 7100 3476 50  0000 C CNN
F 2 "Bourns-PEC11R-4220F-S0012:Bourns-PEC11R-4220F-S0012-MFG" H 6950 3360 50  0001 C CNN
F 3 "https://datasheet.octopart.com/PEC11R-4220F-S0012-Bourns-datasheet-68303416.pdf" H 7100 3460 50  0001 C CNN
	1    7100 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 611D8308
P 7500 1100
F 0 "#PWR015" H 7500 850 50  0001 C CNN
F 1 "GND" V 7505 972 50  0000 R CNN
F 2 "" H 7500 1100 50  0001 C CNN
F 3 "" H 7500 1100 50  0001 C CNN
	1    7500 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 611D8FD0
P 7500 1800
F 0 "#PWR016" H 7500 1550 50  0001 C CNN
F 1 "GND" V 7505 1672 50  0000 R CNN
F 2 "" H 7500 1800 50  0001 C CNN
F 3 "" H 7500 1800 50  0001 C CNN
	1    7500 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 611D963F
P 7500 2450
F 0 "#PWR017" H 7500 2200 50  0001 C CNN
F 1 "GND" V 7505 2322 50  0000 R CNN
F 2 "" H 7500 2450 50  0001 C CNN
F 3 "" H 7500 2450 50  0001 C CNN
	1    7500 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 611D9C98
P 7500 3100
F 0 "#PWR018" H 7500 2850 50  0001 C CNN
F 1 "GND" V 7505 2972 50  0000 R CNN
F 2 "" H 7500 3100 50  0001 C CNN
F 3 "" H 7500 3100 50  0001 C CNN
	1    7500 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 611DA2AE
P 6700 1200
F 0 "#PWR011" H 6700 950 50  0001 C CNN
F 1 "GND" V 6705 1072 50  0000 R CNN
F 2 "" H 6700 1200 50  0001 C CNN
F 3 "" H 6700 1200 50  0001 C CNN
	1    6700 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 611DA9D0
P 6700 1900
F 0 "#PWR012" H 6700 1650 50  0001 C CNN
F 1 "GND" V 6705 1772 50  0000 R CNN
F 2 "" H 6700 1900 50  0001 C CNN
F 3 "" H 6700 1900 50  0001 C CNN
	1    6700 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 611DAF5D
P 6700 2550
F 0 "#PWR013" H 6700 2300 50  0001 C CNN
F 1 "GND" V 6705 2422 50  0000 R CNN
F 2 "" H 6700 2550 50  0001 C CNN
F 3 "" H 6700 2550 50  0001 C CNN
	1    6700 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 611DB327
P 6700 3200
F 0 "#PWR014" H 6700 2950 50  0001 C CNN
F 1 "GND" V 6705 3072 50  0000 R CNN
F 2 "" H 6700 3200 50  0001 C CNN
F 3 "" H 6700 3200 50  0001 C CNN
	1    6700 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 1200 6800 1200
Wire Wire Line
	7400 1100 7500 1100
Wire Wire Line
	7400 1800 7500 1800
Wire Wire Line
	6700 1900 6800 1900
Wire Wire Line
	6700 2550 6800 2550
Wire Wire Line
	6700 3200 6800 3200
Wire Wire Line
	7400 2450 7500 2450
Wire Wire Line
	7400 3100 7500 3100
Wire Wire Line
	7400 1300 7500 1300
Wire Wire Line
	7400 2000 7500 2000
Wire Wire Line
	7400 2650 7500 2650
Wire Wire Line
	7400 3300 7500 3300
Wire Wire Line
	6700 1100 6800 1100
Wire Wire Line
	6700 1300 6800 1300
Wire Wire Line
	6700 1800 6800 1800
Wire Wire Line
	6700 2000 6800 2000
Wire Wire Line
	6700 2450 6800 2450
Wire Wire Line
	6700 2650 6800 2650
Wire Wire Line
	6650 3100 6800 3100
Wire Wire Line
	6650 3300 6800 3300
$Comp
L Connector_Generic:Conn_01x13 J3
U 1 1 61285557
P 8850 1500
F 0 "J3" H 8930 1542 50  0000 L CNN
F 1 "Conn_01x13" H 8930 1451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x13_P2.54mm_Vertical" H 8850 1500 50  0001 C CNN
F 3 "~" H 8850 1500 50  0001 C CNN
	1    8850 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 61289C4F
P 8550 900
F 0 "#PWR021" H 8550 650 50  0001 C CNN
F 1 "GND" V 8555 772 50  0000 R CNN
F 2 "" H 8550 900 50  0001 C CNN
F 3 "" H 8550 900 50  0001 C CNN
	1    8550 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 900  8650 900 
Wire Wire Line
	8550 1000 8650 1000
Wire Wire Line
	8550 1100 8650 1100
Wire Wire Line
	8550 1200 8650 1200
Wire Wire Line
	8550 1300 8650 1300
Wire Wire Line
	8550 1400 8650 1400
Wire Wire Line
	8550 1500 8650 1500
Wire Wire Line
	8550 1600 8650 1600
Wire Wire Line
	8550 1700 8650 1700
Wire Wire Line
	8550 1800 8650 1800
Wire Wire Line
	8550 1900 8650 1900
Wire Wire Line
	8550 2000 8650 2000
Wire Wire Line
	8550 2100 8650 2100
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 613021A3
P 8850 2900
F 0 "J5" H 8930 2892 50  0000 L CNN
F 1 "Conn_01x04" H 8930 2801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8850 2900 50  0001 C CNN
F 3 "~" H 8850 2900 50  0001 C CNN
	1    8850 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 613031C0
P 8850 2400
F 0 "J4" H 8930 2392 50  0000 L CNN
F 1 "Conn_01x04" H 8930 2301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8850 2400 50  0001 C CNN
F 3 "~" H 8850 2400 50  0001 C CNN
	1    8850 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 613043F8
P 8550 2300
F 0 "#PWR022" H 8550 2050 50  0001 C CNN
F 1 "GND" V 8555 2172 50  0000 R CNN
F 2 "" H 8550 2300 50  0001 C CNN
F 3 "" H 8550 2300 50  0001 C CNN
	1    8550 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 6130498C
P 8550 2800
F 0 "#PWR023" H 8550 2550 50  0001 C CNN
F 1 "GND" V 8555 2672 50  0000 R CNN
F 2 "" H 8550 2800 50  0001 C CNN
F 3 "" H 8550 2800 50  0001 C CNN
	1    8550 2800
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR024
U 1 1 613057E4
P 8550 3100
F 0 "#PWR024" H 8550 2950 50  0001 C CNN
F 1 "VCC" V 8565 3227 50  0000 L CNN
F 2 "" H 8550 3100 50  0001 C CNN
F 3 "" H 8550 3100 50  0001 C CNN
	1    8550 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8550 2300 8650 2300
Wire Wire Line
	8550 2400 8650 2400
Wire Wire Line
	8550 2500 8650 2500
Wire Wire Line
	8550 2600 8650 2600
Wire Wire Line
	8550 2800 8650 2800
Wire Wire Line
	8550 2900 8650 2900
Wire Wire Line
	8550 3000 8650 3000
Wire Wire Line
	8550 3100 8650 3100
Wire Notes Line
	8150 750  8150 3200
Wire Notes Line
	8150 3200 9450 3200
Wire Notes Line
	9450 3200 9450 750 
Wire Notes Line
	9450 750  8150 750 
Text Notes 8150 750  0    50   ~ 0
Failsafe breakout pins
Text Notes 8950 900  0    50   ~ 0
Encoders
Text Notes 8950 2300 0    50   ~ 0
UART
Text Notes 8950 2800 0    50   ~ 0
I2C
Wire Notes Line
	11000 5550 11000 3650
Wire Notes Line
	11000 3650 6300 3650
Wire Notes Line
	6300 3650 6300 5550
Text Notes 6300 3650 0    50   ~ 0
USB C connector repurposed as communication header
Text Notes 6300 3750 0    50   ~ 10
CHOOSE PROTOCOL WITH JUMERS
Wire Notes Line
	6300 3500 7850 3500
Wire Notes Line
	7850 3500 7850 750 
Wire Notes Line
	7850 750  6300 750 
Wire Notes Line
	6300 750  6300 3500
Text Notes 6300 750  0    50   ~ 0
Encoder input
Text GLabel 6700 1100 0    50   Input ~ 0
ENC1A
Text GLabel 6700 1300 0    50   Input ~ 0
ENC1B
Text GLabel 6700 1800 0    50   Input ~ 0
ENC2A
Text GLabel 6700 2000 0    50   Input ~ 0
ENC2B
Text GLabel 6700 2450 0    50   Input ~ 0
ENC3A
Text GLabel 6700 2650 0    50   Input ~ 0
ENC3B
Text GLabel 6650 3100 0    50   Input ~ 0
ENC4A
Text GLabel 6650 3300 0    50   Input ~ 0
ENC4B
Text GLabel 7500 1300 2    50   Input ~ 0
BTN1
Text GLabel 7500 2000 2    50   Input ~ 0
BTN2
Text GLabel 7500 2650 2    50   Input ~ 0
BTN3
Text GLabel 7500 3300 2    50   Input ~ 0
BTN4
Text GLabel 8550 2400 0    50   Input ~ 0
RX
Text GLabel 8550 2500 0    50   Input ~ 0
TX
Text GLabel 8550 2600 0    50   Input ~ 0
RST
Text GLabel 8550 2900 0    50   Input ~ 0
SDA
Text GLabel 8550 3000 0    50   Input ~ 0
SCL
Text GLabel 8550 1800 0    50   Input ~ 0
BTN1
Text GLabel 8550 1900 0    50   Input ~ 0
BTN2
Text GLabel 8550 2000 0    50   Input ~ 0
BTN3
Text GLabel 8550 2100 0    50   Input ~ 0
BTN4
Text GLabel 8550 1000 0    50   Input ~ 0
ENC1A
Text GLabel 8550 1200 0    50   Input ~ 0
ENC2A
Text GLabel 8550 1400 0    50   Input ~ 0
ENC3A
Text GLabel 8550 1500 0    50   Input ~ 0
ENC3B
Text GLabel 8550 1100 0    50   Input ~ 0
ENC1B
Text GLabel 8550 1300 0    50   Input ~ 0
ENC2B
Text GLabel 8550 1600 0    50   Input ~ 0
ENC4A
Text GLabel 8550 1700 0    50   Input ~ 0
ENC4B
Text GLabel 10750 4700 2    50   Input ~ 0
TX
Text GLabel 10750 4100 2    50   Input ~ 0
RX
Text GLabel 6550 4400 0    50   Input ~ 0
TX
Text GLabel 6550 5000 0    50   Input ~ 0
RX
Text GLabel 6550 4100 0    50   Input ~ 0
SDA
Text GLabel 6550 4700 0    50   Input ~ 0
SCL
Text GLabel 10750 4400 2    50   Input ~ 0
SCL
Text GLabel 10750 5000 2    50   Input ~ 0
SDA
Text GLabel 6550 5300 0    50   Input ~ 0
RST
Wire Wire Line
	7050 5000 6900 5000
Text GLabel 10750 3800 2    50   Input ~ 0
RST
Wire Notes Line
	6300 5550 11000 5550
Text Notes 1800 6950 0    50   ~ 0
ERC Flags
Wire Notes Line
	2650 6950 1800 6950
Wire Notes Line
	2650 7600 2650 6950
Wire Notes Line
	1800 7600 2650 7600
Wire Notes Line
	1800 6950 1800 7600
Wire Wire Line
	2400 7200 2400 7350
Wire Wire Line
	2050 7200 2050 7350
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61261DA9
P 2400 7200
F 0 "#FLG0102" H 2400 7275 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 7373 50  0000 C CNN
F 2 "" H 2400 7200 50  0001 C CNN
F 3 "~" H 2400 7200 50  0001 C CNN
	1    2400 7200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61261172
P 2050 7350
F 0 "#FLG0101" H 2050 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 7523 50  0000 C CNN
F 2 "" H 2050 7350 50  0001 C CNN
F 3 "~" H 2050 7350 50  0001 C CNN
	1    2050 7350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6125F0D6
P 2400 7350
F 0 "#PWR0102" H 2400 7100 50  0001 C CNN
F 1 "GND" H 2405 7177 50  0000 C CNN
F 2 "" H 2400 7350 50  0001 C CNN
F 3 "" H 2400 7350 50  0001 C CNN
	1    2400 7350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 6125E759
P 2050 7200
F 0 "#PWR0101" H 2050 7050 50  0001 C CNN
F 1 "VCC" H 2065 7373 50  0000 C CNN
F 2 "" H 2050 7200 50  0001 C CNN
F 3 "" H 2050 7200 50  0001 C CNN
	1    2050 7200
	1    0    0    -1  
$EndComp
Text GLabel 6450 6650 2    50   Input ~ 0
RST
Text GLabel 6450 6550 2    50   Input ~ 0
SCK
Text GLabel 6450 6350 2    50   Input ~ 0
MISO
Text GLabel 6450 6450 2    50   Input ~ 0
MOSI
Text GLabel 1950 5950 1    50   Input ~ 0
RST
Text GLabel 1300 6050 1    50   Input ~ 0
XTAL2
Text GLabel 700  6050 1    50   Input ~ 0
XTAL1
Text Notes 3600 5700 0    50   ~ 0
Power LED
Wire Notes Line
	4900 5700 3600 5700
Wire Notes Line
	4900 7250 4900 5700
Wire Notes Line
	3600 7250 4900 7250
Wire Notes Line
	3600 5700 3600 7250
$Comp
L Device:LED D1
U 1 1 6113FB23
P 3700 6700
F 0 "D1" V 3739 6582 50  0000 R CNN
F 1 "17-21/BHC-XL2M2TY/3T" V 3648 6582 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 3700 6700 50  0001 C CNN
F 3 "~" H 3700 6700 50  0001 C CNN
	1    3700 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6114AFDD
P 3700 6250
F 0 "R2" H 3630 6204 50  0000 R CNN
F 1 "200" H 3630 6295 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3630 6250 50  0001 C CNN
F 3 "~" H 3700 6250 50  0001 C CNN
	1    3700 6250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 61161984
P 3700 7000
F 0 "#PWR08" H 3700 6750 50  0001 C CNN
F 1 "GND" H 3705 6827 50  0000 C CNN
F 2 "" H 3700 7000 50  0001 C CNN
F 3 "" H 3700 7000 50  0001 C CNN
	1    3700 7000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 6116263D
P 3700 5950
F 0 "#PWR07" H 3700 5800 50  0001 C CNN
F 1 "VCC" H 3715 6123 50  0000 C CNN
F 2 "" H 3700 5950 50  0001 C CNN
F 3 "" H 3700 5950 50  0001 C CNN
	1    3700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5950 3700 6100
Wire Wire Line
	3700 6400 3700 6550
Wire Wire Line
	3700 6850 3700 7000
Text Notes 1800 5700 0    50   ~ 0
Reset pullup
Text Notes 650  1400 0    50   ~ 0
ATmega decoupling 1
Wire Notes Line
	2200 5700 1800 5700
Wire Notes Line
	2200 6800 2200 5700
Wire Notes Line
	1800 6800 2200 6800
Wire Notes Line
	1800 5700 1800 6800
Wire Notes Line
	1150 1400 650  1400
Wire Notes Line
	1150 2500 1150 1400
Wire Notes Line
	650  2500 1150 2500
Wire Notes Line
	650  1400 650  2500
Text Notes 550  5700 0    50   ~ 0
ATmega oscillator
Wire Notes Line
	1600 5700 550  5700
Wire Notes Line
	1600 7100 1600 5700
Wire Notes Line
	550  7100 1600 7100
Wire Notes Line
	550  5700 550  7100
Text Notes 5100 5700 0    50   ~ 0
ICSP Flashing Header
Wire Notes Line
	6800 5700 5100 5700
Wire Notes Line
	6800 7350 6800 5700
Wire Notes Line
	5100 7350 6800 7350
Wire Notes Line
	5100 5700 5100 7350
Wire Wire Line
	1950 5950 1950 6050
Wire Wire Line
	1950 6350 1950 6450
$Comp
L power:VCC #PWR04
U 1 1 61167C00
P 1950 6450
F 0 "#PWR04" H 1950 6300 50  0001 C CNN
F 1 "VCC" H 1965 6623 50  0000 C CNN
F 2 "" H 1950 6450 50  0001 C CNN
F 3 "" H 1950 6450 50  0001 C CNN
	1    1950 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 6650 6450 6650
$Comp
L Device:R R1
U 1 1 611669B4
P 1950 6200
F 0 "R1" H 2020 6246 50  0000 L CNN
F 1 "10k" H 2020 6155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1880 6200 50  0001 C CNN
F 3 "~" H 1950 6200 50  0001 C CNN
	1    1950 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6550 6450 6550
Wire Wire Line
	6350 6450 6450 6450
Wire Wire Line
	6350 6350 6450 6350
Wire Wire Line
	5850 6950 5850 7050
Wire Wire Line
	5850 5950 5850 6050
$Comp
L power:GND #PWR010
U 1 1 6116239D
P 5850 7050
F 0 "#PWR010" H 5850 6800 50  0001 C CNN
F 1 "GND" H 5855 6877 50  0000 C CNN
F 2 "" H 5850 7050 50  0001 C CNN
F 3 "" H 5850 7050 50  0001 C CNN
	1    5850 7050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 61161D0D
P 5850 5950
F 0 "#PWR09" H 5850 5800 50  0001 C CNN
F 1 "VCC" H 5865 6123 50  0000 C CNN
F 2 "" H 5850 5950 50  0001 C CNN
F 3 "" H 5850 5950 50  0001 C CNN
	1    5850 5950
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 61134728
P 5950 6550
F 0 "J1" H 5621 6646 50  0000 R CNN
F 1 "AVR-ISP-6" H 5621 6555 50  0000 R CNN
F 2 "AVR-ISP:AVR-ISP" V 5700 6600 50  0001 C CNN
F 3 " ~" H 4675 6000 50  0001 C CNN
	1    5950 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 6113484F
P 1000 6300
F 0 "Y1" H 1000 6568 50  0000 C CNN
F 1 "16MHz" H 1000 6477 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD_HandSoldering" H 1000 6300 50  0001 C CNN
F 3 "~" H 1000 6300 50  0001 C CNN
	1    1000 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6113DC2F
P 700 6550
F 0 "C1" H 815 6596 50  0000 L CNN
F 1 "22p" H 815 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 738 6400 50  0001 C CNN
F 3 "~" H 700 6550 50  0001 C CNN
	1    700  6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 611448F1
P 1300 6550
F 0 "C2" H 1415 6596 50  0000 L CNN
F 1 "22p" H 1415 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1338 6400 50  0001 C CNN
F 3 "~" H 1300 6550 50  0001 C CNN
	1    1300 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 611452AB
P 1000 6800
F 0 "#PWR01" H 1000 6550 50  0001 C CNN
F 1 "GND" H 1005 6627 50  0000 C CNN
F 2 "" H 1000 6800 50  0001 C CNN
F 3 "" H 1000 6800 50  0001 C CNN
	1    1000 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  6300 700  6400
Wire Wire Line
	1300 6300 1300 6400
Wire Wire Line
	700  6700 700  6800
Wire Wire Line
	700  6800 1000 6800
Wire Wire Line
	1300 6800 1300 6700
Wire Wire Line
	1000 6800 1300 6800
Connection ~ 1000 6800
Wire Wire Line
	700  6300 850  6300
Wire Wire Line
	1150 6300 1300 6300
Wire Wire Line
	700  6050 700  6300
Connection ~ 700  6300
Wire Wire Line
	1300 6050 1300 6300
Connection ~ 1300 6300
Wire Wire Line
	800  2100 800  2200
Wire Wire Line
	800  1700 800  1800
$Comp
L Device:C C3
U 1 1 6115564D
P 800 1950
F 0 "C3" H 915 1996 50  0000 L CNN
F 1 "100n" H 915 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 838 1800 50  0001 C CNN
F 3 "~" H 800 1950 50  0001 C CNN
	1    800  1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 61155121
P 800 2200
F 0 "#PWR06" H 800 1950 50  0001 C CNN
F 1 "GND" H 805 2027 50  0000 C CNN
F 2 "" H 800 2200 50  0001 C CNN
F 3 "" H 800 2200 50  0001 C CNN
	1    800  2200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 61154991
P 800 1700
F 0 "#PWR05" H 800 1550 50  0001 C CNN
F 1 "VCC" H 815 1873 50  0000 C CNN
F 2 "" H 800 1700 50  0001 C CNN
F 3 "" H 800 1700 50  0001 C CNN
	1    800  1700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP2
U 1 1 611AC9C3
P 6750 4400
F 0 "JP2" H 6750 4605 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 6750 4514 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 6750 4400 50  0001 C CNN
F 3 "~" H 6750 4400 50  0001 C CNN
	1    6750 4400
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP4
U 1 1 611AE464
P 6750 5000
F 0 "JP4" H 6750 5205 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 6750 5114 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 6750 5000 50  0001 C CNN
F 3 "~" H 6750 5000 50  0001 C CNN
	1    6750 5000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP5
U 1 1 611AECF9
P 6750 5300
F 0 "JP5" H 6750 5505 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 6750 5414 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 6750 5300 50  0001 C CNN
F 3 "~" H 6750 5300 50  0001 C CNN
	1    6750 5300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP6
U 1 1 611AF363
P 10550 3800
F 0 "JP6" H 10550 4005 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 10550 3914 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 10550 3800 50  0001 C CNN
F 3 "~" H 10550 3800 50  0001 C CNN
	1    10550 3800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP7
U 1 1 611B0523
P 10550 4100
F 0 "JP7" H 10550 4305 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 10550 4214 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 10550 4100 50  0001 C CNN
F 3 "~" H 10550 4100 50  0001 C CNN
	1    10550 4100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP9
U 1 1 611B0A60
P 10550 4700
F 0 "JP9" H 10550 4905 50  0000 C CNN
F 1 "SolderJumper_Bridged" H 10550 4814 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 10550 4700 50  0001 C CNN
F 3 "~" H 10550 4700 50  0001 C CNN
	1    10550 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP10
U 1 1 611A3577
P 10550 5000
F 0 "JP10" H 10550 5205 50  0000 C CNN
F 1 "SolderJumper" H 10550 5114 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 10550 5000 50  0001 C CNN
F 3 "~" H 10550 5000 50  0001 C CNN
	1    10550 5000
	1    0    0    -1  
$EndComp
Text GLabel 2600 6050 0    50   Input ~ 0
RST
Wire Wire Line
	2600 6050 2700 6050
Wire Wire Line
	3100 6050 3200 6050
$Comp
L power:GND #PWR0103
U 1 1 612E73C3
P 3200 6050
F 0 "#PWR0103" H 3200 5800 50  0001 C CNN
F 1 "GND" H 3205 5877 50  0000 C CNN
F 2 "" H 3200 6050 50  0001 C CNN
F 3 "" H 3200 6050 50  0001 C CNN
	1    3200 6050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 6132D0B4
P 2900 6050
F 0 "SW5" H 2900 6335 50  0000 C CNN
F 1 "SW_Push" H 2900 6244 50  0000 C CNN
F 2 "SKRKAEE020:SKRKAEE020" H 2900 6250 50  0001 C CNN
F 3 "~" H 2900 6250 50  0001 C CNN
	1    2900 6050
	1    0    0    -1  
$EndComp
Wire Notes Line
	2350 5700 2350 6200
Wire Notes Line
	2350 6200 3450 6200
Wire Notes Line
	3450 6200 3450 5700
Wire Notes Line
	3450 5700 2350 5700
Text Notes 2350 5700 0    50   ~ 0
Reset button
$Comp
L MCU_Microchip_ATmega:ATmega328PB-AU U1
U 1 1 61C8D3E7
P 2250 2500
F 0 "U1" H 2200 2600 50  0000 C CNN
F 1 "ATmega328PB-AU" H 2150 2500 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2250 2500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001906C.pdf" H 2250 2500 50  0001 C CNN
	1    2250 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61C958B0
P 2250 4100
F 0 "#PWR03" H 2250 3850 50  0001 C CNN
F 1 "GND" H 2255 3927 50  0000 C CNN
F 2 "" H 2250 4100 50  0001 C CNN
F 3 "" H 2250 4100 50  0001 C CNN
	1    2250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4000 2250 4100
$Comp
L power:VCC #PWR02
U 1 1 61CA7464
P 2250 900
F 0 "#PWR02" H 2250 750 50  0001 C CNN
F 1 "VCC" H 2265 1073 50  0000 C CNN
F 2 "" H 2250 900 50  0001 C CNN
F 3 "" H 2250 900 50  0001 C CNN
	1    2250 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 900  2250 950 
Wire Wire Line
	2250 950  2350 950 
Wire Wire Line
	2350 950  2350 1000
Connection ~ 2250 950 
Wire Wire Line
	2250 950  2250 1000
Wire Wire Line
	2850 1900 2950 1900
Wire Wire Line
	2850 2000 2950 2000
Wire Wire Line
	2850 2800 2950 2800
Wire Wire Line
	2850 1600 2950 1600
Wire Wire Line
	2850 1700 2950 1700
Wire Wire Line
	2850 1800 2950 1800
Wire Wire Line
	2850 3000 2950 3000
Wire Wire Line
	2850 3100 2950 3100
Wire Wire Line
	2850 2700 2950 2700
Wire Wire Line
	2850 2600 2950 2600
Wire Wire Line
	2850 2200 2950 2200
Wire Wire Line
	2850 2300 2950 2300
Wire Wire Line
	2850 2400 2950 2400
Wire Wire Line
	2850 2500 2950 2500
Wire Wire Line
	2850 1300 2950 1300
Wire Wire Line
	2850 1400 2950 1400
Wire Wire Line
	2850 3200 2950 3200
Wire Wire Line
	2850 3300 2950 3300
Wire Wire Line
	2850 3400 2950 3400
Wire Wire Line
	2850 3500 2950 3500
Wire Wire Line
	2850 3600 2950 3600
Wire Wire Line
	2850 3700 2950 3700
Text GLabel 2950 1300 2    50   Input ~ 0
ENC4A
Text GLabel 2950 1400 2    50   Input ~ 0
ENC4B
Text GLabel 2950 1600 2    50   Input ~ 0
MOSI
Text GLabel 2950 1700 2    50   Input ~ 0
MISO
Text GLabel 2950 1800 2    50   Input ~ 0
SCK
Text GLabel 2950 1900 2    50   Input ~ 0
XTAL1
Text GLabel 2950 2000 2    50   Input ~ 0
XTAL2
Text GLabel 2950 2200 2    50   Input ~ 0
BTN1
Text GLabel 2950 2300 2    50   Input ~ 0
BTN2
Text GLabel 2950 2400 2    50   Input ~ 0
BTN3
Text GLabel 2950 2500 2    50   Input ~ 0
BTN4
Text GLabel 2950 2600 2    50   Input ~ 0
SDA
Text GLabel 2950 2700 2    50   Input ~ 0
SCL
Text GLabel 2950 2800 2    50   Input ~ 0
RST
Text GLabel 2950 3100 2    50   Input ~ 0
TX
Text GLabel 2950 3200 2    50   Input ~ 0
ENC1A
Text GLabel 2950 3300 2    50   Input ~ 0
ENC1B
Text GLabel 2950 3400 2    50   Input ~ 0
ENC2A
Text GLabel 2950 3500 2    50   Input ~ 0
ENC2B
Text GLabel 2950 3600 2    50   Input ~ 0
ENC3A
Text GLabel 2950 3700 2    50   Input ~ 0
ENC3B
Text GLabel 2950 3000 2    50   Input ~ 0
RX
NoConn ~ 1650 3000
NoConn ~ 1650 3200
NoConn ~ 1650 3100
NoConn ~ 1650 3300
NoConn ~ 1650 1300
Text Notes 3600 3950 0    50   ~ 0
Status LED
Wire Notes Line
	4900 3950 3600 3950
Wire Notes Line
	4900 5500 4900 3950
Wire Notes Line
	3600 5500 4900 5500
Wire Notes Line
	3600 3950 3600 5500
$Comp
L Device:LED D2
U 1 1 61D1A3B1
P 3700 4950
F 0 "D2" V 3739 4832 50  0000 R CNN
F 1 "17-21/BHC-XL2M2TY/3T" V 3648 4832 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 3700 4950 50  0001 C CNN
F 3 "~" H 3700 4950 50  0001 C CNN
	1    3700 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 61D1A3B7
P 3700 4500
F 0 "R3" H 3630 4454 50  0000 R CNN
F 1 "200" H 3630 4545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3630 4500 50  0001 C CNN
F 3 "~" H 3700 4500 50  0001 C CNN
	1    3700 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 61D1A3BD
P 3700 5250
F 0 "#PWR028" H 3700 5000 50  0001 C CNN
F 1 "GND" H 3705 5077 50  0000 C CNN
F 2 "" H 3700 5250 50  0001 C CNN
F 3 "" H 3700 5250 50  0001 C CNN
	1    3700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4200 3700 4350
Wire Wire Line
	3700 4650 3700 4800
Wire Wire Line
	3700 5100 3700 5250
Text GLabel 3700 4200 1    50   Input ~ 0
LED
Text GLabel 2950 1500 2    50   Input ~ 0
LED
Wire Wire Line
	2850 1500 2950 1500
Text Notes 650  2600 0    50   ~ 0
ATmega decoupling 2
Wire Notes Line
	1150 2600 650  2600
Wire Notes Line
	1150 3700 1150 2600
Wire Notes Line
	650  3700 1150 3700
Wire Notes Line
	650  2600 650  3700
Wire Wire Line
	800  3300 800  3400
Wire Wire Line
	800  2900 800  3000
$Comp
L Device:C C4
U 1 1 611FCAF6
P 800 3150
F 0 "C4" H 915 3196 50  0000 L CNN
F 1 "100n" H 915 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 838 3000 50  0001 C CNN
F 3 "~" H 800 3150 50  0001 C CNN
	1    800  3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 611FCAFC
P 800 3400
F 0 "#PWR0104" H 800 3150 50  0001 C CNN
F 1 "GND" H 805 3227 50  0000 C CNN
F 2 "" H 800 3400 50  0001 C CNN
F 3 "" H 800 3400 50  0001 C CNN
	1    800  3400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 611FCB02
P 800 2900
F 0 "#PWR0105" H 800 2750 50  0001 C CNN
F 1 "VCC" H 815 3073 50  0000 C CNN
F 2 "" H 800 2900 50  0001 C CNN
F 3 "" H 800 2900 50  0001 C CNN
	1    800  2900
	1    0    0    -1  
$EndComp
Text GLabel 1750 5350 0    50   Input ~ 0
RX
Text GLabel 800  5400 0    50   Input ~ 0
SDA
Text GLabel 800  5250 0    50   Input ~ 0
SCL
$Comp
L Device:R R6
U 1 1 612D3AC9
P 1850 5050
F 0 "R6" H 1920 5096 50  0000 L CNN
F 1 "10k" H 1920 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1780 5050 50  0001 C CNN
F 3 "~" H 1850 5050 50  0001 C CNN
	1    1850 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 612D449E
P 900 5000
F 0 "R4" H 970 5046 50  0000 L CNN
F 1 "10k" H 970 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 830 5000 50  0001 C CNN
F 3 "~" H 900 5000 50  0001 C CNN
	1    900  5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 612D4F68
P 1200 5000
F 0 "R5" H 1270 5046 50  0000 L CNN
F 1 "10k" H 1270 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1130 5000 50  0001 C CNN
F 3 "~" H 1200 5000 50  0001 C CNN
	1    1200 5000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR029
U 1 1 612D5381
P 900 4750
F 0 "#PWR029" H 900 4600 50  0001 C CNN
F 1 "VCC" H 915 4923 50  0000 C CNN
F 2 "" H 900 4750 50  0001 C CNN
F 3 "" H 900 4750 50  0001 C CNN
	1    900  4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR030
U 1 1 612D5F66
P 1200 4750
F 0 "#PWR030" H 1200 4600 50  0001 C CNN
F 1 "VCC" H 1215 4923 50  0000 C CNN
F 2 "" H 1200 4750 50  0001 C CNN
F 3 "" H 1200 4750 50  0001 C CNN
	1    1200 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR031
U 1 1 612D627E
P 1850 4800
F 0 "#PWR031" H 1850 4650 50  0001 C CNN
F 1 "VCC" H 1865 4973 50  0000 C CNN
F 2 "" H 1850 4800 50  0001 C CNN
F 3 "" H 1850 4800 50  0001 C CNN
	1    1850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  5250 900  5250
Wire Wire Line
	900  5250 900  5150
Wire Wire Line
	800  5400 1200 5400
Wire Wire Line
	1200 5400 1200 5150
Wire Wire Line
	900  4750 900  4850
Wire Wire Line
	1200 4750 1200 4850
Wire Wire Line
	1750 5350 1850 5350
Wire Wire Line
	1850 5350 1850 5200
Wire Wire Line
	1850 4800 1850 4900
Wire Notes Line
	550  5500 1450 5500
Wire Notes Line
	1450 5500 1450 4500
Wire Notes Line
	1450 4500 550  4500
Wire Notes Line
	550  4500 550  5500
Wire Notes Line
	1550 5500 2100 5500
Wire Notes Line
	2100 5500 2100 4500
Wire Notes Line
	2100 4500 1550 4500
Wire Notes Line
	1550 4500 1550 5500
Text Notes 550  4500 0    50   ~ 0
I2C Pull-Ups
Text Notes 1550 4500 0    50   ~ 0
UART Pull-Up
$EndSCHEMATC

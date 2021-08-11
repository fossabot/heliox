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
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 61124B57
P 1800 2500
F 0 "U1" H 1800 2650 50  0000 C CNN
F 1 "ATmega328P-AU" H 1750 2550 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 1800 2500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1800 2500 50  0001 C CNN
	1    1800 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 6112A1C1
P 7100 1450
F 0 "SW1" H 7100 1817 50  0000 C CNN
F 1 "PEC11R-4220F-S0012" H 7100 1726 50  0000 C CNN
F 2 "Bourns-PEC11R-4220F-S0012:Bourns-PEC11R-4220F-S0012-MFG" H 6950 1610 50  0001 C CNN
F 3 "https://datasheet.octopart.com/PEC11R-4220F-S0012-Bourns-datasheet-68303416.pdf" H 7100 1710 50  0001 C CNN
	1    7100 1450
	1    0    0    -1  
$EndComp
$Comp
L TYPE-C-31-M-12:TYPE-C-31-M-12 J2
U 1 1 6112D89A
P 8700 4700
F 0 "J2" H 8700 5367 50  0000 C CNN
F 1 "TYPE-C-31-M-12" H 8700 5276 50  0000 C CNN
F 2 "HRO_TYPE-C-31-M-12:HRO_TYPE-C-31-M-12" H 8700 4700 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/lcsc/1811131825_Korean-Hroparts-Elec-TYPE-C-31-M-12_C165948.pdf" H 8700 4700 50  0001 L BNN
F 4 "3.31mm" H 8700 4700 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Manufacturer Recommendations" H 8700 4700 50  0001 L BNN "STANDARD"
F 6 "A" H 8700 4700 50  0001 L BNN "PARTREV"
F 7 "HRO Electronics" H 8700 4700 50  0001 L BNN "MANUFACTURER"
	1    8700 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 6113282A
P 6750 4350
F 0 "JP1" H 6750 4555 50  0000 C CNN
F 1 "SolderJumper" H 6750 4464 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 6750 4350 50  0001 C CNN
F 3 "~" H 6750 4350 50  0001 C CNN
	1    6750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1900 2500 1900
Wire Wire Line
	2400 2000 2500 2000
$Comp
L power:VCC #PWR02
U 1 1 61153B27
P 1800 900
F 0 "#PWR02" H 1800 750 50  0001 C CNN
F 1 "VCC" H 1815 1073 50  0000 C CNN
F 2 "" H 1800 900 50  0001 C CNN
F 3 "" H 1800 900 50  0001 C CNN
	1    1800 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 900  1800 950 
Wire Wire Line
	1800 950  1900 950 
Wire Wire Line
	1900 950  1900 1000
Connection ~ 1800 950 
Wire Wire Line
	1800 950  1800 1000
$Comp
L power:VCC #PWR05
U 1 1 61154991
P 2600 6250
F 0 "#PWR05" H 2600 6100 50  0001 C CNN
F 1 "VCC" H 2615 6423 50  0000 C CNN
F 2 "" H 2600 6250 50  0001 C CNN
F 3 "" H 2600 6250 50  0001 C CNN
	1    2600 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 61155121
P 2600 6750
F 0 "#PWR06" H 2600 6500 50  0001 C CNN
F 1 "GND" H 2605 6577 50  0000 C CNN
F 2 "" H 2600 6750 50  0001 C CNN
F 3 "" H 2600 6750 50  0001 C CNN
	1    2600 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6115564D
P 2600 6500
F 0 "C3" H 2715 6546 50  0000 L CNN
F 1 "100n" H 2715 6455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2638 6350 50  0001 C CNN
F 3 "~" H 2600 6500 50  0001 C CNN
	1    2600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6250 2600 6350
Wire Wire Line
	2600 6650 2600 6750
$Comp
L power:GND #PWR03
U 1 1 6115A165
P 1800 4100
F 0 "#PWR03" H 1800 3850 50  0001 C CNN
F 1 "GND" H 1805 3927 50  0000 C CNN
F 2 "" H 1800 4100 50  0001 C CNN
F 3 "" H 1800 4100 50  0001 C CNN
	1    1800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4000 1800 4100
Connection ~ 1300 6550
Wire Wire Line
	1300 6300 1300 6550
Connection ~ 700  6550
Wire Wire Line
	700  6300 700  6550
Wire Wire Line
	1150 6550 1300 6550
Wire Wire Line
	700  6550 850  6550
Connection ~ 1000 7050
Wire Wire Line
	1000 7050 1300 7050
Wire Wire Line
	1300 7050 1300 6950
Wire Wire Line
	700  7050 1000 7050
Wire Wire Line
	700  6950 700  7050
Wire Wire Line
	1300 6550 1300 6650
Wire Wire Line
	700  6550 700  6650
$Comp
L power:GND #PWR01
U 1 1 611452AB
P 1000 7050
F 0 "#PWR01" H 1000 6800 50  0001 C CNN
F 1 "GND" H 1005 6877 50  0000 C CNN
F 2 "" H 1000 7050 50  0001 C CNN
F 3 "" H 1000 7050 50  0001 C CNN
	1    1000 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 611448F1
P 1300 6800
F 0 "C2" H 1415 6846 50  0000 L CNN
F 1 "22p" H 1415 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1338 6650 50  0001 C CNN
F 3 "~" H 1300 6800 50  0001 C CNN
	1    1300 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6113DC2F
P 700 6800
F 0 "C1" H 815 6846 50  0000 L CNN
F 1 "22p" H 815 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 738 6650 50  0001 C CNN
F 3 "~" H 700 6800 50  0001 C CNN
	1    700  6800
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 6113484F
P 1000 6550
F 0 "Y1" H 1000 6818 50  0000 C CNN
F 1 "16MHz" H 1000 6727 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD_HandSoldering" H 1000 6550 50  0001 C CNN
F 3 "~" H 1000 6550 50  0001 C CNN
	1    1000 6550
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 61134728
P 5950 6800
F 0 "J1" H 5621 6896 50  0000 R CNN
F 1 "AVR-ISP-6" H 5621 6805 50  0000 R CNN
F 2 "AVR-ISP:AVR-ISP" V 5700 6850 50  0001 C CNN
F 3 " ~" H 4675 6250 50  0001 C CNN
	1    5950 6800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 61161D0D
P 5850 6200
F 0 "#PWR09" H 5850 6050 50  0001 C CNN
F 1 "VCC" H 5865 6373 50  0000 C CNN
F 2 "" H 5850 6200 50  0001 C CNN
F 3 "" H 5850 6200 50  0001 C CNN
	1    5850 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 6116239D
P 5850 7300
F 0 "#PWR010" H 5850 7050 50  0001 C CNN
F 1 "GND" H 5855 7127 50  0000 C CNN
F 2 "" H 5850 7300 50  0001 C CNN
F 3 "" H 5850 7300 50  0001 C CNN
	1    5850 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6200 5850 6300
Wire Wire Line
	5850 7200 5850 7300
Wire Wire Line
	2400 2800 2500 2800
Wire Wire Line
	2400 1600 2500 1600
Wire Wire Line
	2400 1700 2500 1700
Wire Wire Line
	2400 1800 2500 1800
Wire Wire Line
	6350 6600 6450 6600
Wire Wire Line
	6350 6700 6450 6700
Wire Wire Line
	6350 6800 6450 6800
$Comp
L Device:R R1
U 1 1 611669B4
P 1950 6450
F 0 "R1" H 2020 6496 50  0000 L CNN
F 1 "10k" H 2020 6405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1880 6450 50  0001 C CNN
F 3 "~" H 1950 6450 50  0001 C CNN
	1    1950 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6900 6450 6900
$Comp
L power:VCC #PWR04
U 1 1 61167C00
P 1950 6700
F 0 "#PWR04" H 1950 6550 50  0001 C CNN
F 1 "VCC" H 1965 6873 50  0000 C CNN
F 2 "" H 1950 6700 50  0001 C CNN
F 3 "" H 1950 6700 50  0001 C CNN
	1    1950 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 6600 1950 6700
Wire Wire Line
	1950 6200 1950 6300
$Comp
L power:VCC #PWR019
U 1 1 6116E743
P 7900 4300
F 0 "#PWR019" H 7900 4150 50  0001 C CNN
F 1 "VCC" V 7915 4427 50  0000 L CNN
F 2 "" H 7900 4300 50  0001 C CNN
F 3 "" H 7900 4300 50  0001 C CNN
	1    7900 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR026
U 1 1 6116F373
P 9500 4300
F 0 "#PWR026" H 9500 4150 50  0001 C CNN
F 1 "VCC" V 9515 4428 50  0000 L CNN
F 2 "" H 9500 4300 50  0001 C CNN
F 3 "" H 9500 4300 50  0001 C CNN
	1    9500 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 6116FC1F
P 7900 5100
F 0 "#PWR020" H 7900 4850 50  0001 C CNN
F 1 "GND" V 7905 4972 50  0000 R CNN
F 2 "" H 7900 5100 50  0001 C CNN
F 3 "" H 7900 5100 50  0001 C CNN
	1    7900 5100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6117066A
P 9500 5100
F 0 "#PWR027" H 9500 4850 50  0001 C CNN
F 1 "GND" V 9505 4972 50  0000 R CNN
F 2 "" H 9500 5100 50  0001 C CNN
F 3 "" H 9500 5100 50  0001 C CNN
	1    9500 5100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 61170DB1
P 8700 5500
F 0 "#PWR025" H 8700 5250 50  0001 C CNN
F 1 "GND" H 8705 5327 50  0000 C CNN
F 2 "" H 8700 5500 50  0001 C CNN
F 3 "" H 8700 5500 50  0001 C CNN
	1    8700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5400 8450 5500
Wire Wire Line
	8450 5500 8600 5500
Wire Wire Line
	8950 5500 8950 5400
Connection ~ 8700 5500
Wire Wire Line
	8700 5500 8800 5500
Wire Wire Line
	8800 5400 8800 5500
Connection ~ 8800 5500
Wire Wire Line
	8800 5500 8950 5500
Wire Wire Line
	8600 5400 8600 5500
Connection ~ 8600 5500
Wire Wire Line
	8600 5500 8700 5500
Wire Wire Line
	7900 4300 8000 4300
Wire Wire Line
	9400 4300 9500 4300
Wire Wire Line
	9400 5100 9500 5100
Wire Wire Line
	7900 5100 8000 5100
Wire Wire Line
	2400 3000 2500 3000
Wire Wire Line
	2400 3100 2500 3100
Wire Wire Line
	2400 2700 2500 2700
Wire Wire Line
	2400 2600 2500 2600
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 6118262C
P 6750 4950
F 0 "JP3" H 6750 5155 50  0000 C CNN
F 1 "SolderJumper" H 6750 5064 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 6750 4950 50  0001 C CNN
F 3 "~" H 6750 4950 50  0001 C CNN
	1    6750 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4350 6600 4350
Wire Wire Line
	6550 4650 6600 4650
Wire Wire Line
	6550 4950 6600 4950
Wire Wire Line
	6550 5250 6600 5250
Wire Wire Line
	6900 4350 7050 4350
Wire Wire Line
	7050 4350 7050 4500
Wire Wire Line
	7050 4650 6900 4650
Wire Wire Line
	6900 4950 7050 4950
Wire Wire Line
	7050 4950 7050 5100
Wire Wire Line
	8000 4600 7300 4600
Wire Wire Line
	7300 4600 7300 4500
Wire Wire Line
	7300 4500 7050 4500
Connection ~ 7050 4500
Wire Wire Line
	7050 4500 7050 4650
Wire Wire Line
	8000 4700 7300 4700
Wire Wire Line
	7300 4700 7300 5100
Wire Wire Line
	7300 5100 7050 5100
Connection ~ 7050 5100
Wire Wire Line
	7050 5100 7050 5250
$Comp
L Jumper:SolderJumper_2_Open JP10
U 1 1 611A3577
P 10550 5250
F 0 "JP10" H 10550 5455 50  0000 C CNN
F 1 "SolderJumper" H 10550 5364 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 10550 5250 50  0001 C CNN
F 3 "~" H 10550 5250 50  0001 C CNN
	1    10550 5250
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP8
U 1 1 611A3587
P 10550 4650
F 0 "JP8" H 10550 4855 50  0000 C CNN
F 1 "SolderJumper" H 10550 4764 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 10550 4650 50  0001 C CNN
F 3 "~" H 10550 4650 50  0001 C CNN
	1    10550 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	10750 5250 10700 5250
Wire Wire Line
	10750 4950 10700 4950
Wire Wire Line
	10750 4650 10700 4650
Wire Wire Line
	10750 4350 10700 4350
Wire Wire Line
	10400 5250 10250 5250
Wire Wire Line
	10250 5250 10250 5100
Wire Wire Line
	10250 4950 10400 4950
Wire Wire Line
	10400 4650 10250 4650
Wire Wire Line
	10250 4650 10250 4500
Wire Wire Line
	10250 4350 10400 4350
Wire Wire Line
	10000 5100 10250 5100
Connection ~ 10250 5100
Wire Wire Line
	10250 5100 10250 4950
Wire Wire Line
	10000 4500 10250 4500
Connection ~ 10250 4500
Wire Wire Line
	10250 4500 10250 4350
Wire Wire Line
	9400 4600 10000 4600
Wire Wire Line
	10000 4600 10000 4500
Wire Wire Line
	9400 4700 10000 4700
Wire Wire Line
	10000 4700 10000 5100
NoConn ~ 8000 4500
Wire Wire Line
	6550 5550 6600 5550
Wire Wire Line
	6900 5550 7400 5550
Wire Wire Line
	7400 5550 7400 4800
Wire Wire Line
	7400 4800 8000 4800
Wire Wire Line
	10750 4050 10700 4050
Wire Wire Line
	10400 4050 9900 4050
Wire Wire Line
	9900 4050 9900 4500
Wire Wire Line
	9900 4500 9400 4500
NoConn ~ 9400 4800
$Comp
L Device:Rotary_Encoder_Switch SW2
U 1 1 611CC8B9
P 7100 2150
F 0 "SW2" H 7100 2517 50  0000 C CNN
F 1 "PEC11R-4220F-S0012" H 7100 2426 50  0000 C CNN
F 2 "Bourns-PEC11R-4220F-S0012:Bourns-PEC11R-4220F-S0012-MFG" H 6950 2310 50  0001 C CNN
F 3 "https://datasheet.octopart.com/PEC11R-4220F-S0012-Bourns-datasheet-68303416.pdf" H 7100 2410 50  0001 C CNN
	1    7100 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW3
U 1 1 611CDF12
P 7100 2800
F 0 "SW3" H 7100 3167 50  0000 C CNN
F 1 "PEC11R-4220F-S0012" H 7100 3076 50  0000 C CNN
F 2 "Bourns-PEC11R-4220F-S0012:Bourns-PEC11R-4220F-S0012-MFG" H 6950 2960 50  0001 C CNN
F 3 "https://datasheet.octopart.com/PEC11R-4220F-S0012-Bourns-datasheet-68303416.pdf" H 7100 3060 50  0001 C CNN
	1    7100 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW4
U 1 1 611CEA4E
P 7100 3450
F 0 "SW4" H 7100 3817 50  0000 C CNN
F 1 "PEC11R-4220F-S0012" H 7100 3726 50  0000 C CNN
F 2 "Bourns-PEC11R-4220F-S0012:Bourns-PEC11R-4220F-S0012-MFG" H 6950 3610 50  0001 C CNN
F 3 "https://datasheet.octopart.com/PEC11R-4220F-S0012-Bourns-datasheet-68303416.pdf" H 7100 3710 50  0001 C CNN
	1    7100 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 611D8308
P 7500 1350
F 0 "#PWR015" H 7500 1100 50  0001 C CNN
F 1 "GND" V 7505 1222 50  0000 R CNN
F 2 "" H 7500 1350 50  0001 C CNN
F 3 "" H 7500 1350 50  0001 C CNN
	1    7500 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 611D8FD0
P 7500 2050
F 0 "#PWR016" H 7500 1800 50  0001 C CNN
F 1 "GND" V 7505 1922 50  0000 R CNN
F 2 "" H 7500 2050 50  0001 C CNN
F 3 "" H 7500 2050 50  0001 C CNN
	1    7500 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 611D963F
P 7500 2700
F 0 "#PWR017" H 7500 2450 50  0001 C CNN
F 1 "GND" V 7505 2572 50  0000 R CNN
F 2 "" H 7500 2700 50  0001 C CNN
F 3 "" H 7500 2700 50  0001 C CNN
	1    7500 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 611D9C98
P 7500 3350
F 0 "#PWR018" H 7500 3100 50  0001 C CNN
F 1 "GND" V 7505 3222 50  0000 R CNN
F 2 "" H 7500 3350 50  0001 C CNN
F 3 "" H 7500 3350 50  0001 C CNN
	1    7500 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 611DA2AE
P 6700 1450
F 0 "#PWR011" H 6700 1200 50  0001 C CNN
F 1 "GND" V 6705 1322 50  0000 R CNN
F 2 "" H 6700 1450 50  0001 C CNN
F 3 "" H 6700 1450 50  0001 C CNN
	1    6700 1450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 611DA9D0
P 6700 2150
F 0 "#PWR012" H 6700 1900 50  0001 C CNN
F 1 "GND" V 6705 2022 50  0000 R CNN
F 2 "" H 6700 2150 50  0001 C CNN
F 3 "" H 6700 2150 50  0001 C CNN
	1    6700 2150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 611DAF5D
P 6700 2800
F 0 "#PWR013" H 6700 2550 50  0001 C CNN
F 1 "GND" V 6705 2672 50  0000 R CNN
F 2 "" H 6700 2800 50  0001 C CNN
F 3 "" H 6700 2800 50  0001 C CNN
	1    6700 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 611DB327
P 6700 3450
F 0 "#PWR014" H 6700 3200 50  0001 C CNN
F 1 "GND" V 6705 3322 50  0000 R CNN
F 2 "" H 6700 3450 50  0001 C CNN
F 3 "" H 6700 3450 50  0001 C CNN
	1    6700 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 1450 6800 1450
Wire Wire Line
	7400 1350 7500 1350
Wire Wire Line
	7400 2050 7500 2050
Wire Wire Line
	6700 2150 6800 2150
Wire Wire Line
	6700 2800 6800 2800
Wire Wire Line
	6700 3450 6800 3450
Wire Wire Line
	7400 2700 7500 2700
Wire Wire Line
	7400 3350 7500 3350
Wire Wire Line
	7400 1550 7500 1550
Wire Wire Line
	7400 2250 7500 2250
Wire Wire Line
	7400 2900 7500 2900
Wire Wire Line
	7400 3550 7500 3550
Wire Wire Line
	2400 2200 2500 2200
Wire Wire Line
	2400 2300 2500 2300
Wire Wire Line
	2400 2400 2500 2400
Wire Wire Line
	2400 2500 2500 2500
Wire Wire Line
	6700 1350 6800 1350
Wire Wire Line
	6700 1550 6800 1550
Wire Wire Line
	6700 2050 6800 2050
Wire Wire Line
	6700 2250 6800 2250
Wire Wire Line
	6700 2700 6800 2700
Wire Wire Line
	6700 2900 6800 2900
Wire Wire Line
	6650 3350 6800 3350
Wire Wire Line
	6650 3550 6800 3550
Wire Wire Line
	2400 1300 2500 1300
Wire Wire Line
	2400 1400 2500 1400
Wire Wire Line
	2400 3200 2500 3200
Wire Wire Line
	2400 3300 2500 3300
Wire Wire Line
	2400 3400 2500 3400
Wire Wire Line
	2400 3500 2500 3500
Wire Wire Line
	2400 3600 2500 3600
Wire Wire Line
	2400 3700 2500 3700
NoConn ~ 2400 1500
NoConn ~ 1200 1600
NoConn ~ 1200 1500
NoConn ~ 1200 1300
$Comp
L Connector_Generic:Conn_01x13 J3
U 1 1 61285557
P 8850 1750
F 0 "J3" H 8930 1792 50  0000 L CNN
F 1 "Conn_01x13" H 8930 1701 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x13_P1.00mm_Vertical" H 8850 1750 50  0001 C CNN
F 3 "~" H 8850 1750 50  0001 C CNN
	1    8850 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 61289C4F
P 8550 1150
F 0 "#PWR021" H 8550 900 50  0001 C CNN
F 1 "GND" V 8555 1022 50  0000 R CNN
F 2 "" H 8550 1150 50  0001 C CNN
F 3 "" H 8550 1150 50  0001 C CNN
	1    8550 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 1150 8650 1150
Wire Wire Line
	8550 1250 8650 1250
Wire Wire Line
	8550 1350 8650 1350
Wire Wire Line
	8550 1450 8650 1450
Wire Wire Line
	8550 1550 8650 1550
Wire Wire Line
	8550 1650 8650 1650
Wire Wire Line
	8550 1750 8650 1750
Wire Wire Line
	8550 1850 8650 1850
Wire Wire Line
	8550 1950 8650 1950
Wire Wire Line
	8550 2050 8650 2050
Wire Wire Line
	8550 2150 8650 2150
Wire Wire Line
	8550 2250 8650 2250
Wire Wire Line
	8550 2350 8650 2350
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 613021A3
P 8850 3150
F 0 "J5" H 8930 3142 50  0000 L CNN
F 1 "Conn_01x04" H 8930 3051 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x04_P1.00mm_Vertical" H 8850 3150 50  0001 C CNN
F 3 "~" H 8850 3150 50  0001 C CNN
	1    8850 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 613031C0
P 8850 2650
F 0 "J4" H 8930 2642 50  0000 L CNN
F 1 "Conn_01x04" H 8930 2551 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x04_P1.00mm_Vertical" H 8850 2650 50  0001 C CNN
F 3 "~" H 8850 2650 50  0001 C CNN
	1    8850 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 613043F8
P 8550 2550
F 0 "#PWR022" H 8550 2300 50  0001 C CNN
F 1 "GND" V 8555 2422 50  0000 R CNN
F 2 "" H 8550 2550 50  0001 C CNN
F 3 "" H 8550 2550 50  0001 C CNN
	1    8550 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 6130498C
P 8550 3050
F 0 "#PWR023" H 8550 2800 50  0001 C CNN
F 1 "GND" V 8555 2922 50  0000 R CNN
F 2 "" H 8550 3050 50  0001 C CNN
F 3 "" H 8550 3050 50  0001 C CNN
	1    8550 3050
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR024
U 1 1 613057E4
P 8550 3350
F 0 "#PWR024" H 8550 3200 50  0001 C CNN
F 1 "VCC" V 8565 3477 50  0000 L CNN
F 2 "" H 8550 3350 50  0001 C CNN
F 3 "" H 8550 3350 50  0001 C CNN
	1    8550 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8550 2550 8650 2550
Wire Wire Line
	8550 2650 8650 2650
Wire Wire Line
	8550 2750 8650 2750
Wire Wire Line
	8550 2850 8650 2850
Wire Wire Line
	8550 3050 8650 3050
Wire Wire Line
	8550 3150 8650 3150
Wire Wire Line
	8550 3250 8650 3250
Wire Wire Line
	8550 3350 8650 3350
Wire Notes Line
	5100 5950 5100 7600
Wire Notes Line
	5100 7600 6800 7600
Wire Notes Line
	6800 7600 6800 5950
Wire Notes Line
	6800 5950 5100 5950
Text Notes 5100 5950 0    50   ~ 0
ICSP Flashing Header
Wire Notes Line
	550  5950 550  7350
Wire Notes Line
	550  7350 1600 7350
Wire Notes Line
	1600 7350 1600 5950
Wire Notes Line
	1600 5950 550  5950
Text Notes 550  5950 0    50   ~ 0
ATmega oscillator
Wire Notes Line
	8150 1000 8150 3450
Wire Notes Line
	8150 3450 9450 3450
Wire Notes Line
	9450 3450 9450 1000
Wire Notes Line
	9450 1000 8150 1000
Text Notes 8150 1000 0    50   ~ 0
Failsafe breakout pins
Text Notes 8950 1150 0    50   ~ 0
Encoders
Text Notes 8950 2550 0    50   ~ 0
UART
Text Notes 8950 3050 0    50   ~ 0
I2C
Wire Notes Line
	6300 5800 11000 5800
Wire Notes Line
	11000 5800 11000 3900
Wire Notes Line
	11000 3900 6300 3900
Wire Notes Line
	6300 3900 6300 5800
Text Notes 6300 3900 0    50   ~ 0
USB C connector repurposed as communication header
Text Notes 6300 4000 0    50   ~ 10
CHOOSE PROTOCOL WITH JUMERS
Wire Notes Line
	6300 3750 7850 3750
Wire Notes Line
	7850 3750 7850 1000
Wire Notes Line
	7850 1000 6300 1000
Wire Notes Line
	6300 1000 6300 3750
Text Notes 6300 1000 0    50   ~ 0
Encoder input
Wire Notes Line
	2450 5950 2450 7050
Wire Notes Line
	2450 7050 2950 7050
Wire Notes Line
	2950 7050 2950 5950
Wire Notes Line
	2950 5950 2450 5950
Wire Notes Line
	1800 5950 1800 7050
Wire Notes Line
	1800 7050 2200 7050
Wire Notes Line
	2200 7050 2200 5950
Wire Notes Line
	2200 5950 1800 5950
Text Notes 2450 5950 0    50   ~ 0
Power decoupling capacitor
Text Notes 1800 5950 0    50   ~ 0
Reset pullup
Wire Wire Line
	3700 7100 3700 7250
Wire Wire Line
	3700 6650 3700 6800
Wire Wire Line
	3700 6200 3700 6350
$Comp
L power:VCC #PWR07
U 1 1 6116263D
P 3700 6200
F 0 "#PWR07" H 3700 6050 50  0001 C CNN
F 1 "VCC" H 3715 6373 50  0000 C CNN
F 2 "" H 3700 6200 50  0001 C CNN
F 3 "" H 3700 6200 50  0001 C CNN
	1    3700 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 61161984
P 3700 7250
F 0 "#PWR08" H 3700 7000 50  0001 C CNN
F 1 "GND" H 3705 7077 50  0000 C CNN
F 2 "" H 3700 7250 50  0001 C CNN
F 3 "" H 3700 7250 50  0001 C CNN
	1    3700 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6114AFDD
P 3700 6500
F 0 "R2" H 3630 6454 50  0000 R CNN
F 1 "200" H 3630 6545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3630 6500 50  0001 C CNN
F 3 "~" H 3700 6500 50  0001 C CNN
	1    3700 6500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 6113FB23
P 3700 6950
F 0 "D1" V 3739 6832 50  0000 R CNN
F 1 "17-21/BHC-XL2M2TY/3T" V 3648 6832 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 3700 6950 50  0001 C CNN
F 3 "~" H 3700 6950 50  0001 C CNN
	1    3700 6950
	0    -1   -1   0   
$EndComp
Wire Notes Line
	3600 5950 3600 7500
Wire Notes Line
	3600 7500 4900 7500
Wire Notes Line
	4900 7500 4900 5950
Wire Notes Line
	4900 5950 3600 5950
Text Notes 3600 5950 0    50   ~ 0
Power LED
Text GLabel 2500 1300 2    50   Input ~ 0
ENC4A
Text GLabel 2500 1400 2    50   Input ~ 0
ENC4B
Text GLabel 2500 1600 2    50   Input ~ 0
MOSI
Text GLabel 2500 1700 2    50   Input ~ 0
MISO
Text GLabel 2500 1800 2    50   Input ~ 0
SCK
Text GLabel 2500 1900 2    50   Input ~ 0
XTAL1
Text GLabel 2500 2000 2    50   Input ~ 0
XTAL2
Text GLabel 2500 2200 2    50   Input ~ 0
BTN1
Text GLabel 2500 2300 2    50   Input ~ 0
BTN2
Text GLabel 2500 2400 2    50   Input ~ 0
BTN3
Text GLabel 2500 2500 2    50   Input ~ 0
BTN4
Text GLabel 2500 2600 2    50   Input ~ 0
SDA
Text GLabel 2500 2700 2    50   Input ~ 0
SCL
Text GLabel 2500 2800 2    50   Input ~ 0
RST
Text GLabel 2500 3100 2    50   Input ~ 0
TX
Text GLabel 2500 3200 2    50   Input ~ 0
ENC1A
Text GLabel 2500 3300 2    50   Input ~ 0
ENC1B
Text GLabel 2500 3400 2    50   Input ~ 0
ENC2A
Text GLabel 2500 3500 2    50   Input ~ 0
ENC2B
Text GLabel 2500 3600 2    50   Input ~ 0
ENC3A
Text GLabel 2500 3700 2    50   Input ~ 0
ENC3B
Text GLabel 6700 1350 0    50   Input ~ 0
ENC1A
Text GLabel 6700 1550 0    50   Input ~ 0
ENC1B
Text GLabel 6700 2050 0    50   Input ~ 0
ENC2A
Text GLabel 6700 2250 0    50   Input ~ 0
ENC2B
Text GLabel 6700 2700 0    50   Input ~ 0
ENC3A
Text GLabel 6700 2900 0    50   Input ~ 0
ENC3B
Text GLabel 6650 3350 0    50   Input ~ 0
ENC4A
Text GLabel 6650 3550 0    50   Input ~ 0
ENC4B
Text GLabel 7500 1550 2    50   Input ~ 0
BTN1
Text GLabel 7500 2250 2    50   Input ~ 0
BTN2
Text GLabel 7500 2900 2    50   Input ~ 0
BTN3
Text GLabel 7500 3550 2    50   Input ~ 0
BTN4
Text GLabel 2500 3000 2    50   Input ~ 0
RX
Text GLabel 8550 2650 0    50   Input ~ 0
RX
Text GLabel 8550 2750 0    50   Input ~ 0
TX
Text GLabel 8550 2850 0    50   Input ~ 0
RST
Text GLabel 8550 3150 0    50   Input ~ 0
SDA
Text GLabel 8550 3250 0    50   Input ~ 0
SCL
Text GLabel 8550 2050 0    50   Input ~ 0
BTN1
Text GLabel 8550 2150 0    50   Input ~ 0
BTN2
Text GLabel 8550 2250 0    50   Input ~ 0
BTN3
Text GLabel 8550 2350 0    50   Input ~ 0
BTN4
Text GLabel 8550 1250 0    50   Input ~ 0
ENC1A
Text GLabel 8550 1450 0    50   Input ~ 0
ENC2A
Text GLabel 8550 1650 0    50   Input ~ 0
ENC3A
Text GLabel 8550 1750 0    50   Input ~ 0
ENC3B
Text GLabel 8550 1350 0    50   Input ~ 0
ENC1B
Text GLabel 8550 1550 0    50   Input ~ 0
ENC2B
Text GLabel 8550 1850 0    50   Input ~ 0
ENC4A
Text GLabel 8550 1950 0    50   Input ~ 0
ENC4B
Text GLabel 700  6300 1    50   Input ~ 0
XTAL1
Text GLabel 1300 6300 1    50   Input ~ 0
XTAL2
Text GLabel 1950 6200 1    50   Input ~ 0
RST
Text GLabel 6450 6700 2    50   Input ~ 0
MOSI
Text GLabel 6450 6600 2    50   Input ~ 0
MISO
Text GLabel 6450 6800 2    50   Input ~ 0
SCK
Text GLabel 6450 6900 2    50   Input ~ 0
RST
Text GLabel 10750 4950 2    50   Input ~ 0
TX
Text GLabel 10750 4350 2    50   Input ~ 0
RX
Text GLabel 6550 4650 0    50   Input ~ 0
TX
Text GLabel 6550 5250 0    50   Input ~ 0
RX
Text GLabel 6550 4350 0    50   Input ~ 0
SDA
Text GLabel 6550 4950 0    50   Input ~ 0
SCL
Text GLabel 10750 4650 2    50   Input ~ 0
SCL
Text GLabel 10750 5250 2    50   Input ~ 0
SDA
Text GLabel 6550 5550 0    50   Input ~ 0
RST
Text Notes 0    150  0    79   ~ 16
Todo: add reset button, status rgb led and power led
Wire Wire Line
	7050 5250 6900 5250
$Comp
L Jumper:SolderJumper_2_Open JP6
U 1 1 611BB7CB
P 10550 4050
F 0 "JP6" H 10550 4255 50  0000 C CNN
F 1 "SolderJumper" H 10550 4164 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 10550 4050 50  0001 C CNN
F 3 "~" H 10550 4050 50  0001 C CNN
	1    10550 4050
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP9
U 1 1 611A3581
P 10550 4950
F 0 "JP9" H 10550 5155 50  0000 C CNN
F 1 "SolderJumper" H 10550 5064 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 10550 4950 50  0001 C CNN
F 3 "~" H 10550 4950 50  0001 C CNN
	1    10550 4950
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP7
U 1 1 611A358D
P 10550 4350
F 0 "JP7" H 10550 4555 50  0000 C CNN
F 1 "SolderJumper" H 10550 4464 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 10550 4350 50  0001 C CNN
F 3 "~" H 10550 4350 50  0001 C CNN
	1    10550 4350
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 611B209C
P 6750 5550
F 0 "JP5" H 6750 5755 50  0000 C CNN
F 1 "SolderJumper" H 6750 5664 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 6750 5550 50  0001 C CNN
F 3 "~" H 6750 5550 50  0001 C CNN
	1    6750 5550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 61182926
P 6750 5250
F 0 "JP4" H 6750 5455 50  0000 C CNN
F 1 "SolderJumper" H 6750 5364 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 6750 5250 50  0001 C CNN
F 3 "~" H 6750 5250 50  0001 C CNN
	1    6750 5250
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 611823D1
P 6750 4650
F 0 "JP2" H 6750 4855 50  0000 C CNN
F 1 "SolderJumper" H 6750 4764 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 6750 4650 50  0001 C CNN
F 3 "~" H 6750 4650 50  0001 C CNN
	1    6750 4650
	1    0    0    -1  
$EndComp
Text GLabel 10750 4050 2    50   Input ~ 0
RST
$EndSCHEMATC

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
P 3800 3350
F 0 "U1" H 3800 1761 50  0000 C CNN
F 1 "ATmega328P-AU" H 3800 1670 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 3800 3350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3800 3350 50  0001 C CNN
	1    3800 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 6112A1C1
P 6200 3550
F 0 "SW1" H 6200 3917 50  0000 C CNN
F 1 "PEC11R-4220F-S0012" H 6200 3826 50  0000 C CNN
F 2 "Bourns-PEC11R-4220F-S0012:Bourns-PEC11R-4220F-S0012-MFG" H 6050 3710 50  0001 C CNN
F 3 "https://datasheet.octopart.com/PEC11R-4220F-S0012-Bourns-datasheet-68303416.pdf" H 6200 3810 50  0001 C CNN
	1    6200 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 61134728
P 5350 2550
F 0 "J1" H 5021 2646 50  0000 R CNN
F 1 "AVR-ISP-6" H 5021 2555 50  0000 R CNN
F 2 "AVR-ISP:AVR-ISP" V 5100 2600 50  0001 C CNN
F 3 " ~" H 4075 2000 50  0001 C CNN
	1    5350 2550
	1    0    0    -1  
$EndComp
Text Notes 1950 1350 0    50   ~ 0
use jumper (solderswitch) to change between i2c / uart
$Comp
L TYPE-C-31-M-12:TYPE-C-31-M-12 J3
U 1 1 6112D89A
P 7750 2400
F 0 "J3" H 7750 3067 50  0000 C CNN
F 1 "TYPE-C-31-M-12" H 7750 2976 50  0000 C CNN
F 2 "HRO_TYPE-C-31-M-12:HRO_TYPE-C-31-M-12" H 7750 2400 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/lcsc/1811131825_Korean-Hroparts-Elec-TYPE-C-31-M-12_C165948.pdf" H 7750 2400 50  0001 L BNN
F 4 "3.31mm" H 7750 2400 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Manufacturer Recommendations" H 7750 2400 50  0001 L BNN "STANDARD"
F 6 "A" H 7750 2400 50  0001 L BNN "PARTREV"
F 7 "HRO Electronics" H 7750 2400 50  0001 L BNN "MANUFACTURER"
	1    7750 2400
	1    0    0    -1  
$EndComp
$EndSCHEMATC

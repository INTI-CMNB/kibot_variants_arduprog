EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Arduino UNO programmer"
Date "2020-09-09"
Rev "r1"
Comp "Arduino"
Comment1 "Just a copy of the original circuit, but not as ugly"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R3
U 1 1 5F58FB32
P 5200 3150
F 0 "R3" H 5270 3196 50  0000 L CNN
F 1 "1M" H 5270 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5130 3150 50  0001 C CNN
F 3 "~" H 5200 3150 50  0001 C CNN
F 4 "+USB,+XTAL" H 5200 3150 50  0001 C CNN "Config"
	1    5200 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F59130A
P 4500 3500
F 0 "C4" H 4615 3546 50  0000 L CNN
F 1 "22pF" H 4615 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4538 3350 50  0001 C CNN
F 3 "~" H 4500 3500 50  0001 C CNN
F 4 "+USB,+XTAL" H 4500 3500 50  0001 C CNN "Config"
	1    4500 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3050 5450 3050
Wire Wire Line
	5450 3050 5450 3000
Wire Wire Line
	5450 3000 5200 3000
Wire Wire Line
	5200 3300 5450 3300
Wire Wire Line
	5450 3300 5450 3250
Wire Wire Line
	5450 3250 5700 3250
Wire Wire Line
	5200 3300 4750 3300
Connection ~ 5200 3300
Wire Wire Line
	5200 3000 4750 3000
Connection ~ 5200 3000
$Comp
L Device:C C3
U 1 1 5F592C96
P 4050 3500
F 0 "C3" H 4165 3546 50  0000 L CNN
F 1 "22pF" H 4165 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4088 3350 50  0001 C CNN
F 3 "~" H 4050 3500 50  0001 C CNN
F 4 "+USB,+XTAL" H 4050 3500 50  0001 C CNN "Config"
	1    4050 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F593D41
P 4050 3750
F 0 "#PWR09" H 4050 3500 50  0001 C CNN
F 1 "GND" H 4055 3577 50  0000 C CNN
F 2 "" H 4050 3750 50  0001 C CNN
F 3 "" H 4050 3750 50  0001 C CNN
	1    4050 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F5943CF
P 4500 3750
F 0 "#PWR010" H 4500 3500 50  0001 C CNN
F 1 "GND" H 4505 3577 50  0000 C CNN
F 2 "" H 4500 3750 50  0001 C CNN
F 3 "" H 4500 3750 50  0001 C CNN
	1    4500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3650 4500 3750
Wire Wire Line
	4050 3650 4050 3750
$Comp
L Connector:TestPoint TP6
U 1 1 5F594E26
P 4050 2900
F 0 "TP6" H 4108 3018 50  0000 L CNN
F 1 "TestPoint" H 4108 2927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2800 4950 50  0001 C CNN
F 3 "~" H 4250 2900 50  0001 C CNN
	1    4050 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5F5964E4
P 4500 3250
F 0 "TP8" H 4300 3400 50  0000 L CNN
F 1 "TestPoint" H 4100 3300 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2800 4950 50  0001 C CNN
F 3 "~" H 4700 3250 50  0001 C CNN
	1    4500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2900 4050 3000
$Comp
L Device:Crystal Y1
U 1 1 5F598BFC
P 4750 3150
F 0 "Y1" V 4704 3281 50  0000 L CNN
F 1 "16MHz" V 4795 3281 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM3-2Pin_5.0x3.2mm" H 4750 3150 50  0001 C CNN
F 3 "https://www.foxonline.com/pdfs/C4ST.pdf" H 4750 3150 50  0001 C CNN
F 4 "Abracon LLC" V 4750 3150 50  0001 C CNN "MFN"
F 5 "ABM3-16.000MHZ-B2-T" V 4750 3150 50  0001 C CNN "MFP"
F 6 "+USB,+XTAL" H 4750 3150 50  0001 C CNN "Config"
	1    4750 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3250 4500 3300
Wire Wire Line
	4750 3300 4500 3300
Connection ~ 4750 3300
Connection ~ 4500 3300
Wire Wire Line
	4500 3300 4500 3350
Wire Wire Line
	4750 3000 4050 3000
Connection ~ 4750 3000
Connection ~ 4050 3000
Wire Wire Line
	4050 3000 4050 3350
$Comp
L Device:R R1
U 1 1 5F59F3F0
P 4250 4250
F 0 "R1" V 4150 4150 50  0000 C CNN
F 1 "22R" V 4150 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 4250 50  0001 C CNN
F 3 "~" H 4250 4250 50  0001 C CNN
F 4 "+USB" H 4250 4250 50  0001 C CNN "Config"
	1    4250 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 3450 4900 3450
Wire Wire Line
	4900 3450 4900 4250
Wire Wire Line
	4900 4250 4400 4250
Wire Wire Line
	4400 4450 5050 4450
Wire Wire Line
	5050 4450 5050 3550
Wire Wire Line
	5050 3550 5700 3550
$Comp
L Connector:USB_B J2
U 1 1 5F5A1098
P 2850 4250
F 0 "J2" H 2907 4717 50  0000 C CNN
F 1 "USB_B" H 2907 4626 50  0000 C CNN
F 2 "Connector_USB:USB_B_Lumberg_2411_02_Horizontal" H 3000 4200 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=292304&DocType=Customer+Drawing&DocLang=English" H 3000 4200 50  0001 C CNN
F 4 "TE Connectivity AMP Connectors" H 2850 4250 50  0001 C CNN "MFN"
F 5 "292304-1" H 2850 4250 50  0001 C CNN "MFP"
F 6 "+USB" H 2850 4250 50  0001 C CNN "Config"
	1    2850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4250 3600 4250
Wire Wire Line
	4100 4450 3950 4450
Wire Wire Line
	3250 4450 3250 4350
Wire Wire Line
	3250 4350 3150 4350
Wire Wire Line
	3950 4550 3950 4450
Connection ~ 3950 4450
Wire Wire Line
	3950 4450 3250 4450
$Comp
L Device:Varistor RV1
U 1 1 5F5A461F
P 3600 4700
F 0 "RV1" H 3350 4700 50  0000 L CNN
F 1 "CG0603MLC-05E" H 2950 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3530 4700 50  0001 C CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/MLC.pdf" H 3600 4700 50  0001 C CNN
F 4 "Bourns Inc." H 3600 4700 50  0001 C CNN "MFN"
F 5 "CG0603MLC-05E" H 3600 4700 50  0001 C CNN "MFP"
F 6 "+USB" H 3600 4700 50  0001 C CNN "Config"
	1    3600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4550 3600 4250
Connection ~ 3600 4250
Wire Wire Line
	3600 4250 4100 4250
$Comp
L Device:Ferrite_Bead FB1
U 1 1 5F5A5E4B
P 3800 5150
F 0 "FB1" H 3937 5196 50  0000 L CNN
F 1 "BLM21PG221SN1D" H 3937 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3730 5150 50  0001 C CNN
F 3 "http://search.murata.co.jp/Ceramy/image/img/PDF/ENG/L0110S0100BLM21P.pdf" H 3800 5150 50  0001 C CNN
F 4 "Murata" H 3800 5150 50  0001 C CNN "MFN"
F 5 "BLM21PG221SN1D" H 3800 5150 50  0001 C CNN "MFP"
F 6 "+USB" H 3800 5150 50  0001 C CNN "Config"
	1    3800 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4850 3600 4950
Wire Wire Line
	3600 4950 3800 4950
Wire Wire Line
	3950 4950 3950 4850
Wire Wire Line
	3800 4950 3800 5000
Connection ~ 3800 4950
Wire Wire Line
	3800 4950 3950 4950
$Comp
L power:Earth #PWR08
U 1 1 5F5A766C
P 3800 5400
F 0 "#PWR08" H 3800 5150 50  0001 C CNN
F 1 "Earth" H 3800 5250 50  0001 C CNN
F 2 "" H 3800 5400 50  0001 C CNN
F 3 "~" H 3800 5400 50  0001 C CNN
	1    3800 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5300 3800 5400
$Comp
L power:Earth #PWR01
U 1 1 5F5A862A
P 2850 4750
F 0 "#PWR01" H 2850 4500 50  0001 C CNN
F 1 "Earth" H 2850 4600 50  0001 C CNN
F 2 "" H 2850 4750 50  0001 C CNN
F 3 "~" H 2850 4750 50  0001 C CNN
	1    2850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4650 2850 4750
Wire Wire Line
	2750 4650 2750 4950
Wire Wire Line
	2750 4950 3600 4950
Connection ~ 3600 4950
$Comp
L Connector:TestPoint TP5
U 1 1 5F5ACB0E
P 3600 4200
F 0 "TP5" H 3658 4318 50  0000 L CNN
F 1 "TestPoint" H 3658 4227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2800 4950 50  0001 C CNN
F 3 "~" H 3800 4200 50  0001 C CNN
	1    3600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4200 3600 4250
$Comp
L Connector:TestPoint TP9
U 1 1 5F5AE56C
P 5200 4450
F 0 "TP9" H 5258 4568 50  0000 L CNN
F 1 "TestPoint" H 5258 4477 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2800 4950 50  0001 C CNN
F 3 "~" H 5400 4450 50  0001 C CNN
	1    5200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4450 5050 4450
Connection ~ 5050 4450
Wire Wire Line
	3150 4050 3250 4050
Wire Wire Line
	3250 4050 3250 3850
$Comp
L power:VBUS #PWR05
U 1 1 5F5B20A3
P 3250 3450
F 0 "#PWR05" H 3250 3300 50  0001 C CNN
F 1 "VBUS" H 3265 3623 50  0000 C CNN
F 2 "" H 3250 3450 50  0001 C CNN
F 3 "" H 3250 3450 50  0001 C CNN
	1    3250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3550 3250 3500
$Comp
L Connector:TestPoint TP2
U 1 1 5F5B39E3
P 3400 3500
F 0 "TP2" H 3458 3618 50  0000 L CNN
F 1 "TestPoint" H 3458 3527 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2800 4950 50  0001 C CNN
F 3 "~" H 3600 3500 50  0001 C CNN
	1    3400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3500 3250 3500
Connection ~ 3250 3500
Wire Wire Line
	3250 3500 3250 3450
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F5B5796
P 2950 3450
F 0 "#FLG01" H 2950 3525 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 3623 50  0000 C CNN
F 2 "" H 2950 3450 50  0001 C CNN
F 3 "~" H 2950 3450 50  0001 C CNN
	1    2950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3500 2950 3500
Wire Wire Line
	2950 3500 2950 3450
$Comp
L power:Earth #PWR06
U 1 1 5F5B6F64
P 3500 5400
F 0 "#PWR06" H 3500 5150 50  0001 C CNN
F 1 "Earth" H 3500 5250 50  0001 C CNN
F 2 "" H 3500 5400 50  0001 C CNN
F 3 "~" H 3500 5400 50  0001 C CNN
	1    3500 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5F5B7E09
P 3500 5250
F 0 "TP4" H 3300 5400 50  0000 L CNN
F 1 "TestPoint" H 3100 5300 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2800 4950 50  0001 C CNN
F 3 "~" H 3700 5250 50  0001 C CNN
	1    3500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5250 3500 5400
$Comp
L power:Earth #PWR014
U 1 1 5F5B9D3E
P 5450 4150
F 0 "#PWR014" H 5450 3900 50  0001 C CNN
F 1 "Earth" H 5450 4000 50  0001 C CNN
F 2 "" H 5450 4150 50  0001 C CNN
F 3 "~" H 5450 4150 50  0001 C CNN
	1    5450 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F5BB617
P 5450 3950
F 0 "C5" H 5565 3996 50  0000 L CNN
F 1 "1uF" H 5565 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5488 3800 50  0001 C CNN
F 3 "~" H 5450 3950 50  0001 C CNN
	1    5450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3750 5450 3750
Wire Wire Line
	5450 3750 5450 3800
Wire Wire Line
	5450 4150 5450 4100
$Comp
L MCU_Microchip_ATmega:ATmega8U2-AU U1
U 1 1 5F58D91D
P 6400 3950
F 0 "U1" H 5850 5300 50  0000 C CNN
F 1 "ATmega8U2-AU" H 6750 2600 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 6400 3950 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc7799.pdf" H 6400 3950 50  0001 C CNN
	1    6400 3950
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR017
U 1 1 5F5C4CB0
P 6300 1950
F 0 "#PWR017" H 6300 1800 50  0001 C CNN
F 1 "VBUS" H 6315 2123 50  0000 C CNN
F 2 "" H 6300 1950 50  0001 C CNN
F 3 "" H 6300 1950 50  0001 C CNN
	1    6300 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F5C6E57
P 6050 2200
F 0 "C6" H 5750 2250 50  0000 L CNN
F 1 "100nF" H 5700 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6088 2050 50  0001 C CNN
F 3 "~" H 6050 2200 50  0001 C CNN
	1    6050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2550 6300 2000
Wire Wire Line
	6050 2050 6050 2000
Wire Wire Line
	6050 2000 6300 2000
Connection ~ 6300 2000
Wire Wire Line
	6300 2000 6300 1950
$Comp
L power:Earth #PWR016
U 1 1 5F5CBA08
P 6050 2400
F 0 "#PWR016" H 6050 2150 50  0001 C CNN
F 1 "Earth" H 6050 2250 50  0001 C CNN
F 2 "" H 6050 2400 50  0001 C CNN
F 3 "~" H 6050 2400 50  0001 C CNN
	1    6050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2350 6050 2400
$Comp
L Connector:TestPoint TP3
U 1 1 5F5D16B6
P 3400 4000
F 0 "TP3" H 3458 4118 50  0000 L CNN
F 1 "TestPoint" H 3458 4027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2800 4950 50  0001 C CNN
F 3 "~" H 3600 4000 50  0001 C CNN
	1    3400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4050 3250 4050
Connection ~ 3250 4050
Wire Wire Line
	3400 4000 3400 4050
$Comp
L power:Earth #PWR018
U 1 1 5F5D6BAF
P 6300 5450
F 0 "#PWR018" H 6300 5200 50  0001 C CNN
F 1 "Earth" H 6300 5300 50  0001 C CNN
F 2 "" H 6300 5450 50  0001 C CNN
F 3 "~" H 6300 5450 50  0001 C CNN
	1    6300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5350 6300 5450
$Comp
L power:GND #PWR019
U 1 1 5F5D87E9
P 6400 5450
F 0 "#PWR019" H 6400 5200 50  0001 C CNN
F 1 "GND" H 6405 5277 50  0000 C CNN
F 2 "" H 6400 5450 50  0001 C CNN
F 3 "" H 6400 5450 50  0001 C CNN
	1    6400 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5350 6400 5450
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5F5DB904
P 5250 5400
F 0 "JP1" H 5250 5605 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5250 5514 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5250 5400 50  0001 C CNN
F 3 "~" H 5250 5400 50  0001 C CNN
	1    5250 5400
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR011
U 1 1 5F5DCEB8
P 5050 5550
F 0 "#PWR011" H 5050 5300 50  0001 C CNN
F 1 "Earth" H 5050 5400 50  0001 C CNN
F 2 "" H 5050 5550 50  0001 C CNN
F 3 "~" H 5050 5550 50  0001 C CNN
	1    5050 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5F5DCEC2
P 5450 5550
F 0 "#PWR015" H 5450 5300 50  0001 C CNN
F 1 "GND" H 5455 5377 50  0000 C CNN
F 2 "" H 5450 5550 50  0001 C CNN
F 3 "" H 5450 5550 50  0001 C CNN
	1    5450 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5400 5450 5400
Wire Wire Line
	5450 5400 5450 5550
Wire Wire Line
	5100 5400 5050 5400
Wire Wire Line
	5050 5400 5050 5550
$Comp
L Device:D D1
U 1 1 5F5E34DD
P 5200 2600
F 0 "D1" V 5154 2680 50  0000 L CNN
F 1 "CD1206-S01575" V 5300 1950 50  0000 L CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 5200 2600 50  0001 C CNN
F 3 "~" H 5200 2600 50  0001 C CNN
	1    5200 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 2750 5200 2850
Wire Wire Line
	5200 2850 5450 2850
Wire Wire Line
	5450 2750 5450 2850
Connection ~ 5450 2850
Wire Wire Line
	5450 2850 5700 2850
$Comp
L power:+5V #PWR012
U 1 1 5F5E77A0
P 5200 2400
F 0 "#PWR012" H 5200 2250 50  0001 C CNN
F 1 "+5V" H 5215 2573 50  0000 C CNN
F 2 "" H 5200 2400 50  0001 C CNN
F 3 "" H 5200 2400 50  0001 C CNN
	1    5200 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5F5E8B12
P 5450 2400
F 0 "#PWR013" H 5450 2250 50  0001 C CNN
F 1 "+5V" H 5465 2573 50  0000 C CNN
F 2 "" H 5450 2400 50  0001 C CNN
F 3 "" H 5450 2400 50  0001 C CNN
	1    5450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2400 5450 2450
Wire Wire Line
	5200 2400 5200 2450
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 5F5EE04D
P 8400 2950
F 0 "J5" H 8450 3267 50  0000 C CNN
F 1 "ICSP1" H 8450 3176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 8400 2950 50  0001 C CNN
F 3 "https://cdn.harwin.com/pdfs/M20-998.pdf" H 8400 2950 50  0001 C CNN
F 4 "Harwin Inc." H 8400 2950 50  0001 C CNN "MFN"
F 5 "M20-9980346" H 8400 2950 50  0001 C CNN "MFP"
F 6 "-USB" H 8400 2950 50  0001 C CNN "Config"
	1    8400 2950
	1    0    0    -1  
$EndComp
Text Label 7150 3150 0    50   ~ 0
MISO2
Text Label 7150 2950 0    50   ~ 0
SCK2
Text Label 8000 2950 0    50   ~ 0
SCK2
Text Label 7900 3050 0    50   ~ 0
RESET2
Wire Wire Line
	8200 3050 7800 3050
Wire Wire Line
	7800 3050 7800 1600
Wire Wire Line
	7800 1600 4450 1600
Wire Wire Line
	4450 1600 4450 2850
Wire Wire Line
	4450 2850 5200 2850
Connection ~ 5200 2850
Text Label 4800 2850 0    50   ~ 0
RESET2
$Comp
L power:+5V #PWR023
U 1 1 5F5FAD36
P 8750 2800
F 0 "#PWR023" H 8750 2650 50  0001 C CNN
F 1 "+5V" H 8765 2973 50  0000 C CNN
F 2 "" H 8750 2800 50  0001 C CNN
F 3 "" H 8750 2800 50  0001 C CNN
	1    8750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2850 8750 2850
Wire Wire Line
	8750 2850 8750 2800
Text Label 8700 2950 0    50   ~ 0
MOSI2
Wire Wire Line
	8700 2950 9000 2950
Wire Wire Line
	9000 2950 9000 2450
Text Label 7150 3050 0    50   ~ 0
MOSI2
$Comp
L power:GND #PWR024
U 1 1 5F6041DB
P 8750 3100
F 0 "#PWR024" H 8750 2850 50  0001 C CNN
F 1 "GND" H 8755 2927 50  0000 C CNN
F 2 "" H 8750 3100 50  0001 C CNN
F 3 "" H 8750 3100 50  0001 C CNN
	1    8750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3050 8750 3050
Wire Wire Line
	8750 3050 8750 3100
NoConn ~ 7100 2850
Wire Wire Line
	7100 3050 7600 3050
Wire Wire Line
	7600 3050 7600 2450
Wire Wire Line
	7600 2450 9000 2450
Wire Wire Line
	7100 3150 7700 3150
Wire Wire Line
	7700 3150 7700 2850
Text Label 7950 2850 0    50   ~ 0
MISO2
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J4
U 1 1 5F655B58
P 8200 3400
F 0 "J4" H 8250 3617 50  0000 C CNN
F 1 "2x2M" H 8250 3526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 8200 3400 50  0001 C CNN
F 3 "https://cdn.harwin.com/pdfs/M20-998.pdf" H 8200 3400 50  0001 C CNN
F 4 "Harwin Inc." H 8200 3400 50  0001 C CNN "MFN"
F 5 "M20-9980246-ND" H 8200 3400 50  0001 C CNN "MFP"
F 6 "DNF" H 8200 3400 50  0001 C CNN "Config"
	1    8200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3250 7550 3250
Wire Wire Line
	7550 3250 7550 3400
Wire Wire Line
	7100 3350 7450 3350
Wire Wire Line
	7450 3350 7450 3500
Wire Wire Line
	7100 3550 7200 3550
Wire Wire Line
	7200 3550 7200 3650
Wire Wire Line
	7200 3650 8500 3650
Wire Wire Line
	8500 3650 8500 3500
Wire Wire Line
	7100 3450 7300 3450
Wire Wire Line
	7300 3450 7300 3600
Wire Wire Line
	7300 3600 8550 3600
Wire Wire Line
	8550 3600 8550 3400
Wire Wire Line
	8550 3400 8500 3400
Wire Wire Line
	7550 3400 8000 3400
$Comp
L Connector:Conn_01x05_Male J3
U 1 1 5F69BB94
P 7650 3950
F 0 "J3" H 7622 3882 50  0000 R CNN
F 1 "P1" H 7622 3973 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7650 3950 50  0001 C CNN
F 3 "~" H 7650 3950 50  0001 C CNN
	1    7650 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 3750 7450 3750
Wire Wire Line
	7450 3850 7100 3850
Wire Wire Line
	7100 3950 7450 3950
Wire Wire Line
	7450 4050 7100 4050
Wire Wire Line
	7100 4150 7450 4150
$Comp
L power:+5V #PWR026
U 1 1 5F6B0352
P 9800 4000
F 0 "#PWR026" H 9800 3850 50  0001 C CNN
F 1 "+5V" H 9815 4173 50  0000 C CNN
F 2 "" H 9800 4000 50  0001 C CNN
F 3 "" H 9800 4000 50  0001 C CNN
	1    9800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4850 9800 4700
Wire Wire Line
	9800 4350 9800 4400
Wire Wire Line
	9800 4000 9800 4050
$Comp
L Device:LED D2
U 1 1 5F6C8805
P 9300 4550
F 0 "D2" V 9339 4432 50  0000 R CNN
F 1 "LED" V 9248 4432 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9300 4550 50  0001 C CNN
F 3 "https://dammedia.osram.info/media/resource/hires/osram-dam-2493936/LG%20R971.pdf" H 9300 4550 50  0001 C CNN
F 4 "OSRAM Opto Semiconductors Inc." V 9300 4550 50  0001 C CNN "MFN"
F 5 "LG R971-KN-1" V 9300 4550 50  0001 C CNN "MFP"
	1    9300 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 5F6C8819
P 9300 4000
F 0 "#PWR025" H 9300 3850 50  0001 C CNN
F 1 "+5V" H 9315 4173 50  0000 C CNN
F 2 "" H 9300 4000 50  0001 C CNN
F 3 "" H 9300 4000 50  0001 C CNN
	1    9300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4350 9300 4400
Wire Wire Line
	9300 4000 9300 4050
Wire Wire Line
	7100 4850 9800 4850
Wire Wire Line
	7100 4750 9300 4750
Wire Wire Line
	9300 4750 9300 4700
Text Label 7150 4750 0    50   ~ 0
RXLED
Text Label 7150 4850 0    50   ~ 0
TXLED
$Comp
L Device:R R7
U 1 1 5F6AFC1D
P 9800 4200
F 0 "R7" H 9870 4246 50  0000 L CNN
F 1 "1K" H 9870 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9730 4200 50  0001 C CNN
F 3 "~" H 9800 4200 50  0001 C CNN
	1    9800 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F6C880F
P 9300 4200
F 0 "R6" H 9370 4246 50  0000 L CNN
F 1 "1K" H 9370 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 4200 50  0001 C CNN
F 3 "~" H 9300 4200 50  0001 C CNN
	1    9300 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F6F75D3
P 7350 5300
F 0 "R5" H 7420 5346 50  0000 L CNN
F 1 "1K" H 7420 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7280 5300 50  0001 C CNN
F 3 "~" H 7350 5300 50  0001 C CNN
	1    7350 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F6F7FD9
P 7700 5050
F 0 "C8" V 7550 5050 50  0000 L CNN
F 1 "100nF" V 7450 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7738 4900 50  0001 C CNN
F 3 "~" H 7700 5050 50  0001 C CNN
	1    7700 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 5050 7350 5050
Wire Wire Line
	7350 5150 7350 5050
Connection ~ 7350 5050
Wire Wire Line
	7350 5050 7550 5050
$Comp
L power:GND #PWR022
U 1 1 5F70615B
P 7350 5500
F 0 "#PWR022" H 7350 5250 50  0001 C CNN
F 1 "GND" H 7355 5327 50  0000 C CNN
F 2 "" H 7350 5500 50  0001 C CNN
F 3 "" H 7350 5500 50  0001 C CNN
	1    7350 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5450 7350 5500
Text Label 7150 5050 0    50   ~ 0
DTR
$Comp
L Connector:Conn_01x06_Male J6
U 1 1 5F71B1A8
P 8450 4500
F 0 "J6" H 8422 4382 50  0000 R CNN
F 1 "P2" H 8422 4473 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8450 4500 50  0001 C CNN
F 3 "~" H 8450 4500 50  0001 C CNN
	1    8450 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 4200 7700 4200
Wire Wire Line
	7700 4200 7700 4350
Wire Wire Line
	7700 4350 7100 4350
Wire Wire Line
	7100 4450 7750 4450
Wire Wire Line
	7750 4450 7750 4300
Wire Wire Line
	7750 4300 8250 4300
Wire Wire Line
	8250 4400 7800 4400
Wire Wire Line
	7800 4400 7800 4550
Wire Wire Line
	7800 4550 7100 4550
Wire Wire Line
	7100 4650 7850 4650
Wire Wire Line
	7850 4650 7850 4500
Wire Wire Line
	7850 4500 8250 4500
Wire Wire Line
	7100 4950 7900 4950
Wire Wire Line
	7900 4950 7900 4600
Wire Wire Line
	7900 4600 8250 4600
Wire Wire Line
	7850 5050 8000 5050
Wire Wire Line
	8000 5050 8000 4700
Wire Wire Line
	8000 4700 8250 4700
$Comp
L Device:C C7
U 1 1 5F74311F
P 6700 2200
F 0 "C7" H 6850 2250 50  0000 L CNN
F 1 "100nF" H 6850 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6738 2050 50  0001 C CNN
F 3 "~" H 6700 2200 50  0001 C CNN
	1    6700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2050 6700 2000
Wire Wire Line
	6700 2350 6700 2400
Wire Wire Line
	6400 2550 6400 2000
Wire Wire Line
	6400 2000 6500 2000
Wire Wire Line
	6500 2550 6500 2000
Connection ~ 6500 2000
Wire Wire Line
	6500 2000 6700 2000
$Comp
L power:+5V #PWR020
U 1 1 5F755DDB
P 6500 1950
F 0 "#PWR020" H 6500 1800 50  0001 C CNN
F 1 "+5V" H 6515 2123 50  0000 C CNN
F 2 "" H 6500 1950 50  0001 C CNN
F 3 "" H 6500 1950 50  0001 C CNN
	1    6500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2000 6500 1950
$Comp
L power:GND #PWR021
U 1 1 5F763CD9
P 6700 2400
F 0 "#PWR021" H 6700 2150 50  0001 C CNN
F 1 "GND" H 6705 2227 50  0000 C CNN
F 2 "" H 6700 2400 50  0001 C CNN
F 3 "" H 6700 2400 50  0001 C CNN
	1    6700 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F771E4D
P 3000 2400
F 0 "#PWR02" H 3000 2150 50  0001 C CNN
F 1 "GND" H 3005 2227 50  0000 C CNN
F 2 "" H 3000 2400 50  0001 C CNN
F 3 "" H 3000 2400 50  0001 C CNN
	1    3000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2100 3000 2400
Wire Wire Line
	2450 1900 2600 1900
Wire Wire Line
	3250 1900 3250 1950
$Comp
L power:GND #PWR04
U 1 1 5F78795C
P 3250 2300
F 0 "#PWR04" H 3250 2050 50  0001 C CNN
F 1 "GND" H 3255 2127 50  0000 C CNN
F 2 "" H 3250 2300 50  0001 C CNN
F 3 "" H 3250 2300 50  0001 C CNN
	1    3250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2250 3250 2300
$Comp
L Device:C C2
U 1 1 5F795151
P 3650 2100
F 0 "C2" H 3800 2150 50  0000 L CNN
F 1 "100nF" H 3800 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3688 1950 50  0001 C CNN
F 3 "~" H 3650 2100 50  0001 C CNN
	1    3650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1900 3650 1900
Connection ~ 3250 1900
$Comp
L power:GND #PWR07
U 1 1 5F7A2ED1
P 3650 2300
F 0 "#PWR07" H 3650 2050 50  0001 C CNN
F 1 "GND" H 3655 2127 50  0000 C CNN
F 2 "" H 3650 2300 50  0001 C CNN
F 3 "" H 3650 2300 50  0001 C CNN
	1    3650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2250 3650 2300
$Comp
L power:+5V #PWR03
U 1 1 5F7B1161
P 3250 1850
F 0 "#PWR03" H 3250 1700 50  0001 C CNN
F 1 "+5V" H 3265 2023 50  0000 C CNN
F 2 "" H 3250 1850 50  0001 C CNN
F 3 "" H 3250 1850 50  0001 C CNN
	1    3250 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1850 3250 1900
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F7BFBA0
P 3650 1850
F 0 "#FLG02" H 3650 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 3650 2023 50  0000 C CNN
F 2 "" H 3650 1850 50  0001 C CNN
F 3 "~" H 3650 1850 50  0001 C CNN
	1    3650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1850 3650 1900
Connection ~ 3650 1900
Wire Wire Line
	3650 1900 3650 1950
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F7DE72F
P 2700 2400
F 0 "#FLG0101" H 2700 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 2573 50  0000 C CNN
F 2 "" H 2700 2400 50  0001 C CNN
F 3 "~" H 2700 2400 50  0001 C CNN
	1    2700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2400 2700 2400
Connection ~ 3000 2400
$Comp
L Device:Varistor RV2
U 1 1 5F596A91
P 3950 4700
F 0 "RV2" H 4050 4750 50  0000 L CNN
F 1 "CG0603MLC-05E" H 4050 4650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 4700 50  0001 C CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/MLC.pdf" H 3950 4700 50  0001 C CNN
F 4 "Bourns Inc." H 3950 4700 50  0001 C CNN "MFN"
F 5 "CG0603MLC-05E" H 3950 4700 50  0001 C CNN "MFP"
F 6 "+USB" H 3950 4700 50  0001 C CNN "Config"
	1    3950 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F59F9FE
P 4250 4450
F 0 "R2" V 4150 4350 50  0000 C CNN
F 1 "22R" V 4150 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 4450 50  0001 C CNN
F 3 "~" H 4250 4450 50  0001 C CNN
F 4 "+USB" H 4250 4450 50  0001 C CNN "Config"
	1    4250 4450
	0    1    1    0   
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5F5A70CB
P 3250 3700
F 0 "F1" H 3338 3746 50  0000 L CNN
F 1 "MF-MSMF050-2" H 3338 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_1812_4532Metric" H 3300 3500 50  0001 L CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/mfmsmf.pdf" H 3250 3700 50  0001 C CNN
F 4 "+USB" H 3250 3700 50  0001 C CNN "Config"
	1    3250 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F5E26B1
P 5450 2600
F 0 "R4" H 5520 2646 50  0000 L CNN
F 1 "10K" H 5520 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5380 2600 50  0001 C CNN
F 3 "~" H 5450 2600 50  0001 C CNN
	1    5450 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5F77F6AD
P 3250 2100
F 0 "C1" H 3368 2146 50  0000 L CNN
F 1 "47uF" H 3368 2055 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10" H 3288 1950 50  0001 C CNN
F 3 "https://www.vishay.com/docs/28388/153crv.pdf" H 3250 2100 50  0001 C CNN
F 4 "Vishay Beyschlag/Draloric/BC Components" H 3250 2100 50  0001 C CNN "MFN"
F 5 "MAL215371479E3" H 3250 2100 50  0001 C CNN "MFP"
	1    3250 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5F5B927E
P 9800 4550
F 0 "D3" V 9839 4432 50  0000 R CNN
F 1 "LED" V 9748 4432 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9800 4550 50  0001 C CNN
F 3 "https://dammedia.osram.info/media/resource/hires/osram-dam-2493936/LG%20R971.pdf" H 9800 4550 50  0001 C CNN
F 4 "OSRAM Opto Semiconductors Inc." V 9800 4550 50  0001 C CNN "MFN"
F 5 "LG R971-KN-1" V 9800 4550 50  0001 C CNN "MFP"
	1    9800 4550
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 5F5C2322
P 2150 2000
F 0 "J1" H 1920 1950 50  0000 R CNN
F 1 "Barrel_Jack_Switch" H 1920 2041 50  0000 R CNN
F 2 "Connector_BarrelJack:BarrelJack_CLIFF_FC681465S_SMT_Horizontal" H 2200 1960 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/6941xx106102.pdf" H 2200 1960 50  0001 C CNN
F 4 "Würth Elektronik" H 2150 2000 50  0001 C CNN "MFN"
F 5 "694106106102" H 2150 2000 50  0001 C CNN "MFP"
	1    2150 2000
	1    0    0    1   
$EndComp
Wire Wire Line
	2450 2100 3000 2100
Wire Wire Line
	2450 2000 2600 2000
Wire Wire Line
	2600 2000 2600 1900
Connection ~ 2600 1900
Wire Wire Line
	2600 1900 3250 1900
$Comp
L Mechanical:Fiducial FID1
U 1 1 5F82BD5C
P 750 7500
F 0 "FID1" H 835 7546 50  0000 L CNN
F 1 "Fiducial" H 835 7455 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.75mm_Mask1.5mm" H 750 7500 50  0001 C CNN
F 3 "~" H 750 7500 50  0001 C CNN
	1    750  7500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID2
U 1 1 5F83C5E8
P 1250 7500
F 0 "FID2" H 1335 7546 50  0000 L CNN
F 1 "Fiducial" H 1335 7455 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.75mm_Mask1.5mm" H 1250 7500 50  0001 C CNN
F 3 "~" H 1250 7500 50  0001 C CNN
	1    1250 7500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID3
U 1 1 5F844210
P 1750 7500
F 0 "FID3" H 1835 7546 50  0000 L CNN
F 1 "Fiducial" H 1835 7455 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.75mm_Mask1.5mm" H 1750 7500 50  0001 C CNN
F 3 "~" H 1750 7500 50  0001 C CNN
	1    1750 7500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID4
U 1 1 5F84421A
P 2250 7500
F 0 "FID4" H 2335 7546 50  0000 L CNN
F 1 "Fiducial" H 2335 7455 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.75mm_Mask1.5mm" H 2250 7500 50  0001 C CNN
F 3 "~" H 2250 7500 50  0001 C CNN
	1    2250 7500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F84C851
P 750 7200
F 0 "H2" H 850 7246 50  0000 L CNN
F 1 "MountingHole" H 850 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 750 7200 50  0001 C CNN
F 3 "~" H 750 7200 50  0001 C CNN
	1    750  7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F84CD24
P 1550 7200
F 0 "H4" H 1650 7246 50  0000 L CNN
F 1 "MountingHole" H 1650 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 1550 7200 50  0001 C CNN
F 3 "~" H 1550 7200 50  0001 C CNN
	1    1550 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F854948
P 750 6950
F 0 "H1" H 850 6996 50  0000 L CNN
F 1 "MountingHole" H 850 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 750 6950 50  0001 C CNN
F 3 "~" H 750 6950 50  0001 C CNN
	1    750  6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F854952
P 1550 6950
F 0 "H3" H 1650 6996 50  0000 L CNN
F 1 "MountingHole" H 1650 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 1550 6950 50  0001 C CNN
F 3 "~" H 1550 6950 50  0001 C CNN
	1    1550 6950
	1    0    0    -1  
$EndComp
$Comp
L Graphic:Logo_Open_Hardware_Large LOGO1
U 1 1 5F85D3C9
P 3400 6800
F 0 "LOGO1" H 3400 7300 50  0001 C CNN
F 1 "Logo_Open_Hardware_Large" H 3400 6400 50  0001 C CNN
F 2 "Symbol:OSHW-Logo_11.4x12mm_SilkScreen" H 3400 6800 50  0001 C CNN
F 3 "~" H 3400 6800 50  0001 C CNN
	1    3400 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3500 8000 3500
Wire Wire Line
	7700 2850 8200 2850
Wire Wire Line
	7100 2950 8200 2950
Text Notes 550  1000 0    157  ~ 0
KiBot variants example\nNot a real life board
Text Notes 3050 7400 0    79   ~ 0
Open source\nhardware
$Comp
L Graphic:SYM_Magnet_Large #SYM1
U 1 1 5F5B7A21
P 5000 6950
F 0 "#SYM1" H 5000 7150 50  0001 C CNN
F 1 "SYM_Magnet_Large" H 5000 6700 50  0001 C CNN
F 2 "" H 5000 6750 50  0001 C CNN
F 3 "~" H 5030 6750 50  0001 C CNN
	1    5000 6950
	1    0    0    -1  
$EndComp
Text Notes 4150 7450 0    79   ~ 0
This logo has a REF starting with #\nWon't be passed to the PCB
$EndSCHEMATC

EESchema Schematic File Version 4
LIBS:wiring-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Adding triggered DC bias to input signal"
Date "2019-09-20"
Rev ""
Comp "Nikita"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L teensy:Teensy2.0_(Arduino) U1
U 1 1 5D84FD9D
P 2050 2300
F 0 "U1" V 2103 1422 60  0000 R CNN
F 1 "Teensy2.0_(Arduino)" V 1997 1422 60  0000 R CNN
F 2 "teensy_footprints:Teensy2.0" H 2150 1250 60  0001 C CNN
F 3 "" H 2150 1250 60  0000 C CNN
	1    2050 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D8528D8
P 5450 2700
F 0 "R1" H 5520 2746 50  0000 L CNN
F 1 "10k" H 5520 2655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5380 2700 50  0001 C CNN
F 3 "~" H 5450 2700 50  0001 C CNN
	1    5450 2700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5D853A15
P 1250 3650
F 0 "J1" V 1132 3751 50  0000 L CNN
F 1 "Trigger IN" V 1223 3751 50  0000 L CNN
F 2 "my_components:BNC_female_jack_TE_1-1634505-0" H 1250 3650 50  0001 C CNN
F 3 " ~" H 1250 3650 50  0001 C CNN
	1    1250 3650
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5D854101
P 6500 1850
F 0 "J2" H 6600 1825 50  0000 L CNN
F 1 "Galvo signal IN" H 6700 1750 50  0000 L CNN
F 2 "my_components:BNC_female_jack_TE_1-1634505-0" H 6500 1850 50  0001 C CNN
F 3 " ~" H 6500 1850 50  0001 C CNN
	1    6500 1850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5D854C67
P 6950 3450
F 0 "J3" H 7050 3425 50  0000 L CNN
F 1 "DC bias out" H 6900 3600 50  0000 L CNN
F 2 "my_components:BNC_female_jack_TE_1-1634505-0" H 6950 3450 50  0001 C CNN
F 3 " ~" H 6950 3450 50  0001 C CNN
	1    6950 3450
	1    0    0    -1  
$EndComp
$Comp
L my_library:MCP4725_bkt U2
U 1 1 5D861C3A
P 2500 3750
F 0 "U2" H 2700 4050 50  0000 L CNN
F 1 "MCP4725_bkt" H 2850 3450 50  0000 L CNN
F 2 "my_components:MCP4725" H 2600 4100 50  0001 C CNN
F 3 "" H 2600 4100 50  0001 C CNN
	1    2500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3000 1900 3600
Wire Wire Line
	1900 3600 2150 3600
Wire Wire Line
	2000 3000 2000 3850
Wire Wire Line
	2000 3850 2150 3850
Wire Wire Line
	1250 3450 2100 3450
Wire Wire Line
	2100 3450 2100 3000
$Comp
L power:+5V #PWR0101
U 1 1 5D865C7D
P 2500 3400
F 0 "#PWR0101" H 2500 3250 50  0001 C CNN
F 1 "+5V" H 2515 3573 50  0000 C CNN
F 2 "" H 2500 3400 50  0001 C CNN
F 3 "" H 2500 3400 50  0001 C CNN
	1    2500 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D863070
P 2500 4100
F 0 "#PWR0102" H 2500 3850 50  0001 C CNN
F 1 "GND" H 2505 3927 50  0000 C CNN
F 2 "" H 2500 4100 50  0001 C CNN
F 3 "" H 2500 4100 50  0001 C CNN
	1    2500 4100
	1    0    0    -1  
$EndComp
$Comp
L dk_PMIC-Voltage-Regulators-Linear:L7805CV U3
U 1 1 5D853D46
P 4850 1600
F 0 "U3" H 4850 1887 60  0000 C CNN
F 1 "L7805CV" H 4850 1781 60  0000 C CNN
F 2 "digikey-footprints:TO-220-3" H 5050 1800 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5050 1900 60  0001 L CNN
F 4 "497-1443-5-ND" H 5050 2000 60  0001 L CNN "Digi-Key_PN"
F 5 "L7805CV" H 5050 2100 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 5050 2200 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 5050 2300 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5050 2400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/L7805CV/497-1443-5-ND/585964" H 5050 2500 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 5V 1.5A TO220AB" H 5050 2600 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 5050 2700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5050 2800 60  0001 L CNN "Status"
	1    4850 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0103
U 1 1 5D854F05
P 4350 1600
F 0 "#PWR0103" H 4350 1450 50  0001 C CNN
F 1 "+12V" H 4365 1773 50  0000 C CNN
F 2 "" H 4350 1600 50  0001 C CNN
F 3 "" H 4350 1600 50  0001 C CNN
	1    4350 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5D85564F
P 4850 2100
F 0 "#PWR0104" H 4850 1850 50  0001 C CNN
F 1 "GND" H 4855 1927 50  0000 C CNN
F 2 "" H 4850 2100 50  0001 C CNN
F 3 "" H 4850 2100 50  0001 C CNN
	1    4850 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5D855E43
P 5400 1600
F 0 "#PWR0105" H 5400 1450 50  0001 C CNN
F 1 "+5V" H 5415 1773 50  0000 C CNN
F 2 "" H 5400 1600 50  0001 C CNN
F 3 "" H 5400 1600 50  0001 C CNN
	1    5400 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5D856425
P 4350 1900
F 0 "C1" H 4468 1946 50  0000 L CNN
F 1 "0.33uF" H 4468 1855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 4388 1750 50  0001 C CNN
F 3 "~" H 4350 1900 50  0001 C CNN
	1    4350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1600 4550 1600
Connection ~ 4350 1600
Wire Wire Line
	4350 1600 4350 1750
Wire Wire Line
	4350 2050 4350 2100
Wire Wire Line
	4350 2100 4850 2100
Wire Wire Line
	4850 2100 4850 1900
Connection ~ 4850 2100
Wire Wire Line
	5150 1600 5400 1600
Text Notes 4450 1250 0    50   ~ 0
Regulated power 5V
$Comp
L Regulator_SwitchedCapacitor:ICL7660 U4
U 1 1 5D85B477
P 4000 4900
F 0 "U4" H 4000 5467 50  0000 C CNN
F 1 "ICL7660" H 4000 5376 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4100 4800 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/ICL7660-MAX1044.pdf" H 4100 4800 50  0001 C CNN
	1    4000 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5D85C317
P 4500 4950
F 0 "C2" H 4618 4996 50  0000 L CNN
F 1 "10uF" H 4618 4905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 4538 4800 50  0001 C CNN
F 3 "~" H 4500 4950 50  0001 C CNN
	1    4500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5200 4400 5200
Wire Wire Line
	4500 5200 4500 5100
Wire Wire Line
	4400 4800 4500 4800
Text Notes 3650 5700 0    50   ~ 0
Negative power -5V
$Comp
L power:GND #PWR0106
U 1 1 5D860BB7
P 4000 5400
F 0 "#PWR0106" H 4000 5150 50  0001 C CNN
F 1 "GND" H 4005 5227 50  0000 C CNN
F 2 "" H 4000 5400 50  0001 C CNN
F 3 "" H 4000 5400 50  0001 C CNN
	1    4000 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5D861279
P 3600 4600
F 0 "#PWR0107" H 3600 4450 50  0001 C CNN
F 1 "+5V" H 3615 4773 50  0000 C CNN
F 2 "" H 3600 4600 50  0001 C CNN
F 3 "" H 3600 4600 50  0001 C CNN
	1    3600 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5D863EBC
P 4950 4950
F 0 "C3" H 4832 4904 50  0000 R CNN
F 1 "10uF" H 4832 4995 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 4988 4800 50  0001 C CNN
F 3 "~" H 4950 4950 50  0001 C CNN
	1    4950 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 4600 4950 4800
$Comp
L power:GND #PWR0108
U 1 1 5D864C2D
P 4950 5100
F 0 "#PWR0108" H 4950 4850 50  0001 C CNN
F 1 "GND" H 4955 4927 50  0000 C CNN
F 2 "" H 4950 5100 50  0001 C CNN
F 3 "" H 4950 5100 50  0001 C CNN
	1    4950 5100
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:UA741CP IC1
U 1 1 5D86C707
P 4650 3250
F 0 "IC1" H 5450 3515 50  0000 C CNN
F 1 "UA741CP" H 5450 3424 50  0000 C CNN
F 2 "digikey-footprints:DIP-8_W7.62mm" H 6100 3350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ua741.pdf" H 6100 3250 50  0001 L CNN
F 4 "Single op-amp,UA741CP 1MHz DIP8, tube Texas Instruments UA741CP Op Amp, 1MHz, 8-Pin PDIP" H 6100 3150 50  0001 L CNN "Description"
F 5 "5.08" H 6100 3050 50  0001 L CNN "Height"
F 6 "595-UA741CP" H 6100 2950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-UA741CP" H 6100 2850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 6100 2750 50  0001 L CNN "Manufacturer_Name"
F 9 "UA741CP" H 6100 2650 50  0001 L CNN "Manufacturer_Part_Number"
	1    4650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4600 4950 4600
$Comp
L power:+5V #PWR0109
U 1 1 5D872929
P 5450 2550
F 0 "#PWR0109" H 5450 2400 50  0001 C CNN
F 1 "+5V" H 5465 2723 50  0000 C CNN
F 2 "" H 5450 2550 50  0001 C CNN
F 3 "" H 5450 2550 50  0001 C CNN
	1    5450 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3450 2900 3450
Wire Wire Line
	2900 3450 2900 3750
Wire Wire Line
	6250 3450 6450 3450
Wire Wire Line
	6450 3450 6450 2850
Wire Wire Line
	4450 2850 4450 3350
Wire Wire Line
	4450 3350 4650 3350
Wire Wire Line
	6250 3350 6350 3350
Wire Wire Line
	5450 2850 4450 2850
$Comp
L power:+5V #PWR0110
U 1 1 5D87D4AE
P 6350 3350
F 0 "#PWR0110" H 6350 3200 50  0001 C CNN
F 1 "+5V" H 6365 3523 50  0000 C CNN
F 2 "" H 6350 3350 50  0001 C CNN
F 3 "" H 6350 3350 50  0001 C CNN
	1    6350 3350
	1    0    0    -1  
$EndComp
Text Notes 5000 3850 0    50   ~ 0
Doubling opAmp (gain 2)\nwith offset -5V
Connection ~ 4400 4600
Wire Wire Line
	4650 3250 5150 3250
$Comp
L Device:R R3
U 1 1 5D88F7CB
P 7500 2750
F 0 "R3" H 7570 2796 50  0000 L CNN
F 1 "1k" H 7570 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7430 2750 50  0001 C CNN
F 3 "~" H 7500 2750 50  0001 C CNN
	1    7500 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D88FC3B
P 7500 1950
F 0 "R4" H 7570 1996 50  0000 L CNN
F 1 "1k" H 7570 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7430 1950 50  0001 C CNN
F 3 "~" H 7500 1950 50  0001 C CNN
	1    7500 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 4100 5150 3250
Wire Wire Line
	6250 4100 6250 3550
Wire Wire Line
	4400 3550 4400 4600
Wire Wire Line
	4400 3550 4650 3550
Connection ~ 4950 4600
Wire Wire Line
	9900 3300 9700 3300
$Comp
L power:+5V #PWR0112
U 1 1 5D89C7AD
P 9900 3300
F 0 "#PWR0112" H 9900 3150 50  0001 C CNN
F 1 "+5V" H 9915 3473 50  0000 C CNN
F 2 "" H 9900 3300 50  0001 C CNN
F 3 "" H 9900 3300 50  0001 C CNN
	1    9900 3300
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:UA741CP IC2
U 1 1 5D86D24C
P 8100 3200
F 0 "IC2" H 8900 3465 50  0000 C CNN
F 1 "UA741CP" H 8900 3374 50  0000 C CNN
F 2 "digikey-footprints:DIP-8_W7.62mm" H 9550 3300 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ua741.pdf" H 9550 3200 50  0001 L CNN
F 4 "Single op-amp,UA741CP 1MHz DIP8, tube Texas Instruments UA741CP Op Amp, 1MHz, 8-Pin PDIP" H 9550 3100 50  0001 L CNN "Description"
F 5 "5.08" H 9550 3000 50  0001 L CNN "Height"
F 6 "595-UA741CP" H 9550 2900 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-UA741CP" H 9550 2800 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 9550 2700 50  0001 L CNN "Manufacturer_Name"
F 9 "UA741CP" H 9550 2600 50  0001 L CNN "Manufacturer_Part_Number"
	1    8100 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4600 8100 4600
Wire Wire Line
	8100 3500 8100 4600
Wire Wire Line
	6700 1850 6800 1850
Wire Wire Line
	7650 1950 7650 2750
Wire Wire Line
	7650 2750 7650 3400
Wire Wire Line
	7650 3400 8100 3400
Connection ~ 7650 2750
$Comp
L power:GND #PWR0113
U 1 1 5D8AB4A6
P 6950 3650
F 0 "#PWR0113" H 6950 3400 50  0001 C CNN
F 1 "GND" H 6955 3477 50  0000 C CNN
F 2 "" H 6950 3650 50  0001 C CNN
F 3 "" H 6950 3650 50  0001 C CNN
	1    6950 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5D8AB97D
P 6500 1400
F 0 "#PWR0114" H 6500 1150 50  0001 C CNN
F 1 "GND" V 6505 1272 50  0000 R CNN
F 2 "" H 6500 1400 50  0001 C CNN
F 3 "" H 6500 1400 50  0001 C CNN
	1    6500 1400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5D8ABE41
P 1050 3650
F 0 "#PWR0115" H 1050 3400 50  0001 C CNN
F 1 "GND" H 1055 3477 50  0000 C CNN
F 2 "" H 1050 3650 50  0001 C CNN
F 3 "" H 1050 3650 50  0001 C CNN
	1    1050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3400 10100 3400
$Comp
L Connector:Conn_Coaxial J4
U 1 1 5D85536F
P 10100 1500
F 0 "J4" H 10200 1475 50  0000 L CNN
F 1 "(galvo + DC bias) OUT" V 10200 1384 50  0000 L CNN
F 2 "my_components:BNC_female_jack_TE_1-1634505-0" H 10100 1500 50  0001 C CNN
F 3 " ~" H 10100 1500 50  0001 C CNN
	1    10100 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5D8AECA7
P 10300 1500
F 0 "#PWR0116" H 10300 1250 50  0001 C CNN
F 1 "GND" H 10305 1327 50  0000 C CNN
F 2 "" H 10300 1500 50  0001 C CNN
F 3 "" H 10300 1500 50  0001 C CNN
	1    10300 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D8AF2D5
P 8950 2200
F 0 "R6" H 9020 2246 50  0000 L CNN
F 1 "1k" H 9020 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8880 2200 50  0001 C CNN
F 3 "~" H 8950 2200 50  0001 C CNN
	1    8950 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D8AFCBE
P 8700 2500
F 0 "R5" H 8770 2546 50  0000 L CNN
F 1 "1k" H 8770 2455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8630 2500 50  0001 C CNN
F 3 "~" H 8700 2500 50  0001 C CNN
	1    8700 2500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5D8B228B
P 8700 2650
F 0 "#PWR0117" H 8700 2400 50  0001 C CNN
F 1 "GND" H 8705 2477 50  0000 C CNN
F 2 "" H 8700 2650 50  0001 C CNN
F 3 "" H 8700 2650 50  0001 C CNN
	1    8700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3400 10100 2200
Wire Wire Line
	10100 2200 9100 2200
Wire Wire Line
	8800 2200 8700 2200
Wire Wire Line
	7900 2200 7900 3300
Wire Wire Line
	7900 3300 8100 3300
Wire Wire Line
	8700 2200 8700 2350
Connection ~ 8700 2200
Wire Wire Line
	8700 2200 7900 2200
Text Notes 8600 3700 0    50   ~ 0
Summing opAmp
$Comp
L power:GND #PWR0118
U 1 1 5D8BA39A
P 1300 3000
F 0 "#PWR0118" H 1300 2750 50  0001 C CNN
F 1 "GND" H 1305 2827 50  0000 C CNN
F 2 "" H 1300 3000 50  0001 C CNN
F 3 "" H 1300 3000 50  0001 C CNN
	1    1300 3000
	1    0    0    -1  
$EndComp
$Comp
L dk_Toggle-Switches:ATE1D-2M3-10-Z S1
U 1 1 5D867143
P 7000 1850
F 0 "S1" H 7000 2131 50  0000 C CNN
F 1 "\"Bypass everything\" switch" H 7300 2050 50  0000 C CNN
F 2 "digikey-footprints:Toggle_Switch_100SP1T1B4M2QE" H 7200 2050 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 7200 2150 60  0001 L CNN
F 4 "563-1157-ND" H 7200 2250 60  0001 L CNN "Digi-Key_PN"
F 5 "ATE1D-2M3-10-Z" H 7200 2350 60  0001 L CNN "MPN"
F 6 "Switches" H 7200 2450 60  0001 L CNN "Category"
F 7 "Toggle Switches" H 7200 2550 60  0001 L CNN "Family"
F 8 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 7200 2650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nidec-copal-electronics/ATE1D-2M3-10-Z/563-1157-ND/1792018" H 7200 2750 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TOGGLE SPDT 50MA 48V" H 7200 2850 60  0001 L CNN "Description"
F 11 "Nidec Copal Electronics" H 7200 2950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7200 3050 60  0001 L CNN "Status"
	1    7000 1850
	1    0    0    -1  
$EndComp
Connection ~ 6800 1850
Wire Wire Line
	6800 1850 6900 1850
Wire Wire Line
	7200 1950 7350 1950
Wire Wire Line
	10100 1700 10100 1750
Connection ~ 10100 2200
Wire Wire Line
	7200 1750 10100 1750
Connection ~ 10100 1750
Wire Wire Line
	10100 1750 10100 2200
Wire Wire Line
	6500 1400 6500 1650
Connection ~ 6450 3450
Wire Wire Line
	6450 3450 6750 3450
Connection ~ 6750 3450
Wire Wire Line
	6750 3450 6950 3450
Wire Wire Line
	6750 3450 6750 2750
Wire Wire Line
	6750 2750 7350 2750
$Comp
L Device:R R2
U 1 1 5D851EBC
P 5900 2850
F 0 "R2" H 5970 2896 50  0000 L CNN
F 1 "10k" H 5970 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5830 2850 50  0001 C CNN
F 3 "~" H 5900 2850 50  0001 C CNN
	1    5900 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 2850 5750 2850
Connection ~ 5450 2850
Wire Wire Line
	6050 2850 6450 2850
$Comp
L Device:R_POT_TRIM RV1
U 1 1 5D882685
P 5600 4100
F 0 "RV1" V 5393 4100 50  0000 C CNN
F 1 "10k" V 5484 4100 50  0000 C CNN
F 2 "digikey-footprints:PinHeader_1x3_P2.5mm_Drill1.1mm" H 5600 4100 50  0001 C CNN
F 3 "~" H 5600 4100 50  0001 C CNN
	1    5600 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 4100 6250 4100
Wire Wire Line
	5450 4100 5150 4100
$Comp
L power:GND #PWR0111
U 1 1 5D88B249
P 5600 4250
F 0 "#PWR0111" H 5600 4000 50  0001 C CNN
F 1 "GND" H 5605 4077 50  0000 C CNN
F 2 "" H 5600 4250 50  0001 C CNN
F 3 "" H 5600 4250 50  0001 C CNN
	1    5600 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV2
U 1 1 5D8713C5
P 9050 4000
F 0 "RV2" V 8843 4000 50  0000 C CNN
F 1 "10k" V 8934 4000 50  0000 C CNN
F 2 "digikey-footprints:PinHeader_1x3_P2.5mm_Drill1.1mm" H 9050 4000 50  0001 C CNN
F 3 "~" H 9050 4000 50  0001 C CNN
	1    9050 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5D871BA4
P 9050 4150
F 0 "#PWR0119" H 9050 3900 50  0001 C CNN
F 1 "GND" H 9055 3977 50  0000 C CNN
F 2 "" H 9050 4150 50  0001 C CNN
F 3 "" H 9050 4150 50  0001 C CNN
	1    9050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3200 8600 3200
Wire Wire Line
	8600 3200 8600 4000
Wire Wire Line
	8600 4000 8900 4000
Wire Wire Line
	9200 4000 9700 4000
Wire Wire Line
	9700 4000 9700 3500
$Comp
L dk_Barrel-Power-Connectors:PJ-202A J5
U 1 1 5D8898E1
P 3750 1600
F 0 "J5" H 3683 1825 50  0000 C CNN
F 1 "PJ-202A" H 3683 1734 50  0000 C CNN
F 2 "digikey-footprints:Barrel_Jack_5.5mmODx2.1mmID_PJ-202A" H 3950 1800 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/pj-202a.pdf" H 3950 1900 60  0001 L CNN
F 4 "CP-202A-ND" H 3950 2000 60  0001 L CNN "Digi-Key_PN"
F 5 "PJ-202A" H 3950 2100 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 3950 2200 60  0001 L CNN "Category"
F 7 "Barrel - Power Connectors" H 3950 2300 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/pj-202a.pdf" H 3950 2400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/PJ-202A/CP-202A-ND/252007" H 3950 2500 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN PWR JACK 2X5.5MM KINKED PIN" H 3950 2600 60  0001 L CNN "Description"
F 11 "CUI Inc." H 3950 2700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3950 2800 60  0001 L CNN "Status"
	1    3750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1600 4350 1600
Wire Wire Line
	3850 1800 3850 2100
Wire Wire Line
	3850 2100 4350 2100
Connection ~ 4350 2100
Text Notes 3400 1250 0    50   ~ 0
Input power 12V
$Comp
L power:GND #PWR0120
U 1 1 5D89C060
P 2650 4100
F 0 "#PWR0120" H 2650 3850 50  0001 C CNN
F 1 "GND" H 2655 3927 50  0000 C CNN
F 2 "" H 2650 4100 50  0001 C CNN
F 3 "" H 2650 4100 50  0001 C CNN
	1    2650 4100
	1    0    0    -1  
$EndComp
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PotaBoard"
Date ""
Rev "R1"
Comp "AnnArn Inc."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PotaBoardLib:ATtiny1604 U3
U 1 1 5FDCF15B
P 6300 3600
F 0 "U3" H 6350 4115 50  0000 C CNN
F 1 "ATtiny1604" H 6350 4024 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6300 3950 50  0001 C CNN
F 3 "" H 6300 3950 50  0001 C CNN
	1    6300 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5FDCFB80
P 2450 5200
F 0 "J1" H 2558 5381 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2558 5290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2450 5200 50  0001 C CNN
F 3 "~" H 2450 5200 50  0001 C CNN
	1    2450 5200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1826S U2
U 1 1 5FDCF422
P 4400 5200
F 0 "U2" H 4400 5442 50  0000 C CNN
F 1 "MCP1826S" H 4400 5351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 4300 5350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22057B.pdf" H 4400 5450 50  0001 C CNN
	1    4400 5200
	1    0    0    -1  
$EndComp
$Comp
L PotaBoardLib:EMB1061 U4
U 1 1 5FDD52E3
P 6700 1000
F 0 "U4" H 7325 1515 50  0000 C CNN
F 1 "EMB1061" H 7325 1424 50  0000 C CNN
F 2 "Pota:EMB1061" H 6700 1450 50  0001 C CNN
F 3 "" H 6700 1450 50  0001 C CNN
	1    6700 1000
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FFCBA99
P 3850 5350
F 0 "C1" H 3965 5396 50  0000 L CNN
F 1 "C" H 3965 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3888 5200 50  0001 C CNN
F 3 "~" H 3850 5350 50  0001 C CNN
	1    3850 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FFCBF1E
P 4900 5350
F 0 "C2" H 5015 5396 50  0000 L CNN
F 1 "4.7uF 1206 Ceramic" H 5015 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4938 5200 50  0001 C CNN
F 3 "~" H 4900 5350 50  0001 C CNN
	1    4900 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5500 3850 5600
Wire Wire Line
	3850 5600 4400 5600
Wire Wire Line
	4900 5600 4900 5500
Wire Wire Line
	4400 5500 4400 5600
Connection ~ 4400 5600
Wire Wire Line
	4400 5600 4900 5600
Wire Wire Line
	4400 5600 4400 5700
$Comp
L power:GND #PWR0101
U 1 1 5FFCD1C7
P 4400 5700
F 0 "#PWR0101" H 4400 5450 50  0001 C CNN
F 1 "GND" H 4405 5527 50  0000 C CNN
F 2 "" H 4400 5700 50  0001 C CNN
F 3 "" H 4400 5700 50  0001 C CNN
	1    4400 5700
	1    0    0    -1  
$EndComp
Connection ~ 3850 5200
Wire Wire Line
	3850 5200 4100 5200
Wire Wire Line
	4700 5200 4900 5200
Connection ~ 4900 5200
Wire Wire Line
	4900 5200 4900 5100
Text Label 3600 5200 0    50   ~ 0
3.7V
Wire Wire Line
	2650 5200 3250 5200
Wire Wire Line
	2650 5300 3400 5300
Wire Wire Line
	3400 5300 3400 5600
Wire Wire Line
	3400 5600 3850 5600
Connection ~ 3850 5600
$Comp
L power:+3.3V #PWR0102
U 1 1 5FFD7320
P 4900 5100
F 0 "#PWR0102" H 4900 4950 50  0001 C CNN
F 1 "+3.3V" H 4915 5273 50  0000 C CNN
F 2 "" H 4900 5100 50  0001 C CNN
F 3 "" H 4900 5100 50  0001 C CNN
	1    4900 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 5FFEDFDF
P 5250 1200
F 0 "#PWR0103" H 5250 1050 50  0001 C CNN
F 1 "+3.3V" H 5265 1373 50  0000 C CNN
F 2 "" H 5250 1200 50  0001 C CNN
F 3 "" H 5250 1200 50  0001 C CNN
	1    5250 1200
	1    0    0    -1  
$EndComp
$Comp
L PotaBoardLib:74HC4052E U1
U 1 1 60017E58
P 4250 3650
F 0 "U1" H 4250 4100 50  0000 C CNN
F 1 "74HC4052E" H 4300 3100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4250 3975 50  0001 C CNN
F 3 "" H 4250 3975 50  0001 C CNN
	1    4250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3850 3950 3850
Wire Wire Line
	3950 4050 3900 4050
Connection ~ 3900 4050
Wire Wire Line
	3900 4050 3900 3950
NoConn ~ 3950 3750
NoConn ~ 3950 3650
NoConn ~ 3950 3550
NoConn ~ 3950 3450
NoConn ~ 3950 3350
Wire Wire Line
	3950 3950 3900 3950
Connection ~ 3900 3950
Wire Wire Line
	3900 3950 3900 3850
Wire Wire Line
	4600 4050 5250 4050
Wire Wire Line
	5250 4050 5250 3750
Wire Wire Line
	5250 3750 5800 3750
Wire Wire Line
	5800 3650 5150 3650
Wire Wire Line
	5150 3650 5150 3950
Wire Wire Line
	5150 3950 4600 3950
Wire Wire Line
	5050 3650 5050 3550
Wire Wire Line
	5050 3550 5800 3550
Wire Wire Line
	5250 1200 5250 1250
Wire Wire Line
	5600 1250 5250 1250
Wire Wire Line
	5000 2100 5000 2000
Wire Wire Line
	5000 1350 5600 1350
Wire Wire Line
	5600 1450 5400 1450
Wire Wire Line
	5400 3850 5800 3850
Wire Wire Line
	5600 1550 5500 1550
Wire Wire Line
	5500 1550 5500 1900
Wire Wire Line
	5500 3950 5800 3950
$Comp
L power:GND #PWR0104
U 1 1 6003DCDF
P 6950 3000
F 0 "#PWR0104" H 6950 2750 50  0001 C CNN
F 1 "GND" H 6955 2827 50  0000 C CNN
F 2 "" H 6950 3000 50  0001 C CNN
F 3 "" H 6950 3000 50  0001 C CNN
	1    6950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3000 6950 2250
Text Label 5400 3350 1    50   ~ 0
Tiny_RX
Text Label 5500 3150 1    50   ~ 0
Tiny_TX
Wire Wire Line
	7400 3950 7400 3850
Wire Wire Line
	7400 3850 7750 3850
Wire Wire Line
	6900 3850 7150 3850
Wire Wire Line
	7150 3850 7150 3750
Wire Wire Line
	7150 3750 8000 3750
$Comp
L power:+3.3V #PWR0105
U 1 1 5FFEF55B
P 8000 2800
F 0 "#PWR0105" H 8000 2650 50  0001 C CNN
F 1 "+3.3V" H 8015 2973 50  0000 C CNN
F 2 "" H 8000 2800 50  0001 C CNN
F 3 "" H 8000 2800 50  0001 C CNN
	1    8000 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FFF1602
P 7750 3200
F 0 "R1" H 7650 3350 50  0000 L CNN
F 1 "2.5kR" V 7650 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7680 3200 50  0001 C CNN
F 3 "~" H 7750 3200 50  0001 C CNN
	1    7750 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FFF228D
P 8000 3200
F 0 "R2" H 7900 3350 50  0000 L CNN
F 1 "2.5kR" V 7900 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7930 3200 50  0001 C CNN
F 3 "~" H 8000 3200 50  0001 C CNN
	1    8000 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3350 8000 3750
Connection ~ 8000 3750
Wire Wire Line
	8000 3750 8750 3750
Wire Wire Line
	8000 2800 8000 2900
Wire Wire Line
	8000 2900 7750 2900
Wire Wire Line
	7750 2900 7750 3050
Wire Wire Line
	8000 2900 8000 3050
Connection ~ 8000 2900
Wire Wire Line
	8000 2900 8350 2900
Wire Wire Line
	8350 2900 8350 3550
Wire Wire Line
	8350 3550 8750 3550
$Comp
L power:GND #PWR0106
U 1 1 5FFF8FA1
P 8600 4200
F 0 "#PWR0106" H 8600 3950 50  0001 C CNN
F 1 "GND" H 8605 4027 50  0000 C CNN
F 2 "" H 8600 4200 50  0001 C CNN
F 3 "" H 8600 4200 50  0001 C CNN
	1    8600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4200 8600 4050
Wire Wire Line
	8600 3650 8750 3650
Text Notes 8100 2850 0    50   ~ 0
i2c pull-up R\n
$Comp
L Device:C C3
U 1 1 60006BAA
P 4950 4300
F 0 "C3" H 5065 4346 50  0000 L CNN
F 1 "C_stab" H 5065 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4988 4150 50  0001 C CNN
F 3 "~" H 4950 4300 50  0001 C CNN
	1    4950 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60008166
P 4450 4600
F 0 "#PWR0107" H 4450 4350 50  0001 C CNN
F 1 "GND" H 4455 4427 50  0000 C CNN
F 2 "" H 4450 4600 50  0001 C CNN
F 3 "" H 4450 4600 50  0001 C CNN
	1    4450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4500 4450 4500
Wire Wire Line
	4950 4500 4950 4450
Wire Wire Line
	3900 4050 3900 4500
Wire Wire Line
	4450 4600 4450 4500
Connection ~ 4450 4500
Wire Wire Line
	4450 4500 3900 4500
Wire Wire Line
	4600 3650 4950 3650
Wire Wire Line
	4950 4150 4950 3650
Connection ~ 4950 3650
Wire Wire Line
	4950 3650 5050 3650
Text Notes 5000 4500 0    50   ~ 0
stab cap
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 600A3DD2
P 4500 1900
F 0 "J2" H 4392 2185 50  0000 C CNN
F 1 "Conn_Ext_UART" H 4650 2100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4500 1900 50  0001 C CNN
F 3 "~" H 4500 1900 50  0001 C CNN
	1    4500 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 1450 5400 1800
$Comp
L power:GND #PWR0108
U 1 1 60032816
P 5000 2100
F 0 "#PWR0108" H 5000 1850 50  0001 C CNN
F 1 "GND" H 5005 1927 50  0000 C CNN
F 2 "" H 5000 2100 50  0001 C CNN
F 3 "" H 5000 2100 50  0001 C CNN
	1    5000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1800 5400 1800
Connection ~ 5400 1800
Wire Wire Line
	5400 1800 5400 3850
Wire Wire Line
	4700 1900 5500 1900
Connection ~ 5500 1900
Wire Wire Line
	5500 1900 5500 3950
Wire Wire Line
	4700 2000 5000 2000
Connection ~ 5000 2000
Wire Wire Line
	5000 2000 5000 1350
$Comp
L power:+3.3V #PWR0109
U 1 1 600B8506
P 4800 1550
F 0 "#PWR0109" H 4800 1400 50  0001 C CNN
F 1 "+3.3V" H 4815 1723 50  0000 C CNN
F 2 "" H 4800 1550 50  0001 C CNN
F 3 "" H 4800 1550 50  0001 C CNN
	1    4800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1550 4800 2100
Wire Wire Line
	4800 2100 4700 2100
NoConn ~ 5600 1950
NoConn ~ 5600 1850
NoConn ~ 5600 1750
NoConn ~ 5600 1650
NoConn ~ 6850 2250
NoConn ~ 6750 2250
NoConn ~ 6650 2250
NoConn ~ 6550 2250
NoConn ~ 6450 2250
NoConn ~ 6350 2250
NoConn ~ 6350 1000
NoConn ~ 6450 1000
NoConn ~ 6550 1000
NoConn ~ 6650 1000
NoConn ~ 6850 1000
NoConn ~ 6950 1000
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60100557
P 4750 6050
F 0 "#FLG0101" H 4750 6125 50  0001 C CNN
F 1 "PWR_FLAG" H 4750 6223 50  0000 C CNN
F 2 "" H 4750 6050 50  0001 C CNN
F 3 "~" H 4750 6050 50  0001 C CNN
	1    4750 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 60100952
P 4750 6100
F 0 "#PWR0110" H 4750 5850 50  0001 C CNN
F 1 "GND" H 4755 5927 50  0000 C CNN
F 2 "" H 4750 6100 50  0001 C CNN
F 3 "" H 4750 6100 50  0001 C CNN
	1    4750 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 6010311B
P 6050 6500
F 0 "H1" H 6150 6546 50  0000 L CNN
F 1 "MountingHole" H 6150 6455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6050 6500 50  0001 C CNN
F 3 "~" H 6050 6500 50  0001 C CNN
	1    6050 6500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6010608D
P 6050 6700
F 0 "H2" H 6150 6746 50  0000 L CNN
F 1 "MountingHole" H 6150 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6050 6700 50  0001 C CNN
F 3 "~" H 6050 6700 50  0001 C CNN
	1    6050 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 601062FF
P 6050 6900
F 0 "H3" H 6150 6946 50  0000 L CNN
F 1 "MountingHole" H 6150 6855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6050 6900 50  0001 C CNN
F 3 "~" H 6050 6900 50  0001 C CNN
	1    6050 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 601064E5
P 6050 7100
F 0 "H4" H 6150 7146 50  0000 L CNN
F 1 "MountingHole" H 6150 7055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6050 7100 50  0001 C CNN
F 3 "~" H 6050 7100 50  0001 C CNN
	1    6050 7100
	1    0    0    -1  
$EndComp
NoConn ~ 6900 3550
NoConn ~ 8750 3950
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 6013044E
P 7350 4750
F 0 "J3" H 7430 4792 50  0000 L CNN
F 1 "Conn_UDPI" H 7430 4701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7350 4750 50  0001 C CNN
F 3 "~" H 7350 4750 50  0001 C CNN
	1    7350 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 60134385
P 7100 4900
F 0 "#PWR0112" H 7100 4650 50  0001 C CNN
F 1 "GND" H 7105 4727 50  0000 C CNN
F 2 "" H 7100 4900 50  0001 C CNN
F 3 "" H 7100 4900 50  0001 C CNN
	1    7100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 601351DF
P 7100 4600
F 0 "#PWR0113" H 7100 4450 50  0001 C CNN
F 1 "+3.3V" H 7250 4700 50  0000 C CNN
F 2 "" H 7100 4600 50  0001 C CNN
F 3 "" H 7100 4600 50  0001 C CNN
	1    7100 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4600 7100 4650
Wire Wire Line
	7100 4650 7150 4650
Wire Wire Line
	7100 4900 7100 4850
Wire Wire Line
	7100 4850 7150 4850
Wire Wire Line
	6950 3750 6950 4750
Wire Wire Line
	6950 4750 7150 4750
Wire Wire Line
	6950 3750 6900 3750
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 60148B4A
P 2500 2950
F 0 "J4" H 2608 3231 50  0000 C CNN
F 1 "Conn_Mux2" H 2608 3140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2500 2950 50  0001 C CNN
F 3 "~" H 2500 2950 50  0001 C CNN
	1    2500 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 60149DF9
P 2500 3400
F 0 "J5" H 2608 3681 50  0000 C CNN
F 1 "Conn_Mux1" H 2608 3590 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2500 3400 50  0001 C CNN
F 3 "~" H 2500 3400 50  0001 C CNN
	1    2500 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 6014A327
P 2500 3850
F 0 "J6" H 2608 4131 50  0000 C CNN
F 1 "Conn_Mux0" H 2608 4040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2500 3850 50  0001 C CNN
F 3 "~" H 2500 3850 50  0001 C CNN
	1    2500 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 6014A7D8
P 2500 4300
F 0 "J7" H 2608 4581 50  0000 C CNN
F 1 "Conn_Mux3" H 2608 4490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2500 4300 50  0001 C CNN
F 3 "~" H 2500 4300 50  0001 C CNN
	1    2500 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4500 2950 4500
Wire Wire Line
	2950 4500 2950 4400
Wire Wire Line
	2950 3050 2700 3050
Connection ~ 3900 4500
Wire Wire Line
	2700 3500 2950 3500
Connection ~ 2950 3500
Wire Wire Line
	2950 3500 2950 3050
Wire Wire Line
	2700 4400 2950 4400
Connection ~ 2950 4400
Wire Wire Line
	2950 4400 2950 3950
Wire Wire Line
	2700 4200 3150 4200
Wire Wire Line
	3150 4200 3150 3750
Wire Wire Line
	2700 2850 3150 2850
Connection ~ 3150 2850
Wire Wire Line
	2700 3300 3150 3300
Connection ~ 3150 3300
Wire Wire Line
	3150 3300 3150 2850
Wire Wire Line
	2700 3750 3150 3750
Connection ~ 3150 3750
Wire Wire Line
	3150 3750 3150 3300
$Comp
L power:+3.3V #PWR0114
U 1 1 6015F713
P 3150 1750
F 0 "#PWR0114" H 3150 1600 50  0001 C CNN
F 1 "+3.3V" H 3165 1923 50  0000 C CNN
F 2 "" H 3150 1750 50  0001 C CNN
F 3 "" H 3150 1750 50  0001 C CNN
	1    3150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2650 3150 2850
Wire Wire Line
	2700 4300 3750 4300
Wire Wire Line
	3750 4300 3750 3000
Wire Wire Line
	3750 3000 4750 3000
Wire Wire Line
	4750 3000 4750 3850
Wire Wire Line
	4750 3850 4600 3850
Wire Wire Line
	4600 3750 4850 3750
Wire Wire Line
	4850 3750 4850 2950
Wire Wire Line
	4850 2950 3600 2950
Wire Wire Line
	3600 2950 3600 3850
Wire Wire Line
	3600 3850 2700 3850
Wire Wire Line
	4600 3550 4700 3550
Wire Wire Line
	4700 3550 4700 3100
Wire Wire Line
	4700 3100 3850 3100
Wire Wire Line
	3850 3100 3850 3400
Wire Wire Line
	3850 3400 2700 3400
Wire Wire Line
	4650 3450 4650 2900
Wire Wire Line
	4650 2900 3250 2900
Wire Wire Line
	3250 2900 3250 2950
Wire Wire Line
	3250 2950 2700 2950
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 601A6020
P 3250 5100
F 0 "#FLG0102" H 3250 5175 50  0001 C CNN
F 1 "PWR_FLAG" H 3250 5273 50  0000 C CNN
F 2 "" H 3250 5100 50  0001 C CNN
F 3 "~" H 3250 5100 50  0001 C CNN
	1    3250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5100 3250 5200
Connection ~ 3250 5200
Wire Wire Line
	3250 5200 3500 5200
Wire Wire Line
	2700 3950 2950 3950
Connection ~ 2950 3950
Wire Wire Line
	2950 3950 2950 3500
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 60146F1B
P 3250 2350
F 0 "Q1" H 3100 2100 50  0000 L CNN
F 1 "SI2369DS" H 2850 2200 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 3450 2450 50  0001 C CNN
F 3 "~" H 3250 2350 50  0001 C CNN
	1    3250 2350
	-1   0    0    1   
$EndComp
Text Label 3250 2650 0    50   ~ 0
V_m
Wire Wire Line
	4600 3350 5050 3350
Wire Wire Line
	5050 3350 5050 2650
Wire Wire Line
	3150 2650 4750 2650
Wire Wire Line
	3150 2650 3150 2600
Connection ~ 3150 2650
Text Notes 3450 2600 0    50   ~ 0
Voltage Supply Cmded by MCU
Wire Wire Line
	3150 2150 3150 2000
Wire Wire Line
	4600 3450 4650 3450
Wire Wire Line
	3450 2350 5200 2350
Wire Wire Line
	5200 2350 5200 3450
Wire Wire Line
	5200 3450 5800 3450
Text Label 3500 2350 0    50   ~ 0
V_cmd
Text Label 5550 3450 0    50   ~ 0
V_cmd
Text Label 5550 3650 0    50   ~ 0
Mux_S0
Text Label 5550 3750 0    50   ~ 0
Mux_S1
Text Label 5100 3550 0    50   ~ 0
Mux_out
$Comp
L power:+3.3V #PWR01
U 1 1 601D466C
P 5700 3200
F 0 "#PWR01" H 5700 3050 50  0001 C CNN
F 1 "+3.3V" H 5715 3373 50  0000 C CNN
F 2 "" H 5700 3200 50  0001 C CNN
F 3 "" H 5700 3200 50  0001 C CNN
	1    5700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3200 5700 3350
Wire Wire Line
	5700 3350 5800 3350
Text Label 6950 4600 1    50   ~ 0
Tiny_RST
Text Label 4900 3350 0    50   ~ 0
V_m
$Comp
L Device:Jumper JP1
U 1 1 601E388A
P 2950 2300
F 0 "JP1" V 3000 2600 50  0000 R CNN
F 1 "Jumper" V 2900 2700 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2950 2300 50  0001 C CNN
F 3 "~" H 2950 2300 50  0001 C CNN
	1    2950 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 2600 3150 2600
Connection ~ 3150 2600
Wire Wire Line
	3150 2600 3150 2550
Wire Wire Line
	2950 2000 3150 2000
Connection ~ 3150 2000
Wire Wire Line
	3150 2000 3150 1750
Text Label 8000 3700 1    50   ~ 0
Tiny_SCL
Text Label 7750 3700 1    50   ~ 0
Tiny_SDA
$Comp
L PotaBoardLib:Push_Button SW1
U 1 1 60206494
P 8400 5050
F 0 "SW1" H 8400 5375 50  0000 C CNN
F 1 "Push_Button" H 8400 5284 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 8400 5400 50  0001 C CNN
F 3 "" H 8400 5400 50  0001 C CNN
	1    8400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5150 8050 5150
Wire Wire Line
	8050 5150 8050 5300
Wire Wire Line
	8750 5300 8750 5150
Wire Wire Line
	8750 5150 8650 5150
Wire Wire Line
	8050 5300 8400 5300
Text Label 9100 4950 0    50   ~ 0
Tiny_RST
$Comp
L Device:R R3
U 1 1 6021F2CB
P 8950 4550
F 0 "R3" H 9020 4596 50  0000 L CNN
F 1 "R" H 9020 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8880 4550 50  0001 C CNN
F 3 "~" H 8950 4550 50  0001 C CNN
	1    8950 4550
	1    0    0    -1  
$EndComp
Connection ~ 8400 5300
Wire Wire Line
	8400 5300 8750 5300
$Comp
L power:GND #PWR02
U 1 1 6022561D
P 8400 5500
F 0 "#PWR02" H 8400 5250 50  0001 C CNN
F 1 "GND" H 8405 5327 50  0000 C CNN
F 2 "" H 8400 5500 50  0001 C CNN
F 3 "" H 8400 5500 50  0001 C CNN
	1    8400 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 60235DD9
P 8950 4300
F 0 "#PWR03" H 8950 4150 50  0001 C CNN
F 1 "+3.3V" H 9100 4400 50  0000 C CNN
F 2 "" H 8950 4300 50  0001 C CNN
F 3 "" H 8950 4300 50  0001 C CNN
	1    8950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4950 9100 4950
Connection ~ 8950 4950
Wire Wire Line
	8950 4400 8950 4300
Wire Wire Line
	8400 5300 8400 5500
Wire Wire Line
	8650 4950 8950 4950
Wire Wire Line
	8950 4700 8950 4950
Text Label 8150 4950 2    50   ~ 0
Tiny_RST
$Comp
L PotaBoardLib:BMP280 U5
U 1 1 5FFE59D1
P 9050 3800
F 0 "U5" H 9278 3851 50  0000 L CNN
F 1 "BMP280" H 9278 3760 50  0000 L CNN
F 2 "Pota:BMP280" H 8750 4500 50  0001 C CNN
F 3 "" H 8750 4500 50  0001 C CNN
	1    9050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4050 8600 4050
Connection ~ 8600 4050
Wire Wire Line
	8600 4050 8600 3650
$Comp
L Device:R R4
U 1 1 602B31D3
P 2750 5750
F 0 "R4" H 2820 5796 50  0000 L CNN
F 1 "500kR" H 2820 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2680 5750 50  0001 C CNN
F 3 "~" H 2750 5750 50  0001 C CNN
	1    2750 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 602B34E7
P 2750 6150
F 0 "R5" H 2820 6196 50  0000 L CNN
F 1 "500kR" H 2820 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2680 6150 50  0001 C CNN
F 3 "~" H 2750 6150 50  0001 C CNN
	1    2750 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 602B3784
P 2900 6450
F 0 "#PWR0115" H 2900 6200 50  0001 C CNN
F 1 "GND" H 2905 6277 50  0000 C CNN
F 2 "" H 2900 6450 50  0001 C CNN
F 3 "" H 2900 6450 50  0001 C CNN
	1    2900 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6350 2750 6300
Wire Wire Line
	2750 6000 2750 5950
Wire Wire Line
	2750 5600 2750 5550
Wire Wire Line
	2750 5550 2550 5550
Text Label 2550 5550 0    50   ~ 0
3.7V
Wire Wire Line
	2750 5950 3200 5950
Connection ~ 2750 5950
Wire Wire Line
	2750 5950 2750 5900
$Comp
L Device:C C4
U 1 1 602CE395
P 3200 6150
F 0 "C4" H 3315 6196 50  0000 L CNN
F 1 "10uF" H 3315 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3238 6000 50  0001 C CNN
F 3 "~" H 3200 6150 50  0001 C CNN
	1    3200 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6350 2900 6350
Wire Wire Line
	3200 6350 3200 6300
Wire Wire Line
	2900 6350 2900 6450
Connection ~ 2900 6350
Wire Wire Line
	2900 6350 3200 6350
Wire Wire Line
	3200 6000 3200 5950
Connection ~ 3200 5950
Wire Wire Line
	3200 5950 3400 5950
Text Label 3400 5950 0    50   ~ 0
V_bat
Text Label 6950 3450 0    50   ~ 0
V_bat
$Comp
L Connector:TestPoint TP4
U 1 1 6019F2D0
P 5350 5100
F 0 "TP4" H 5408 5218 50  0000 L CNN
F 1 "TestPoint" H 5408 5127 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 5550 5100 50  0001 C CNN
F 3 "~" H 5550 5100 50  0001 C CNN
	1    5350 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5200 5350 5200
Wire Wire Line
	5350 5200 5350 5100
$Comp
L Connector:TestPoint TP1
U 1 1 601A9A8F
P 3500 5100
F 0 "TP1" H 3558 5218 50  0000 L CNN
F 1 "TestPoint" H 3558 5127 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 3700 5100 50  0001 C CNN
F 3 "~" H 3700 5100 50  0001 C CNN
	1    3500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5100 3500 5200
Connection ~ 3500 5200
Wire Wire Line
	3500 5200 3850 5200
$Comp
L Connector:TestPoint TP3
U 1 1 601B1F24
P 5050 6100
F 0 "TP3" H 5108 6218 50  0000 L CNN
F 1 "TestPoint" H 5108 6127 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 5250 6100 50  0001 C CNN
F 3 "~" H 5250 6100 50  0001 C CNN
	1    5050 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 601B25B8
P 5050 6100
F 0 "#PWR0116" H 5050 5850 50  0001 C CNN
F 1 "GND" H 5055 5927 50  0000 C CNN
F 2 "" H 5050 6100 50  0001 C CNN
F 3 "" H 5050 6100 50  0001 C CNN
	1    5050 6100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 601B4AEE
P 4750 2600
F 0 "TP2" H 4808 2718 50  0000 L CNN
F 1 "TestPoint" H 4808 2627 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 4950 2600 50  0001 C CNN
F 3 "~" H 4950 2600 50  0001 C CNN
	1    4750 2600
	1    0    0    -1  
$EndComp
Connection ~ 4750 2650
Wire Wire Line
	4750 2650 5050 2650
Wire Wire Line
	4750 2600 4750 2650
Wire Wire Line
	7750 3350 7750 3850
Connection ~ 7750 3850
Wire Wire Line
	7750 3850 8750 3850
Wire Wire Line
	6900 3950 7400 3950
Wire Wire Line
	6900 3650 7350 3650
Wire Wire Line
	7350 3650 7350 800 
Wire Wire Line
	7350 800  6750 800 
Wire Wire Line
	6750 800  6750 1000
Text Label 6950 3650 0    50   ~ 0
BLE_Reset
Text Label 6950 3350 0    50   ~ 0
GND
Wire Wire Line
	6900 3350 6950 3350
Wire Wire Line
	6950 3450 6900 3450
Text Label 4600 4500 0    50   ~ 0
GND
Text Label 6950 800  0    50   ~ 0
BLE_Reset
Wire Wire Line
	4750 6050 4750 6100
Text Notes 8500 3400 0    50   ~ 0
Temperature & Pressure Sensor
Text Notes 5700 850  0    50   ~ 0
BLE Module
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "TK-80_EXT-BOARD"
Date "2022-01-14"
Rev "Rev1.7"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Intel:8080A U1
U 1 1 6661F740
P 1700 3250
F 0 "U1" H 1400 5050 50  0000 C CNN
F 1 "8080A" H 2000 5050 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_LongPads" H 1700 3850 50  0001 C CNN
F 3 "http://datasheets.chipdb.org/Intel/MCS-80/intel-8080.pdf" H 1700 3850 50  0001 C CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
$Comp
L MCU_Intel:8080A U2
U 1 1 66620DC1
P 3500 3250
F 0 "U2" H 3200 5050 50  0000 C CNN
F 1 "8080A SOCKET" H 3950 5050 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_LongPads" H 3500 3850 50  0001 C CNN
F 3 "http://datasheets.chipdb.org/Intel/MCS-80/intel-8080.pdf" H 3500 3850 50  0001 C CNN
	1    3500 3250
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:HM62256BLP U7
U 1 1 66622A0A
P 9400 2250
F 0 "U7" H 9100 3150 50  0000 C CNN
F 1 "HM62256BLP" H 9750 3150 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 9400 2150 50  0001 C CNN
F 3 "https://web.mit.edu/6.115/www/document/62256.pdf" H 9400 2150 50  0001 C CNN
	1    9400 2250
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM2:GAL22V10 U5
U 1 1 6662337A
P 9350 5250
F 0 "U5" H 9050 5950 50  0000 C CNN
F 1 "GAL22V10" H 9700 5900 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_LongPads" H 9350 5250 50  0001 C CNN
F 3 "" H 9350 5250 50  0001 C CNN
	1    9350 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1650 2400 1650
Wire Wire Line
	2200 1750 2400 1750
Wire Wire Line
	2200 1850 2400 1850
Wire Wire Line
	2200 1950 2400 1950
Wire Wire Line
	2200 2050 2400 2050
Wire Wire Line
	2200 2150 2400 2150
Wire Wire Line
	2200 2250 2400 2250
Wire Wire Line
	2200 2350 2400 2350
Wire Wire Line
	2200 2450 2400 2450
Wire Wire Line
	2200 2550 2400 2550
Wire Wire Line
	2200 2650 2400 2650
Wire Wire Line
	2200 2750 2400 2750
Wire Wire Line
	2200 2850 2400 2850
Wire Wire Line
	2200 2950 2400 2950
Wire Wire Line
	2200 3050 2400 3050
Wire Wire Line
	2200 3350 2400 3350
Wire Wire Line
	2200 3450 2400 3450
Wire Wire Line
	2200 3550 2400 3550
Wire Wire Line
	2200 3650 2400 3650
Wire Wire Line
	2200 3750 2400 3750
Wire Wire Line
	2200 3850 2400 3850
Wire Wire Line
	2200 4550 2400 4550
Wire Wire Line
	2200 4650 2400 4650
Wire Wire Line
	2200 4750 2400 4750
Wire Wire Line
	2200 3150 2400 3150
Wire Wire Line
	2200 3950 2400 3950
Wire Wire Line
	2200 4050 2400 4050
Wire Wire Line
	2200 4850 2400 4850
Wire Wire Line
	2200 4250 2400 4250
Wire Wire Line
	2200 4350 2400 4350
Wire Wire Line
	1200 4550 950  4550
Wire Wire Line
	1200 4650 950  4650
Wire Wire Line
	1200 4750 950  4750
Wire Wire Line
	1800 1450 1800 1200
Wire Wire Line
	1800 5050 1800 5300
Text Label 2250 1650 0    50   ~ 0
A0
Text Label 2250 1750 0    50   ~ 0
A1
Text Label 2250 1850 0    50   ~ 0
A2
Text Label 2250 1950 0    50   ~ 0
A3
Text Label 2250 2050 0    50   ~ 0
A4
Text Label 2250 2150 0    50   ~ 0
A5
Text Label 2250 2250 0    50   ~ 0
A6
Text Label 1600 1350 0    50   ~ 0
+5V
Text Label 1800 1350 0    50   ~ 0
+12V
Text Label 850  1850 0    50   ~ 0
RESET
Text Label 850  2050 0    50   ~ 0
CLOCK1
Text Label 850  2150 0    50   ~ 0
CLOCK2
Wire Wire Line
	850  1850 1200 1850
Wire Wire Line
	850  2050 1200 2050
Wire Wire Line
	850  2150 1200 2150
Text Label 2250 2350 0    50   ~ 0
A7
Text Label 2250 2450 0    50   ~ 0
A8
Text Label 2250 2550 0    50   ~ 0
A9
Text Label 2250 2650 0    50   ~ 0
A10
Text Label 2250 2750 0    50   ~ 0
A11
Text Label 2250 2850 0    50   ~ 0
A12
Text Label 2250 2950 0    50   ~ 0
A13
Text Label 2250 3050 0    50   ~ 0
A14
Text Label 2250 3150 0    50   ~ 0
A15
Text Label 2250 3350 0    50   ~ 0
D0
Text Label 2250 3450 0    50   ~ 0
D1
Text Label 2250 3550 0    50   ~ 0
D2
Text Label 2250 3650 0    50   ~ 0
D3
Text Label 2250 3750 0    50   ~ 0
D4
Text Label 2250 3850 0    50   ~ 0
D5
Text Label 2250 3950 0    50   ~ 0
D6
Text Label 2250 4050 0    50   ~ 0
D7
Text Label 2250 4250 0    50   ~ 0
DBIN
Text Label 2250 4350 0    50   ~ 0
~WR
Text Label 2250 4550 0    50   ~ 0
HLDA
Text Label 2250 4650 0    50   ~ 0
WAIT
Text Label 2250 4750 0    50   ~ 0
INTE
Text Label 2250 4850 0    50   ~ 0
SYNC
Text Label 1600 5200 0    50   ~ 0
GND
Text Label 1800 5200 0    50   ~ 0
-5V
Wire Wire Line
	3400 1450 3400 1200
Wire Wire Line
	3600 1450 3600 1200
Text Label 3400 1350 0    50   ~ 0
+5V
Text Label 3600 1350 0    50   ~ 0
+12V
Wire Wire Line
	4000 1750 4200 1750
Wire Wire Line
	4000 1850 4200 1850
Wire Wire Line
	4000 1950 4200 1950
Wire Wire Line
	4000 2050 4200 2050
Wire Wire Line
	4000 2150 4200 2150
Wire Wire Line
	4000 2250 4200 2250
Wire Wire Line
	4000 2350 4200 2350
Wire Wire Line
	4000 2450 4200 2450
Wire Wire Line
	4000 2550 4200 2550
Wire Wire Line
	4000 2650 4200 2650
Wire Wire Line
	4000 2750 4200 2750
Wire Wire Line
	4000 2850 4200 2850
Wire Wire Line
	4000 2950 4200 2950
Wire Wire Line
	4000 3050 4200 3050
Wire Wire Line
	4000 3350 4200 3350
Wire Wire Line
	4000 3450 4200 3450
Wire Wire Line
	4000 3550 4200 3550
Wire Wire Line
	4000 3650 4200 3650
Wire Wire Line
	4000 3750 4200 3750
Wire Wire Line
	4000 3850 4200 3850
Wire Wire Line
	4000 4550 4200 4550
Wire Wire Line
	4000 4650 4200 4650
Wire Wire Line
	4000 4750 4200 4750
Wire Wire Line
	4000 3950 4200 3950
Wire Wire Line
	4000 4050 4200 4050
Wire Wire Line
	4000 4850 4200 4850
Wire Wire Line
	4000 4250 4200 4250
Wire Wire Line
	4000 4350 4200 4350
Text Label 4050 1650 0    50   ~ 0
A0
Text Label 4050 1750 0    50   ~ 0
A1
Text Label 4050 1850 0    50   ~ 0
A2
Text Label 4050 1950 0    50   ~ 0
A3
Text Label 4050 2050 0    50   ~ 0
A4
Text Label 4050 2150 0    50   ~ 0
A5
Text Label 4050 2250 0    50   ~ 0
A6
Text Label 4050 2350 0    50   ~ 0
A7
Text Label 4050 2450 0    50   ~ 0
A8
Text Label 4050 2550 0    50   ~ 0
A9
Text Label 4050 2650 0    50   ~ 0
A10
Text Label 4050 2750 0    50   ~ 0
A11
Text Label 4050 2850 0    50   ~ 0
A12
Text Label 4050 2950 0    50   ~ 0
A13
Text Label 4050 3050 0    50   ~ 0
A14
Text Label 4050 3150 0    50   ~ 0
A15
Text Label 4050 3350 0    50   ~ 0
D0
Text Label 4050 3450 0    50   ~ 0
D1
Text Label 4050 3550 0    50   ~ 0
D2
Text Label 4050 3650 0    50   ~ 0
D3
Text Label 4050 3750 0    50   ~ 0
D4
Text Label 4050 3850 0    50   ~ 0
D5
Text Label 4050 3950 0    50   ~ 0
D6
Text Label 4050 4050 0    50   ~ 0
D7
Text Label 4050 4250 0    50   ~ 0
DBIN
Text Label 4050 4350 0    50   ~ 0
~WR
Text Label 4050 4550 0    50   ~ 0
HLDA
Text Label 4050 4650 0    50   ~ 0
WAIT
Text Label 4050 4750 0    50   ~ 0
INTE
Text Label 4050 4850 0    50   ~ 0
SYNC
Text Label 2650 1850 0    50   ~ 0
RESET
Text Label 2650 2050 0    50   ~ 0
CLOCK1
Text Label 2650 2150 0    50   ~ 0
CLOCK2
Wire Wire Line
	2650 1850 3000 1850
Wire Wire Line
	2650 2050 3000 2050
Wire Wire Line
	2650 2150 3000 2150
Wire Wire Line
	3400 5050 3400 5300
Wire Wire Line
	3600 5050 3600 5300
Text Label 3400 5200 0    50   ~ 0
GND
Text Label 3600 5200 0    50   ~ 0
-5V
Text Label 950  4550 0    50   ~ 0
HOLD
Text Label 950  4650 0    50   ~ 0
READY
Text Label 950  4750 0    50   ~ 0
INT
Wire Wire Line
	3000 4550 2750 4550
Wire Wire Line
	3000 4650 2750 4650
Wire Wire Line
	3000 4750 2750 4750
Text Label 2750 4550 0    50   ~ 0
HOLD
Text Label 2750 4650 0    50   ~ 0
READY
Text Label 2750 4750 0    50   ~ 0
INT
Wire Wire Line
	4000 1650 4200 1650
Wire Wire Line
	6200 1700 6400 1700
Wire Wire Line
	6200 1800 6400 1800
Wire Wire Line
	6200 1900 6400 1900
Wire Wire Line
	6200 2000 6400 2000
Wire Wire Line
	6200 2100 6400 2100
Wire Wire Line
	6200 2200 6400 2200
Wire Wire Line
	6200 2300 6400 2300
Wire Wire Line
	6200 2400 6400 2400
Wire Wire Line
	6200 2500 6400 2500
Wire Wire Line
	6200 2600 6400 2600
Wire Wire Line
	6200 2700 6400 2700
Wire Wire Line
	6200 2800 6400 2800
Wire Wire Line
	5150 4550 5350 4550
Wire Wire Line
	5150 3650 5350 3650
Text Label 6250 1600 0    50   ~ 0
A0
Text Label 6250 1700 0    50   ~ 0
A1
Text Label 6250 1800 0    50   ~ 0
A2
Text Label 6250 1900 0    50   ~ 0
A3
Text Label 6250 2000 0    50   ~ 0
A4
Text Label 6250 2100 0    50   ~ 0
A5
Text Label 6250 2200 0    50   ~ 0
A6
Text Label 6250 2300 0    50   ~ 0
A7
Text Label 6250 2400 0    50   ~ 0
A8
Text Label 6250 2500 0    50   ~ 0
A9
Text Label 6250 2600 0    50   ~ 0
A10
Text Label 6250 2700 0    50   ~ 0
A11
Text Label 6250 2800 0    50   ~ 0
A12
Text Label 5200 4550 0    50   ~ 0
A13
Text Label 5200 3650 0    50   ~ 0
A14
Wire Wire Line
	6200 1600 6400 1600
Wire Wire Line
	7200 1600 7400 1600
Wire Wire Line
	7200 1700 7400 1700
Wire Wire Line
	7200 1800 7400 1800
Wire Wire Line
	7200 1900 7400 1900
Wire Wire Line
	7200 2000 7400 2000
Wire Wire Line
	7200 2100 7400 2100
Wire Wire Line
	7200 2200 7400 2200
Wire Wire Line
	7200 2300 7400 2300
Text Label 7250 1600 0    50   ~ 0
DB0
Text Label 7250 1700 0    50   ~ 0
DB1
Text Label 7250 1800 0    50   ~ 0
DB2
Text Label 7250 1900 0    50   ~ 0
DB3
Text Label 7250 2000 0    50   ~ 0
DB4
Text Label 7250 2100 0    50   ~ 0
DB5
Text Label 7250 2200 0    50   ~ 0
DB6
Text Label 7250 2300 0    50   ~ 0
DB7
Text Label 6800 1300 0    50   ~ 0
+5V
Wire Wire Line
	6800 3600 6800 3650
Text Label 6800 3750 0    50   ~ 0
GND
Wire Wire Line
	4000 3150 4200 3150
Wire Wire Line
	8700 1650 8900 1650
Wire Wire Line
	8700 1750 8900 1750
Wire Wire Line
	8700 1850 8900 1850
Wire Wire Line
	8700 1950 8900 1950
Wire Wire Line
	8700 2050 8900 2050
Wire Wire Line
	8700 2150 8900 2150
Wire Wire Line
	8700 2250 8900 2250
Wire Wire Line
	8700 2350 8900 2350
Wire Wire Line
	8700 2450 8900 2450
Wire Wire Line
	8700 2550 8900 2550
Wire Wire Line
	8700 2650 8900 2650
Wire Wire Line
	8700 2750 8900 2750
Wire Wire Line
	8700 2850 8900 2850
Wire Wire Line
	8700 2950 8900 2950
Text Label 8750 1550 0    50   ~ 0
A0
Text Label 8750 1650 0    50   ~ 0
A1
Text Label 8750 1750 0    50   ~ 0
A2
Text Label 8750 1850 0    50   ~ 0
A3
Text Label 8750 1950 0    50   ~ 0
A4
Text Label 8750 2050 0    50   ~ 0
A5
Text Label 8750 2150 0    50   ~ 0
A6
Text Label 8750 2250 0    50   ~ 0
A7
Text Label 8750 2350 0    50   ~ 0
A8
Text Label 8750 2450 0    50   ~ 0
A9
Text Label 8750 2550 0    50   ~ 0
A10
Text Label 8750 2650 0    50   ~ 0
A11
Text Label 8750 2750 0    50   ~ 0
A12
Text Label 8750 2850 0    50   ~ 0
A13
Text Label 8750 2950 0    50   ~ 0
A14
Wire Wire Line
	8700 1550 8900 1550
Wire Wire Line
	8650 4750 8850 4750
Wire Wire Line
	8650 4850 8850 4850
Wire Wire Line
	8650 4950 8850 4950
Text Label 8700 4750 0    50   ~ 0
A12
Text Label 8700 4850 0    50   ~ 0
A13
Text Label 8700 4950 0    50   ~ 0
A14
Wire Wire Line
	8650 5050 8850 5050
Text Label 8700 5050 0    50   ~ 0
A15
Wire Wire Line
	8650 5250 8850 5250
Text Label 8650 5250 0    50   ~ 0
~MEMW
Wire Wire Line
	8650 5150 8850 5150
Text Label 8650 5150 0    50   ~ 0
~MEMR
Wire Wire Line
	10350 2450 9900 2450
Wire Wire Line
	6200 4150 10200 4150
Wire Wire Line
	9850 4850 10350 4850
Wire Wire Line
	10350 4850 10350 2450
Wire Wire Line
	9400 1350 9400 1250
Text Label 9400 1250 0    50   ~ 0
+5V
Wire Wire Line
	9400 3150 9400 3200
Text Label 9400 3300 0    50   ~ 0
GND
Wire Wire Line
	9350 4550 9350 4500
Text Label 9350 4450 0    50   ~ 0
+5V
Wire Wire Line
	9350 5950 9350 6000
Text Label 9350 6100 0    50   ~ 0
GND
Wire Wire Line
	6400 3400 6200 3400
Wire Wire Line
	6200 3400 6200 4150
Wire Wire Line
	6400 3300 6300 3300
Wire Wire Line
	6300 3300 6300 3650
Wire Wire Line
	6300 3650 6800 3650
Connection ~ 6800 3650
Wire Wire Line
	6800 3650 6800 3850
Wire Wire Line
	9850 4950 10450 4950
Wire Wire Line
	10450 4950 10450 2750
Wire Wire Line
	10450 2750 9900 2750
Wire Wire Line
	9900 2650 10050 2650
Wire Wire Line
	10050 2650 10050 3200
Wire Wire Line
	10050 3200 9400 3200
Connection ~ 9400 3200
Wire Wire Line
	9400 3200 9400 3400
$Comp
L Device:C C1
U 1 1 667BF7CB
P 7650 2350
F 0 "C1" H 7765 2396 50  0000 L CNN
F 1 "0.1uF" H 7765 2305 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 7688 2200 50  0001 C CNN
F 3 "~" H 7650 2350 50  0001 C CNN
	1    7650 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 667C0262
P 8350 2350
F 0 "C2" H 8465 2396 50  0000 L CNN
F 1 "0.1uF" H 8465 2305 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 8388 2200 50  0001 C CNN
F 3 "~" H 8350 2350 50  0001 C CNN
	1    8350 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 667C0BE1
P 10050 5400
F 0 "C3" H 10165 5446 50  0000 L CNN
F 1 "0.1uF" H 10165 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 10088 5250 50  0001 C CNN
F 3 "~" H 10050 5400 50  0001 C CNN
	1    10050 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2200 7650 1350
Wire Wire Line
	7650 2500 7650 3650
Wire Wire Line
	8350 2200 8350 1250
Wire Wire Line
	8350 1250 9400 1250
Connection ~ 9400 1250
Wire Wire Line
	9400 1250 9400 1100
Wire Wire Line
	8350 2500 8350 3200
Wire Wire Line
	8350 3200 9400 3200
Wire Wire Line
	10050 5250 10050 4500
Wire Wire Line
	10050 4500 9350 4500
Connection ~ 9350 4500
Wire Wire Line
	9350 4500 9350 4300
Wire Wire Line
	10050 5550 10050 6000
Wire Wire Line
	10050 6000 9350 6000
Connection ~ 9350 6000
Wire Wire Line
	9350 6000 9350 6200
NoConn ~ 9850 5250
NoConn ~ 9850 5350
NoConn ~ 9850 5450
NoConn ~ 9850 5550
NoConn ~ 9850 5650
NoConn ~ 9850 5750
$Comp
L power:+5V #PWR0101
U 1 1 66887AEA
P 1600 1050
F 0 "#PWR0101" H 1600 900 50  0001 C CNN
F 1 "+5V" H 1615 1223 50  0000 C CNN
F 2 "" H 1600 1050 50  0001 C CNN
F 3 "" H 1600 1050 50  0001 C CNN
	1    1600 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 66888A1F
P 1600 5450
F 0 "#PWR0102" H 1600 5200 50  0001 C CNN
F 1 "GND" H 1605 5277 50  0000 C CNN
F 2 "" H 1600 5450 50  0001 C CNN
F 3 "" H 1600 5450 50  0001 C CNN
	1    1600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5050 1600 5350
Wire Wire Line
	1600 1050 1600 1150
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6689F628
P 1300 1050
F 0 "#FLG0101" H 1300 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 1223 50  0000 C CNN
F 2 "" H 1300 1050 50  0001 C CNN
F 3 "~" H 1300 1050 50  0001 C CNN
	1    1300 1050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 668A14C2
P 1300 5350
F 0 "#FLG0102" H 1300 5425 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 5523 50  0000 C CNN
F 2 "" H 1300 5350 50  0001 C CNN
F 3 "~" H 1300 5350 50  0001 C CNN
	1    1300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5350 1600 5350
Connection ~ 1600 5350
Wire Wire Line
	1600 5350 1600 5450
Wire Wire Line
	1300 1050 1300 1150
Wire Wire Line
	1300 1150 1600 1150
Connection ~ 1600 1150
Wire Wire Line
	1600 1150 1600 1450
Wire Wire Line
	8650 5350 8850 5350
Wire Wire Line
	8650 5450 8850 5450
Wire Wire Line
	8650 5550 8850 5550
Text Label 8700 5350 0    50   ~ 0
A8
Text Label 8700 5450 0    50   ~ 0
A9
Text Label 8700 5550 0    50   ~ 0
A10
Wire Wire Line
	8650 5650 8850 5650
Text Label 8700 5650 0    50   ~ 0
A11
NoConn ~ 9850 4750
Wire Wire Line
	10200 5050 9850 5050
Wire Wire Line
	10200 4150 10200 5050
$Comp
L Memory_RAM2:8228 U3
U 1 1 66877516
P 11500 2450
F 0 "U3" H 11250 3450 50  0000 C CNN
F 1 "8228" H 11700 3450 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 11500 3675 50  0001 C CNN
F 3 "" H 11500 2450 50  0001 C CNN
	1    11500 2450
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM2:8228 U4
U 1 1 66939A33
P 13150 2450
F 0 "U4" H 12850 3450 50  0000 C CNN
F 1 "8228 SOCKET" H 13450 3450 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 13150 3675 50  0001 C CNN
F 3 "" H 13150 2450 50  0001 C CNN
	1    13150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1550 10100 1550
Wire Wire Line
	9900 1650 10100 1650
Wire Wire Line
	9900 1750 10100 1750
Wire Wire Line
	9900 1850 10100 1850
Wire Wire Line
	9900 1950 10100 1950
Wire Wire Line
	9900 2050 10100 2050
Wire Wire Line
	9900 2150 10100 2150
Wire Wire Line
	9900 2250 10100 2250
Text Label 9950 1550 0    50   ~ 0
DB0
Text Label 9950 1650 0    50   ~ 0
DB1
Text Label 9950 1750 0    50   ~ 0
DB2
Text Label 9950 1850 0    50   ~ 0
DB3
Text Label 9950 1950 0    50   ~ 0
DB4
Text Label 9950 2050 0    50   ~ 0
DB5
Text Label 9950 2150 0    50   ~ 0
DB6
Text Label 9950 2250 0    50   ~ 0
DB7
Wire Wire Line
	11900 2350 12100 2350
Wire Wire Line
	11900 2250 12100 2250
Wire Wire Line
	11900 2150 12100 2150
Wire Wire Line
	11900 2050 12100 2050
Wire Wire Line
	11900 1950 12100 1950
Wire Wire Line
	11900 1850 12100 1850
Wire Wire Line
	11900 1750 12100 1750
Wire Wire Line
	11900 1650 12100 1650
Text Label 11950 2350 0    50   ~ 0
DB0
Text Label 11950 2250 0    50   ~ 0
DB1
Text Label 11950 2150 0    50   ~ 0
DB2
Text Label 11950 2050 0    50   ~ 0
DB3
Text Label 11950 1950 0    50   ~ 0
DB4
Text Label 11950 1850 0    50   ~ 0
DB5
Text Label 11950 1750 0    50   ~ 0
DB6
Text Label 11950 1650 0    50   ~ 0
DB7
Wire Wire Line
	10750 2350 11100 2350
Wire Wire Line
	10750 2250 11100 2250
Wire Wire Line
	10750 2150 11100 2150
Wire Wire Line
	10750 2050 11100 2050
Wire Wire Line
	10750 1950 11100 1950
Wire Wire Line
	10750 1850 11100 1850
Wire Wire Line
	10750 1750 11100 1750
Wire Wire Line
	10750 1650 11100 1650
Text Label 10800 2350 0    50   ~ 0
DC0
Text Label 10800 2250 0    50   ~ 0
DC1
Text Label 10800 2150 0    50   ~ 0
DC2
Text Label 10800 2050 0    50   ~ 0
DC3
Text Label 10800 1950 0    50   ~ 0
DC4
Text Label 10800 1850 0    50   ~ 0
DC5
Text Label 10800 1750 0    50   ~ 0
DC6
Text Label 10800 1650 0    50   ~ 0
DC7
Wire Wire Line
	13550 2350 13750 2350
Wire Wire Line
	13550 2250 13750 2250
Wire Wire Line
	13550 2150 13750 2150
Wire Wire Line
	13550 2050 13750 2050
Wire Wire Line
	13550 1950 13750 1950
Wire Wire Line
	13550 1850 13750 1850
Wire Wire Line
	13550 1750 13750 1750
Wire Wire Line
	13550 1650 13750 1650
Text Label 13600 2350 0    50   ~ 0
DB0
Text Label 13600 2250 0    50   ~ 0
DB1
Text Label 13600 2150 0    50   ~ 0
DB2
Text Label 13600 2050 0    50   ~ 0
DB3
Text Label 13600 1950 0    50   ~ 0
DB4
Text Label 13600 1850 0    50   ~ 0
DB5
Text Label 13600 1750 0    50   ~ 0
DB6
Text Label 13600 1650 0    50   ~ 0
DB7
Wire Wire Line
	13550 2750 13750 2750
Text Label 13550 2750 0    50   ~ 0
~MEMW
Wire Wire Line
	13550 2550 13750 2550
Text Label 13550 2550 0    50   ~ 0
~MEMR
Wire Wire Line
	11900 2750 12100 2750
Text Label 11900 2750 0    50   ~ 0
~MEMW
Wire Wire Line
	11900 2550 12100 2550
Text Label 11900 2550 0    50   ~ 0
~MEMR
Wire Wire Line
	12550 2350 12750 2350
Wire Wire Line
	12550 2250 12750 2250
Wire Wire Line
	12550 2150 12750 2150
Wire Wire Line
	12550 2050 12750 2050
Wire Wire Line
	12550 1950 12750 1950
Wire Wire Line
	12550 1850 12750 1850
Wire Wire Line
	12550 1750 12750 1750
Wire Wire Line
	12550 1650 12750 1650
Text Label 12600 2350 0    50   ~ 0
DC0
Text Label 12600 2250 0    50   ~ 0
DC1
Text Label 12600 2150 0    50   ~ 0
DC2
Text Label 12600 2050 0    50   ~ 0
DC3
Text Label 12600 1950 0    50   ~ 0
DC4
Text Label 12600 1850 0    50   ~ 0
DC5
Text Label 12600 1750 0    50   ~ 0
DC6
Text Label 12600 1650 0    50   ~ 0
DC7
Wire Wire Line
	10750 2450 11100 2450
Text Label 10800 2450 0    50   ~ 0
C_DBIN
Wire Wire Line
	10750 2550 11100 2550
Text Label 10800 2550 0    50   ~ 0
C_WR
Wire Wire Line
	10750 2650 11100 2650
Text Label 10800 2650 0    50   ~ 0
C_HLDA
Wire Wire Line
	12400 2450 12750 2450
Text Label 12450 2450 0    50   ~ 0
C_DBIN
Wire Wire Line
	12400 2550 12750 2550
Text Label 12450 2550 0    50   ~ 0
C_WR
Wire Wire Line
	12400 2650 12750 2650
Text Label 12450 2650 0    50   ~ 0
C_HLDA
Wire Wire Line
	10750 3300 11100 3300
Text Label 10800 3300 0    50   ~ 0
~STSTB
Wire Wire Line
	12400 3300 12750 3300
Text Label 12450 3300 0    50   ~ 0
~STSTB
Wire Wire Line
	11900 2850 12100 2850
Text Label 11900 2850 0    50   ~ 0
~INTA
Wire Wire Line
	11900 3050 12100 3050
Text Label 11900 3050 0    50   ~ 0
~IOR
Wire Wire Line
	11900 3150 12100 3150
Text Label 11900 3150 0    50   ~ 0
~IOW
Wire Wire Line
	11900 3350 12100 3350
Text Label 11900 3350 0    50   ~ 0
~BUSEN
Wire Wire Line
	13550 2850 13750 2850
Text Label 13550 2850 0    50   ~ 0
~INTA
Wire Wire Line
	13550 3050 13750 3050
Text Label 13550 3050 0    50   ~ 0
~IOR
Wire Wire Line
	13550 3150 13750 3150
Text Label 13550 3150 0    50   ~ 0
~IOW
Wire Wire Line
	13550 3350 13750 3350
Text Label 13550 3350 0    50   ~ 0
~BUSEN
Wire Wire Line
	11500 3550 11500 3800
Text Label 11500 3700 0    50   ~ 0
GND
Wire Wire Line
	13150 3550 13150 3800
Text Label 13150 3700 0    50   ~ 0
GND
Wire Wire Line
	11500 1450 11500 1200
Text Label 11500 1350 0    50   ~ 0
+5V
Wire Wire Line
	13150 1450 13150 1200
Text Label 13150 1350 0    50   ~ 0
+5V
Wire Wire Line
	9150 10150 8100 10150
Wire Wire Line
	9150 8450 9150 10150
Wire Wire Line
	7650 8450 9150 8450
Wire Wire Line
	7650 7450 7650 8450
Wire Wire Line
	8250 7450 7650 7450
Wire Wire Line
	9050 10250 8100 10250
Wire Wire Line
	9050 8550 9050 10250
Wire Wire Line
	7750 8550 9050 8550
Wire Wire Line
	7750 7550 7750 8550
Wire Wire Line
	8250 7550 7750 7550
Wire Wire Line
	8950 10350 8100 10350
Wire Wire Line
	8950 8650 8950 10350
Wire Wire Line
	7850 8650 8950 8650
Wire Wire Line
	7850 7650 7850 8650
Wire Wire Line
	8250 7650 7850 7650
Wire Wire Line
	8850 10450 8100 10450
Wire Wire Line
	8850 8750 8850 10450
Wire Wire Line
	7950 8750 8850 8750
Wire Wire Line
	7950 7750 7950 8750
Wire Wire Line
	8250 7750 7950 7750
$Comp
L Memory_RAM2:Micro_SD_Card_Kit J?
U 1 1 66C560C4
P 9150 7350
AR Path="/66BFF1FE/66C560C4" Ref="J?"  Part="1" 
AR Path="/66C560C4" Ref="J1"  Part="1" 
F 0 "J1" H 8650 8050 50  0000 L CNN
F 1 "Micro_SD_Card_Kit" H 9150 8050 50  0000 L CNN
F 2 "Kicad:AE-microSD-LLCNV" H 10300 7650 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 9150 7350 50  0001 C CNN
	1    9150 7350
	1    0    0    -1  
$EndComp
NoConn ~ 8250 7150
NoConn ~ 8250 7250
NoConn ~ 8250 7850
$Comp
L power:+5V #PWR?
U 1 1 66C560CD
P 8100 6900
AR Path="/66BFF1FE/66C560CD" Ref="#PWR?"  Part="1" 
AR Path="/66C560CD" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 8100 6750 50  0001 C CNN
F 1 "+5V" H 8115 7073 50  0000 C CNN
F 2 "" H 8100 6900 50  0001 C CNN
F 3 "" H 8100 6900 50  0001 C CNN
	1    8100 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 6900 8100 7050
Wire Wire Line
	8100 7050 8250 7050
$Comp
L power:GND #PWR?
U 1 1 66C560D5
P 8100 8000
AR Path="/66BFF1FE/66C560D5" Ref="#PWR?"  Part="1" 
AR Path="/66C560D5" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 8100 7750 50  0001 C CNN
F 1 "GND" H 8105 7827 50  0000 C CNN
F 2 "" H 8100 8000 50  0001 C CNN
F 3 "" H 8100 8000 50  0001 C CNN
	1    8100 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 7350 8100 7350
Wire Wire Line
	8100 7350 8100 8000
Wire Wire Line
	8300 9650 8300 9350
Wire Wire Line
	8100 9650 8300 9650
NoConn ~ 6900 9350
NoConn ~ 6900 9450
NoConn ~ 6900 9650
NoConn ~ 7400 10850
NoConn ~ 7500 10850
NoConn ~ 8100 9550
NoConn ~ 8100 9350
Wire Wire Line
	8200 9450 8200 10650
Wire Wire Line
	8100 9450 8200 9450
$Comp
L power:GND #PWR?
U 1 1 66C560E8
P 8200 10650
AR Path="/66BFF1FE/66C560E8" Ref="#PWR?"  Part="1" 
AR Path="/66C560E8" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 8200 10400 50  0001 C CNN
F 1 "GND" H 8205 10477 50  0000 C CNN
F 2 "" H 8200 10650 50  0001 C CNN
F 3 "" H 8200 10650 50  0001 C CNN
	1    8200 10650
	1    0    0    -1  
$EndComp
$Comp
L Arduino:Arduino_Pro_Mini U?
U 1 1 66C560EE
P 7500 9950
AR Path="/66BFF1FE/66C560EE" Ref="U?"  Part="1" 
AR Path="/66C560EE" Ref="U10"  Part="1" 
F 0 "U10" H 7500 10839 60  0000 C CNN
F 1 "Arduino_Pro_Mini_5V" H 7500 10733 60  0000 C CNN
F 2 "Kicad:Arduino_Pro_Mini" H 8300 9200 60  0001 C CNN
F 3 "https://www.sparkfun.com/products/11113" H 7700 8750 60  0001 C CNN
	1    7500 9950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 66C560F4
P 10100 8650
AR Path="/66BFF1FE/66C560F4" Ref="J?"  Part="1" 
AR Path="/66C560F4" Ref="J2"  Part="1" 
F 0 "J2" H 9750 8200 50  0000 L CNN
F 1 "MicroSD Card Adapter" H 9500 8100 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 10100 8650 50  0001 C CNN
F 3 "~" H 10100 8650 50  0001 C CNN
	1    10100 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 8450 9650 8450
Wire Wire Line
	9900 8550 9650 8550
Wire Wire Line
	9900 8650 9650 8650
Wire Wire Line
	9900 8750 9650 8750
Wire Wire Line
	9900 8850 9650 8850
Wire Wire Line
	9900 8950 9650 8950
Text Label 9650 8450 0    50   ~ 0
GND
Text Label 9650 8550 0    50   ~ 0
+5V
Text Label 9650 8650 0    50   ~ 0
MISO
Text Label 9650 8750 0    50   ~ 0
MOSI
Text Label 9650 8850 0    50   ~ 0
SCK
Text Label 9650 8950 0    50   ~ 0
CS
Text Label 7650 7450 0    50   ~ 0
SCK
Text Label 7750 7550 0    50   ~ 0
MISO
Text Label 7850 7650 0    50   ~ 0
MOSI
Text Label 7950 7750 0    50   ~ 0
CS
NoConn ~ 6900 9750
NoConn ~ 6900 9850
NoConn ~ 6900 9950
NoConn ~ 6900 10050
NoConn ~ 8100 10050
NoConn ~ 8100 9950
NoConn ~ 8100 9850
NoConn ~ 8100 9750
NoConn ~ 7600 10850
NoConn ~ 7700 10850
Wire Wire Line
	2400 7650 2700 7650
Wire Wire Line
	2400 7750 2700 7750
Wire Wire Line
	2400 7850 2700 7850
Wire Wire Line
	2400 7950 2700 7950
Wire Wire Line
	2400 8050 2700 8050
Wire Wire Line
	2400 8150 2700 8150
Wire Wire Line
	2400 8250 2700 8250
Wire Wire Line
	2400 8350 2700 8350
Wire Wire Line
	2400 8550 2700 8550
Wire Wire Line
	2400 8650 2700 8650
Wire Wire Line
	2400 8750 2700 8750
Wire Wire Line
	2400 8850 2700 8850
Wire Wire Line
	2400 8950 2700 8950
Wire Wire Line
	2400 9050 2700 9050
Wire Wire Line
	2400 9150 2700 9150
Wire Wire Line
	2400 9250 2700 9250
Wire Wire Line
	1700 7350 1700 7150
Wire Wire Line
	1700 10550 1700 10800
Text Label 600  8850 0    50   ~ 0
D_D0
Text Label 600  8950 0    50   ~ 0
D_D1
Text Label 600  9050 0    50   ~ 0
D_D2
Text Label 600  9150 0    50   ~ 0
D_D3
Text Label 600  9250 0    50   ~ 0
D_D4
Text Label 600  9350 0    50   ~ 0
D_D5
Text Label 600  9450 0    50   ~ 0
D_D6
Text Label 600  9550 0    50   ~ 0
D_D7
Text Label 600  8450 0    50   ~ 0
D_A0
Text Label 600  8550 0    50   ~ 0
D_A1
Text Label 600  7650 0    50   ~ 0
D_RESET
Text Label 600  7950 0    50   ~ 0
D_~CS
Text Label 600  8050 0    50   ~ 0
D_~RD
Text Label 600  8150 0    50   ~ 0
D_~WR
Text Label 2500 7650 0    50   ~ 0
PA0
Text Label 2500 7750 0    50   ~ 0
PA1
Text Label 2500 7850 0    50   ~ 0
PA2
Text Label 2500 7950 0    50   ~ 0
PA3
Text Label 2500 8050 0    50   ~ 0
PA4
Text Label 2500 8150 0    50   ~ 0
PA5
Text Label 2500 8250 0    50   ~ 0
PA6
Text Label 2500 8350 0    50   ~ 0
PA7
Text Label 2500 8550 0    50   ~ 0
PB0
Text Label 2500 8650 0    50   ~ 0
PB1
Text Label 2500 8750 0    50   ~ 0
PB2
Text Label 2500 8850 0    50   ~ 0
PB3
Text Label 2500 8950 0    50   ~ 0
PB4
Text Label 2500 9050 0    50   ~ 0
PB5
Text Label 2500 9150 0    50   ~ 0
PB6
Text Label 2500 9250 0    50   ~ 0
PB7
Text Label 1700 10800 0    50   ~ 0
GND
Text Label 1700 7150 0    50   ~ 0
VCC
$Comp
L Device:Speaker LS?
U 1 1 66C56155
P 6050 9550
AR Path="/66BFF1FE/66C56155" Ref="LS?"  Part="1" 
AR Path="/66C56155" Ref="LS1"  Part="1" 
F 0 "LS1" H 6220 9546 50  0000 L CNN
F 1 "Speaker" H 6220 9455 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6050 9350 50  0001 C CNN
F 3 "~" H 6040 9500 50  0001 C CNN
	1    6050 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 9650 5700 9650
Wire Wire Line
	5700 9650 5700 9900
Text Label 5700 9900 0    50   ~ 0
GND
$Comp
L power:+5V #PWR?
U 1 1 66C5615E
P 8300 9350
AR Path="/66BFF1FE/66C5615E" Ref="#PWR?"  Part="1" 
AR Path="/66C5615E" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 8300 9200 50  0001 C CNN
F 1 "+5V" H 8315 9523 50  0000 C CNN
F 2 "" H 8300 9350 50  0001 C CNN
F 3 "" H 8300 9350 50  0001 C CNN
	1    8300 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 10450 6600 10450
Wire Wire Line
	6900 10350 6700 10350
Wire Wire Line
	6600 10450 6600 8750
Text Label 1700 7250 0    50   ~ 0
+5V
$Comp
L Interface:8255 U?
U 1 1 66C56168
P 1700 8950
AR Path="/66BFF1FE/66C56168" Ref="U?"  Part="1" 
AR Path="/66C56168" Ref="U9"  Part="1" 
F 0 "U9" H 1300 10500 50  0000 C CNN
F 1 "8255 SOCKET" H 2050 10500 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_LongPads" H 1700 9250 50  0001 C CNN
F 3 "http://aturing.umcs.maine.edu/~meadow/courses/cos335/Intel8255A.pdf" H 1700 9250 50  0001 C CNN
	1    1700 8950
	1    0    0    -1  
$EndComp
$Comp
L Interface:8255 U?
U 1 1 66C5616E
P 4350 8950
AR Path="/66BFF1FE/66C5616E" Ref="U?"  Part="1" 
AR Path="/66C5616E" Ref="U8"  Part="1" 
F 0 "U8" H 4000 10500 50  0000 C CNN
F 1 "8255" H 4750 10500 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_LongPads" H 4350 9250 50  0001 C CNN
F 3 "http://aturing.umcs.maine.edu/~meadow/courses/cos335/Intel8255A.pdf" H 4350 9250 50  0001 C CNN
	1    4350 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 9450 2700 9450
Wire Wire Line
	2400 9550 2700 9550
Wire Wire Line
	2400 9650 2700 9650
Wire Wire Line
	2400 9750 2700 9750
Wire Wire Line
	2400 9850 2700 9850
Wire Wire Line
	2400 9950 2700 9950
Wire Wire Line
	2400 10050 2700 10050
Wire Wire Line
	2400 10150 2700 10150
Text Label 2500 9450 0    50   ~ 0
PC0
Text Label 2500 9550 0    50   ~ 0
PC1
Text Label 2500 9650 0    50   ~ 0
PC2
Text Label 2500 9750 0    50   ~ 0
PC3
Text Label 2500 9850 0    50   ~ 0
PC4
Text Label 2500 9950 0    50   ~ 0
PC5
Text Label 2500 10050 0    50   ~ 0
PC6
Text Label 2500 10150 0    50   ~ 0
PC7
Wire Wire Line
	5050 7650 5350 7650
Wire Wire Line
	5050 7750 5350 7750
Wire Wire Line
	5050 7850 5350 7850
Wire Wire Line
	5050 7950 5350 7950
Wire Wire Line
	5050 8050 5350 8050
Wire Wire Line
	5050 8150 5350 8150
Wire Wire Line
	5050 8250 5350 8250
Wire Wire Line
	5050 8350 5350 8350
Wire Wire Line
	5050 8650 5350 8650
Wire Wire Line
	5050 8850 5350 8850
Wire Wire Line
	5050 8950 5350 8950
Wire Wire Line
	5050 9050 5350 9050
Wire Wire Line
	5050 9150 5350 9150
Wire Wire Line
	5050 9250 5350 9250
Text Label 5150 7650 0    50   ~ 0
PA0
Text Label 5150 7750 0    50   ~ 0
PA1
Text Label 5150 7850 0    50   ~ 0
PA2
Text Label 5150 7950 0    50   ~ 0
PA3
Text Label 5150 8050 0    50   ~ 0
PA4
Text Label 5150 8150 0    50   ~ 0
PA5
Text Label 5150 8250 0    50   ~ 0
PA6
Text Label 5150 8350 0    50   ~ 0
PA7
Text Label 5150 8550 0    50   ~ 0
PB0
Text Label 5150 8650 0    50   ~ 0
PB1
Text Label 5150 8750 0    50   ~ 0
PB2
Text Label 5150 8850 0    50   ~ 0
PB3
Text Label 5150 8950 0    50   ~ 0
PB4
Text Label 5150 9050 0    50   ~ 0
PB5
Text Label 5150 9150 0    50   ~ 0
PB6
Text Label 5150 9250 0    50   ~ 0
PB7
Wire Wire Line
	5050 9750 5350 9750
Wire Wire Line
	5050 9850 5350 9850
Wire Wire Line
	5050 9950 5350 9950
Wire Wire Line
	5050 10050 5350 10050
Wire Wire Line
	5050 10150 5350 10150
Text Label 5150 9450 0    50   ~ 0
PC0
Text Label 5150 9550 0    50   ~ 0
PC1
Text Label 5150 9650 0    50   ~ 0
PC2
Text Label 5150 9750 0    50   ~ 0
PC3
Text Label 5150 9850 0    50   ~ 0
PC4
Text Label 5150 9950 0    50   ~ 0
PC5
Text Label 5150 10050 0    50   ~ 0
PC6
Text Label 5150 10150 0    50   ~ 0
PC7
Wire Wire Line
	4350 7350 4350 7150
Text Label 4350 7150 0    50   ~ 0
VCC
Text Label 4350 7250 0    50   ~ 0
+5V
Wire Wire Line
	4350 10550 4350 10800
Text Label 4350 10800 0    50   ~ 0
GND
Wire Wire Line
	5050 9550 5850 9550
Wire Wire Line
	5050 8750 6600 8750
Wire Wire Line
	6700 8550 6700 10350
Wire Wire Line
	5050 8550 6700 8550
Wire Wire Line
	5450 9650 5450 10250
Wire Wire Line
	5450 10250 6900 10250
Wire Wire Line
	5050 9650 5450 9650
Wire Wire Line
	5550 9450 5550 10150
Wire Wire Line
	5550 10150 6900 10150
Wire Wire Line
	5050 9450 5550 9450
$Comp
L power:GND #PWR?
U 1 1 66C561D9
P 5700 9900
AR Path="/66BFF1FE/66C561D9" Ref="#PWR?"  Part="1" 
AR Path="/66C561D9" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 5700 9650 50  0001 C CNN
F 1 "GND" H 5705 9727 50  0000 C CNN
F 2 "" H 5700 9900 50  0001 C CNN
F 3 "" H 5700 9900 50  0001 C CNN
	1    5700 9900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66C561DF
P 4350 10800
AR Path="/66BFF1FE/66C561DF" Ref="#PWR?"  Part="1" 
AR Path="/66C561DF" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 4350 10550 50  0001 C CNN
F 1 "GND" H 4355 10627 50  0000 C CNN
F 2 "" H 4350 10800 50  0001 C CNN
F 3 "" H 4350 10800 50  0001 C CNN
	1    4350 10800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66C561E5
P 1700 10800
AR Path="/66BFF1FE/66C561E5" Ref="#PWR?"  Part="1" 
AR Path="/66C561E5" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 1700 10550 50  0001 C CNN
F 1 "GND" H 1705 10627 50  0000 C CNN
F 2 "" H 1700 10800 50  0001 C CNN
F 3 "" H 1700 10800 50  0001 C CNN
	1    1700 10800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 66C561EB
P 4350 7150
AR Path="/66BFF1FE/66C561EB" Ref="#PWR?"  Part="1" 
AR Path="/66C561EB" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 4350 7000 50  0001 C CNN
F 1 "+5V" H 4365 7323 50  0000 C CNN
F 2 "" H 4350 7150 50  0001 C CNN
F 3 "" H 4350 7150 50  0001 C CNN
	1    4350 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 66C561F1
P 1700 7150
AR Path="/66BFF1FE/66C561F1" Ref="#PWR?"  Part="1" 
AR Path="/66C561F1" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 1700 7000 50  0001 C CNN
F 1 "+5V" H 1715 7323 50  0000 C CNN
F 2 "" H 1700 7150 50  0001 C CNN
F 3 "" H 1700 7150 50  0001 C CNN
	1    1700 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  7650 1000 7650
Wire Wire Line
	600  7950 1000 7950
Wire Wire Line
	600  8050 1000 8050
Wire Wire Line
	600  8150 1000 8150
Wire Wire Line
	600  8450 1000 8450
Wire Wire Line
	600  8550 1000 8550
Wire Wire Line
	600  8850 1000 8850
Wire Wire Line
	600  8950 1000 8950
Wire Wire Line
	600  9050 1000 9050
Wire Wire Line
	600  9150 1000 9150
Wire Wire Line
	600  9250 1000 9250
Wire Wire Line
	600  9350 1000 9350
Wire Wire Line
	600  9450 1000 9450
Wire Wire Line
	600  9550 1000 9550
$Comp
L power:GND #PWR?
U 1 1 670F5470
P 11500 3800
AR Path="/66BFF1FE/670F5470" Ref="#PWR?"  Part="1" 
AR Path="/670F5470" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 11500 3550 50  0001 C CNN
F 1 "GND" H 11505 3627 50  0000 C CNN
F 2 "" H 11500 3800 50  0001 C CNN
F 3 "" H 11500 3800 50  0001 C CNN
	1    11500 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 671273AA
P 13150 3800
AR Path="/66BFF1FE/671273AA" Ref="#PWR?"  Part="1" 
AR Path="/671273AA" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 13150 3550 50  0001 C CNN
F 1 "GND" H 13155 3627 50  0000 C CNN
F 2 "" H 13150 3800 50  0001 C CNN
F 3 "" H 13150 3800 50  0001 C CNN
	1    13150 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67159516
P 9400 3400
AR Path="/66BFF1FE/67159516" Ref="#PWR?"  Part="1" 
AR Path="/67159516" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 9400 3150 50  0001 C CNN
F 1 "GND" H 9405 3227 50  0000 C CNN
F 2 "" H 9400 3400 50  0001 C CNN
F 3 "" H 9400 3400 50  0001 C CNN
	1    9400 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6718B83E
P 6800 3850
AR Path="/66BFF1FE/6718B83E" Ref="#PWR?"  Part="1" 
AR Path="/6718B83E" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 6800 3600 50  0001 C CNN
F 1 "GND" H 6805 3677 50  0000 C CNN
F 2 "" H 6800 3850 50  0001 C CNN
F 3 "" H 6800 3850 50  0001 C CNN
	1    6800 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 671BDCDA
P 9350 6200
AR Path="/66BFF1FE/671BDCDA" Ref="#PWR?"  Part="1" 
AR Path="/671BDCDA" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 9350 5950 50  0001 C CNN
F 1 "GND" H 9355 6027 50  0000 C CNN
F 2 "" H 9350 6200 50  0001 C CNN
F 3 "" H 9350 6200 50  0001 C CNN
	1    9350 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 671F0C1E
P 3400 5300
AR Path="/66BFF1FE/671F0C1E" Ref="#PWR?"  Part="1" 
AR Path="/671F0C1E" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 3400 5050 50  0001 C CNN
F 1 "GND" H 3405 5127 50  0000 C CNN
F 2 "" H 3400 5300 50  0001 C CNN
F 3 "" H 3400 5300 50  0001 C CNN
	1    3400 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6722DC49
P 9350 4300
AR Path="/66BFF1FE/6722DC49" Ref="#PWR?"  Part="1" 
AR Path="/6722DC49" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 9350 4150 50  0001 C CNN
F 1 "+5V" H 9365 4473 50  0000 C CNN
F 2 "" H 9350 4300 50  0001 C CNN
F 3 "" H 9350 4300 50  0001 C CNN
	1    9350 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6725FE80
P 9400 1100
AR Path="/66BFF1FE/6725FE80" Ref="#PWR?"  Part="1" 
AR Path="/6725FE80" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 9400 950 50  0001 C CNN
F 1 "+5V" H 9415 1273 50  0000 C CNN
F 2 "" H 9400 1100 50  0001 C CNN
F 3 "" H 9400 1100 50  0001 C CNN
	1    9400 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 67291E34
P 6800 1150
AR Path="/66BFF1FE/67291E34" Ref="#PWR?"  Part="1" 
AR Path="/67291E34" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 6800 1000 50  0001 C CNN
F 1 "+5V" H 6815 1323 50  0000 C CNN
F 2 "" H 6800 1150 50  0001 C CNN
F 3 "" H 6800 1150 50  0001 C CNN
	1    6800 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 672C3FB8
P 11500 1200
AR Path="/66BFF1FE/672C3FB8" Ref="#PWR?"  Part="1" 
AR Path="/672C3FB8" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 11500 1050 50  0001 C CNN
F 1 "+5V" H 11515 1373 50  0000 C CNN
F 2 "" H 11500 1200 50  0001 C CNN
F 3 "" H 11500 1200 50  0001 C CNN
	1    11500 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 672F5EC1
P 13150 1200
AR Path="/66BFF1FE/672F5EC1" Ref="#PWR?"  Part="1" 
AR Path="/672F5EC1" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 13150 1050 50  0001 C CNN
F 1 "+5V" H 13165 1373 50  0000 C CNN
F 2 "" H 13150 1200 50  0001 C CNN
F 3 "" H 13150 1200 50  0001 C CNN
	1    13150 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 673286F1
P 3400 1200
AR Path="/66BFF1FE/673286F1" Ref="#PWR?"  Part="1" 
AR Path="/673286F1" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 3400 1050 50  0001 C CNN
F 1 "+5V" H 3415 1373 50  0000 C CNN
F 2 "" H 3400 1200 50  0001 C CNN
F 3 "" H 3400 1200 50  0001 C CNN
	1    3400 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0115
U 1 1 6735A8C0
P 1800 1200
F 0 "#PWR0115" H 1800 1050 50  0001 C CNN
F 1 "+12V" H 1815 1373 50  0000 C CNN
F 2 "" H 1800 1200 50  0001 C CNN
F 3 "" H 1800 1200 50  0001 C CNN
	1    1800 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0116
U 1 1 6735B269
P 3600 1200
F 0 "#PWR0116" H 3600 1050 50  0001 C CNN
F 1 "+12V" H 3615 1373 50  0000 C CNN
F 2 "" H 3600 1200 50  0001 C CNN
F 3 "" H 3600 1200 50  0001 C CNN
	1    3600 1200
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0117
U 1 1 6735C383
P 1800 5300
F 0 "#PWR0117" H 1800 5400 50  0001 C CNN
F 1 "-5V" H 1815 5473 50  0000 C CNN
F 2 "" H 1800 5300 50  0001 C CNN
F 3 "" H 1800 5300 50  0001 C CNN
	1    1800 5300
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR0118
U 1 1 673F8579
P 3600 5300
F 0 "#PWR0118" H 3600 5400 50  0001 C CNN
F 1 "-5V" H 3615 5473 50  0000 C CNN
F 2 "" H 3600 5300 50  0001 C CNN
F 3 "" H 3600 5300 50  0001 C CNN
	1    3600 5300
	-1   0    0    1   
$EndComp
Text Label 3250 8850 0    50   ~ 0
D_D0
Text Label 3250 8950 0    50   ~ 0
D_D1
Text Label 3250 9050 0    50   ~ 0
D_D2
Text Label 3250 9150 0    50   ~ 0
D_D3
Text Label 3250 9250 0    50   ~ 0
D_D4
Text Label 3250 9350 0    50   ~ 0
D_D5
Text Label 3250 9450 0    50   ~ 0
D_D6
Text Label 3250 9550 0    50   ~ 0
D_D7
Text Label 3250 8450 0    50   ~ 0
D_A0
Text Label 3250 8550 0    50   ~ 0
D_A1
Text Label 3250 7650 0    50   ~ 0
D_RESET
Text Label 3250 7950 0    50   ~ 0
D_~CS
Text Label 3250 8050 0    50   ~ 0
D_~RD
Text Label 3250 8150 0    50   ~ 0
D_~WR
Wire Wire Line
	3250 7650 3650 7650
Wire Wire Line
	3250 7950 3650 7950
Wire Wire Line
	3250 8050 3650 8050
Wire Wire Line
	3250 8150 3650 8150
Wire Wire Line
	3250 8450 3650 8450
Wire Wire Line
	3250 8550 3650 8550
Wire Wire Line
	3250 8850 3650 8850
Wire Wire Line
	3250 8950 3650 8950
Wire Wire Line
	3250 9050 3650 9050
Wire Wire Line
	3250 9150 3650 9150
Wire Wire Line
	3250 9250 3650 9250
Wire Wire Line
	3250 9350 3650 9350
Wire Wire Line
	3250 9450 3650 9450
Wire Wire Line
	3250 9550 3650 9550
$Comp
L Memory_EPROM:27512 U6
U 1 1 6750ED10
P 6800 2500
F 0 "U6" H 6600 3600 50  0000 C CNN
F 1 "27512" H 7050 3600 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 6800 2500 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/120/227190_DS.pdf" H 6800 2500 50  0001 C CNN
	1    6800 2500
	1    0    0    -1  
$EndComp
Text Label 5200 2750 0    50   ~ 0
A15
Wire Wire Line
	5150 2750 5350 2750
$Comp
L Memory_RAM2:SLIDE_SWITCH_3P S1
U 1 1 6762986E
P 5550 2550
F 0 "S1" H 5550 2615 50  0000 C CNN
F 1 "27512/2764,27256" H 5550 2524 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5550 2575 50  0001 C CNN
F 3 "" H 5550 2575 50  0001 C CNN
	1    5550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1150 6800 1350
Wire Wire Line
	7650 3650 6800 3650
Connection ~ 6800 1350
Wire Wire Line
	6800 1350 6800 1400
Wire Wire Line
	6800 1350 7650 1350
Wire Wire Line
	5550 2900 5550 3100
Wire Wire Line
	5550 3100 6400 3100
Wire Wire Line
	5750 2750 5950 2750
Wire Wire Line
	5950 2750 5950 1350
Wire Wire Line
	5950 1350 6800 1350
$Comp
L Memory_RAM2:SLIDE_SWITCH_3P S3
U 1 1 67910ACD
P 5550 4350
F 0 "S3" H 5550 4415 50  0000 C CNN
F 1 "2764,27256,27512/2732" H 5400 4300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5550 4375 50  0001 C CNN
F 3 "" H 5550 4375 50  0001 C CNN
	1    5550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2900 6100 2900
Wire Wire Line
	6100 2900 6100 4850
Wire Wire Line
	6100 4850 5550 4850
Wire Wire Line
	5550 4850 5550 4700
Wire Wire Line
	5950 2750 5950 3650
Wire Wire Line
	5950 4550 5750 4550
Connection ~ 5950 2750
$Comp
L Memory_RAM2:SLIDE_SWITCH_3P S2
U 1 1 66816657
P 5550 3450
F 0 "S2" H 5550 3515 50  0000 C CNN
F 1 "27512,27256/2764" H 5400 3400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5550 3475 50  0001 C CNN
F 3 "" H 5550 3475 50  0001 C CNN
	1    5550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3000 6050 3000
Wire Wire Line
	6050 3000 6050 3950
Wire Wire Line
	6050 3950 5550 3950
Wire Wire Line
	5550 3950 5550 3800
Wire Wire Line
	5750 3650 5950 3650
Connection ~ 5950 3650
Wire Wire Line
	5950 3650 5950 4550
Text Label 8450 5750 0    50   ~ 0
D_RESET
Wire Wire Line
	8450 5750 8850 5750
Wire Wire Line
	6900 9550 6800 9550
Wire Wire Line
	6800 9550 6800 6500
Wire Wire Line
	6800 6500 10450 6500
Wire Wire Line
	10450 6500 10450 5150
Wire Wire Line
	9850 5150 10450 5150
$EndSCHEMATC

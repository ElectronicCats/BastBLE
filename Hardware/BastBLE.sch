EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Bast BLE"
Date "2020-01-15"
Rev "0.1"
Comp "Electronic Cats"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Andres Sabas"
$EndDescr
$Comp
L BastBLE-rescue:E73-2G4M08S1C-electroniccats-BastBLE-rescue U2
U 1 1 5E1E9971
P 2245 1925
F 0 "U2" H 2220 3290 50  0000 C CNN
F 1 "E73-2G4M08S1C" H 2220 3199 50  0000 C CNN
F 2 "Rf:E73-2G4M08S1C-52840" H 2245 1925 50  0001 C CNN
F 3 "" H 2245 1925 50  0001 C CNN
	1    2245 1925
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP2112K-3.3 U1
U 1 1 5E1EFA48
P 1965 6000
F 0 "U1" H 1965 6342 50  0000 C CNN
F 1 "AP2112K-3.3" H 1965 6251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1965 6325 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 1965 6100 50  0001 C CNN
	1    1965 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5E1F87DE
P 1490 6040
F 0 "R2" H 1535 6050 50  0000 L CNN
F 1 "100K" H 1535 5970 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1490 6040 50  0001 C CNN
F 3 "~" H 1490 6040 50  0001 C CNN
	1    1490 6040
	1    0    0    -1  
$EndComp
Wire Wire Line
	1545 825  1390 825 
Wire Wire Line
	1545 925  1390 925 
Wire Wire Line
	1545 1025 1390 1025
Wire Wire Line
	1545 1125 1390 1125
Wire Wire Line
	1545 1225 1165 1225
Wire Wire Line
	1165 1225 1165 1260
Wire Wire Line
	1545 1325 1390 1325
Wire Wire Line
	1545 1425 1390 1425
Wire Wire Line
	1545 1525 1390 1525
Wire Wire Line
	1545 1625 1390 1625
Wire Wire Line
	1545 1725 1390 1725
Wire Wire Line
	1545 1925 1385 1925
Wire Wire Line
	1545 2125 1390 2125
Wire Wire Line
	1545 2225 1395 2225
Wire Wire Line
	1545 2325 1390 2325
Wire Wire Line
	1545 2425 1390 2425
Wire Wire Line
	1545 2525 1390 2525
Wire Wire Line
	1545 2725 1390 2725
Wire Wire Line
	2895 925  2995 925 
Wire Wire Line
	2895 1025 2995 1025
Wire Wire Line
	2895 1125 2995 1125
Wire Wire Line
	2895 1225 2995 1225
Wire Wire Line
	2895 1325 2995 1325
Wire Wire Line
	2895 1425 2995 1425
Wire Wire Line
	2895 1525 3000 1525
Wire Wire Line
	2895 1625 3000 1625
Wire Wire Line
	2895 1725 3000 1725
Wire Wire Line
	2895 1825 3000 1825
Wire Wire Line
	2895 1925 3000 1925
Wire Wire Line
	2895 2025 3000 2025
Wire Wire Line
	2895 2125 3005 2125
Wire Wire Line
	2895 2225 3005 2225
Wire Wire Line
	2895 2325 3010 2325
Wire Wire Line
	2895 2425 3010 2425
Wire Wire Line
	2895 2625 3010 2625
Text Label 3005 2125 0    50   ~ 0
D+
Text Label 3010 2325 0    50   ~ 0
D-
Wire Wire Line
	1205 2825 1205 2850
Wire Wire Line
	1205 2825 1545 2825
$Comp
L power:GND #PWR07
U 1 1 5E20BA3E
P 1205 2850
F 0 "#PWR07" H 1205 2600 50  0001 C CNN
F 1 "GND" H 1210 2677 50  0000 C CNN
F 2 "" H 1205 2850 50  0001 C CNN
F 3 "" H 1205 2850 50  0001 C CNN
	1    1205 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E20C0D9
P 1165 1260
F 0 "#PWR05" H 1165 1010 50  0001 C CNN
F 1 "GND" H 1170 1087 50  0000 C CNN
F 2 "" H 1165 1260 50  0001 C CNN
F 3 "" H 1165 1260 50  0001 C CNN
	1    1165 1260
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E20D618
P 3495 2860
F 0 "#PWR015" H 3495 2610 50  0001 C CNN
F 1 "GND" H 3500 2687 50  0000 C CNN
F 2 "" H 3495 2860 50  0001 C CNN
F 3 "" H 3495 2860 50  0001 C CNN
	1    3495 2860
	1    0    0    -1  
$EndComp
Wire Wire Line
	1195 2625 1195 2595
Wire Wire Line
	1195 2625 1545 2625
$Comp
L power:+3V3 #PWR06
U 1 1 5E20EBA3
P 1195 2595
F 0 "#PWR06" H 1195 2445 50  0001 C CNN
F 1 "+3V3" H 1210 2768 50  0000 C CNN
F 2 "" H 1195 2595 50  0001 C CNN
F 3 "" H 1195 2595 50  0001 C CNN
	1    1195 2595
	1    0    0    -1  
$EndComp
Text Label 2995 1325 0    50   ~ 0
SWCLK
Text Label 3000 1525 0    50   ~ 0
SWDIO
$Comp
L Device:Crystal_Small Y1
U 1 1 5E20FCB0
P 1200 1955
F 0 "Y1" V 1110 1730 50  0000 L CNN
F 1 "32Khz" V 1195 1650 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_MC146-4Pin_6.7x1.5mm" H 1200 1955 50  0001 C CNN
F 3 "~" H 1200 1955 50  0001 C CNN
	1    1200 1955
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 1825 1200 1855
Wire Wire Line
	1200 1825 1545 1825
Wire Wire Line
	1235 2025 1235 2055
Wire Wire Line
	1235 2055 1200 2055
Wire Wire Line
	1235 2025 1545 2025
Text Label 3010 2625 0    50   ~ 0
RST
Text Label 1390 1425 0    50   ~ 0
A0
Text Label 1390 925  0    50   ~ 0
LED
Text Label 1390 2325 0    50   ~ 0
RX
Text Label 1350 2925 0    50   ~ 0
D12
Wire Wire Line
	1350 2925 1545 2925
Text Label 1390 1025 0    50   ~ 0
A1
Text Label 1390 2525 0    50   ~ 0
A2
Text Label 1395 2225 0    50   ~ 0
A3
Text Label 1390 1125 0    50   ~ 0
A4
Text Label 1390 1525 0    50   ~ 0
A5
Text Label 1390 1625 0    50   ~ 0
AREF
Wire Wire Line
	3270 2525 3270 2520
Wire Wire Line
	2895 2525 3270 2525
Wire Wire Line
	1665 5900 1490 5900
Wire Wire Line
	1665 6000 1665 6170
Wire Wire Line
	1665 6170 1490 6170
Wire Wire Line
	1490 6170 1490 6140
Wire Wire Line
	1490 5940 1490 5900
Connection ~ 1490 5900
Wire Wire Line
	1490 5900 1290 5900
Wire Wire Line
	1290 5840 1290 5900
Wire Wire Line
	1290 5440 1290 5360
Wire Wire Line
	990  5640 845  5640
Connection ~ 845  5640
Wire Wire Line
	845  5640 845  5360
$Comp
L Device:R_Small R1
U 1 1 5E22AF15
P 845 6075
F 0 "R1" H 904 6121 50  0000 L CNN
F 1 "100K" H 904 6030 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 845 6075 50  0001 C CNN
F 3 "~" H 845 6075 50  0001 C CNN
	1    845  6075
	1    0    0    -1  
$EndComp
Wire Wire Line
	845  6175 845  6225
$Comp
L power:GND #PWR02
U 1 1 5E22D0B3
P 845 6225
F 0 "#PWR02" H 845 5975 50  0001 C CNN
F 1 "GND" H 850 6052 50  0000 C CNN
F 2 "" H 845 6225 50  0001 C CNN
F 3 "" H 845 6225 50  0001 C CNN
	1    845  6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	845  5640 845  5900
$Comp
L Diode:MBR340 D1
U 1 1 5E22DB53
P 1055 5900
F 0 "D1" H 915 5970 50  0000 C CNN
F 1 "MBR120" H 1075 5810 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 1055 5725 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBR340-D.PDF" H 1055 5900 50  0001 C CNN
	1    1055 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1205 5900 1290 5900
Connection ~ 1290 5900
Wire Wire Line
	905  5900 845  5900
Connection ~ 845  5900
Wire Wire Line
	845  5900 845  5975
$Comp
L power:+BATT #PWR03
U 1 1 5E234196
P 1290 5360
F 0 "#PWR03" H 1290 5210 50  0001 C CNN
F 1 "+BATT" H 1305 5533 50  0000 C CNN
F 2 "" H 1290 5360 50  0001 C CNN
F 3 "" H 1290 5360 50  0001 C CNN
	1    1290 5360
	1    0    0    -1  
$EndComp
Wire Wire Line
	1965 6300 1965 6360
Wire Wire Line
	2265 5900 2390 5900
Wire Wire Line
	2775 5900 2775 5860
$Comp
L power:GND #PWR08
U 1 1 5E237762
P 1965 6360
F 0 "#PWR08" H 1965 6110 50  0001 C CNN
F 1 "GND" H 1970 6187 50  0000 C CNN
F 2 "" H 1965 6360 50  0001 C CNN
F 3 "" H 1965 6360 50  0001 C CNN
	1    1965 6360
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5E2385C5
P 1290 6070
F 0 "C1" H 1320 6135 50  0000 L CNN
F 1 "10uF" H 1295 5990 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1290 6070 50  0001 C CNN
F 3 "~" H 1290 6070 50  0001 C CNN
	1    1290 6070
	1    0    0    -1  
$EndComp
Wire Wire Line
	1290 5970 1290 5900
Wire Wire Line
	1290 6170 1290 6250
$Comp
L power:GND #PWR04
U 1 1 5E23CB71
P 1290 6250
F 0 "#PWR04" H 1290 6000 50  0001 C CNN
F 1 "GND" H 1295 6077 50  0000 C CNN
F 2 "" H 1290 6250 50  0001 C CNN
F 3 "" H 1290 6250 50  0001 C CNN
	1    1290 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E23D1AD
P 2390 6030
F 0 "C2" H 2482 6076 50  0000 L CNN
F 1 "10uF" H 2482 5985 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2390 6030 50  0001 C CNN
F 3 "~" H 2390 6030 50  0001 C CNN
	1    2390 6030
	1    0    0    -1  
$EndComp
Wire Wire Line
	2390 5930 2390 5900
Connection ~ 2390 5900
Wire Wire Line
	2390 5900 2775 5900
Wire Wire Line
	2390 6130 2390 6175
$Comp
L power:GND #PWR09
U 1 1 5E2429CA
P 2390 6175
F 0 "#PWR09" H 2390 5925 50  0001 C CNN
F 1 "GND" H 2395 6002 50  0000 C CNN
F 2 "" H 2390 6175 50  0001 C CNN
F 3 "" H 2390 6175 50  0001 C CNN
	1    2390 6175
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR010
U 1 1 5E2430D4
P 2775 5860
F 0 "#PWR010" H 2775 5710 50  0001 C CNN
F 1 "+3V3" H 2790 6033 50  0000 C CNN
F 2 "" H 2775 5860 50  0001 C CNN
F 3 "" H 2775 5860 50  0001 C CNN
	1    2775 5860
	1    0    0    -1  
$EndComp
Wire Wire Line
	5415 5405 5415 5375
Wire Wire Line
	4745 4635 4830 4635
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5E275D2D
P 3710 6775
F 0 "J1" H 3790 6767 50  0000 L CNN
F 1 "Battery" H 3790 6676 50  0000 L CNN
F 2 "" H 3710 6775 50  0001 C CNN
F 3 "~" H 3710 6775 50  0001 C CNN
	1    3710 6775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3510 6775 3410 6775
Wire Wire Line
	3510 6875 3415 6875
$Comp
L power:GND #PWR012
U 1 1 5E27B0C1
P 3415 6875
F 0 "#PWR012" H 3415 6625 50  0001 C CNN
F 1 "GND" H 3420 6702 50  0000 C CNN
F 2 "" H 3415 6875 50  0001 C CNN
F 3 "" H 3415 6875 50  0001 C CNN
	1    3415 6875
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR011
U 1 1 5E27B89B
P 3410 6775
F 0 "#PWR011" H 3410 6625 50  0001 C CNN
F 1 "+BATT" H 3425 6948 50  0000 C CNN
F 2 "" H 3410 6775 50  0001 C CNN
F 3 "" H 3410 6775 50  0001 C CNN
	1    3410 6775
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5E27C366
P 4720 865
F 0 "R4" H 4779 911 50  0000 L CNN
F 1 "1K" H 4779 820 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4720 865 50  0001 C CNN
F 3 "~" H 4720 865 50  0001 C CNN
	1    4720 865 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5E27D479
P 4720 1170
F 0 "D2" V 4759 1053 50  0000 R CNN
F 1 "LED" V 4668 1053 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4720 1170 50  0001 C CNN
F 3 "~" H 4720 1170 50  0001 C CNN
	1    4720 1170
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4720 965  4720 1020
Wire Wire Line
	4720 1320 4720 1375
$Comp
L power:GND #PWR018
U 1 1 5E28308C
P 4720 1375
F 0 "#PWR018" H 4720 1125 50  0001 C CNN
F 1 "GND" H 4725 1202 50  0000 C CNN
F 2 "" H 4720 1375 50  0001 C CNN
F 3 "" H 4720 1375 50  0001 C CNN
	1    4720 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4720 765  4720 705 
Text Label 4720 705  0    50   ~ 0
LED
Wire Wire Line
	2895 2725 3020 2725
$Comp
L Device:L_Small L1
U 1 1 5E2894B4
P 3120 2725
F 0 "L1" V 3165 2605 50  0000 C CNN
F 1 "10uH" V 3070 2735 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical_SMD" H 3120 2725 50  0001 C CNN
F 3 "~" H 3120 2725 50  0001 C CNN
	1    3120 2725
	0    1    1    0   
$EndComp
Wire Wire Line
	3220 2725 3300 2725
$Comp
L power:+3V3 #PWR014
U 1 1 5E28CD0C
P 3300 2725
F 0 "#PWR014" H 3300 2575 50  0001 C CNN
F 1 "+3V3" H 3315 2898 50  0000 C CNN
F 2 "" H 3300 2725 50  0001 C CNN
F 3 "" H 3300 2725 50  0001 C CNN
	1    3300 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3495 2825 3495 2860
Wire Wire Line
	2895 2825 3495 2825
Wire Wire Line
	3300 2725 3300 2925
Wire Wire Line
	3300 2925 2895 2925
Connection ~ 3300 2725
Text Label 1390 2125 0    50   ~ 0
TX
Text Label 1390 2425 0    50   ~ 0
D13
Text Label 1385 1925 0    50   ~ 0
D9
Text Label 3005 2225 0    50   ~ 0
QSPI_DATA0
Text Label 3010 2425 0    50   ~ 0
MISO
Text Label 3000 1725 0    50   ~ 0
SDA
Text Label 3000 1625 0    50   ~ 0
SCL
Text Label 3000 2025 0    50   ~ 0
QSPI_CS
Text Label 3000 1825 0    50   ~ 0
QSPI_DATA1
Text Label 3000 1925 0    50   ~ 0
QSPI_SCK
Text Label 1390 2725 2    50   ~ 0
QSPI_DATA3
Text Label 2995 1225 0    50   ~ 0
QSPI_DATA2
Text Label 2995 1025 0    50   ~ 0
MOSI
Text Label 1390 1325 0    50   ~ 0
SCK
Text Notes 835  3525 0    50   ~ 0
QSPI. So you can use any GPIOs except \nP0.10, P1.06, P0.09, P1.03, P1.07, P1.05, P1.02, P1.04 and P1.01 \nwithout any problems what so ever
$Comp
L Connector:Screw_Terminal_01x12 J4
U 1 1 5E2A96A7
P 9920 1910
F 0 "J4" H 10000 1902 50  0000 L CNN
F 1 "Conn_right" V 10035 1390 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 9920 1910 50  0001 C CNN
F 3 "~" H 9920 1910 50  0001 C CNN
	1    9920 1910
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9105 1415 9000 1415
Wire Wire Line
	9105 1515 8830 1515
Wire Wire Line
	8830 1515 8830 1325
Wire Wire Line
	9105 1615 9010 1615
Wire Wire Line
	9105 1815 9010 1815
Wire Wire Line
	9105 1915 9010 1915
Wire Wire Line
	9105 2015 9015 2015
Wire Wire Line
	9105 2115 9015 2115
Wire Wire Line
	9105 2215 9015 2215
Wire Wire Line
	9105 2315 9020 2315
Wire Wire Line
	9105 2415 9020 2415
Wire Wire Line
	9105 2515 9020 2515
Wire Wire Line
	9105 2615 9020 2615
Wire Wire Line
	9105 2715 9020 2715
Wire Wire Line
	9105 2815 9020 2815
Wire Wire Line
	9105 2915 9015 2915
Wire Wire Line
	10120 1410 10230 1410
Wire Wire Line
	10120 1510 10230 1510
Wire Wire Line
	10120 1710 10225 1710
Wire Wire Line
	10120 1810 10220 1810
Wire Wire Line
	10120 1910 10220 1910
Wire Wire Line
	10120 2010 10215 2010
Wire Wire Line
	10120 2110 10210 2110
Wire Wire Line
	10120 2210 10210 2210
Wire Wire Line
	10120 2310 10210 2310
Wire Wire Line
	10120 2410 10210 2410
Wire Wire Line
	10120 2510 10215 2510
$Comp
L power:+3V3 #PWR040
U 1 1 5E3287D9
P 8830 1325
F 0 "#PWR040" H 8830 1175 50  0001 C CNN
F 1 "+3V3" H 8845 1498 50  0000 C CNN
F 2 "" H 8830 1325 50  0001 C CNN
F 3 "" H 8830 1325 50  0001 C CNN
	1    8830 1325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5E32943A
P 9015 2915
F 0 "#PWR043" H 9015 2665 50  0001 C CNN
F 1 "GND" H 9020 2742 50  0000 C CNN
F 2 "" H 9015 2915 50  0001 C CNN
F 3 "" H 9015 2915 50  0001 C CNN
	1    9015 2915
	1    0    0    -1  
$EndComp
Text Label 9020 2815 0    50   ~ 0
TX
Text Label 9020 2715 0    50   ~ 0
RX
Text Label 9020 2615 2    50   ~ 0
MISO
Text Label 9020 2515 2    50   ~ 0
MOSI
Text Label 9020 2415 2    50   ~ 0
SCK
Text Label 10215 2510 0    50   ~ 0
SDA
Text Label 10210 2410 0    50   ~ 0
SCL
Text Label 10210 2310 0    50   ~ 0
D5
Text Label 10210 2210 0    50   ~ 0
D6
Text Label 10210 2110 0    50   ~ 0
D9
Text Label 10215 2010 0    50   ~ 0
D10
Text Label 10220 1910 0    50   ~ 0
D11
Text Label 10220 1810 0    50   ~ 0
D12
Text Label 10225 1710 0    50   ~ 0
D13
Text Label 9020 2315 2    50   ~ 0
A5
Text Label 10230 1510 0    50   ~ 0
EN
Wire Wire Line
	10600 1610 10600 1360
Wire Wire Line
	10120 1610 10600 1610
Wire Wire Line
	10230 1410 10230 1355
$Comp
L power:+BATT #PWR044
U 1 1 5E338135
P 10230 1355
F 0 "#PWR044" H 10230 1205 50  0001 C CNN
F 1 "+BATT" H 10245 1528 50  0000 C CNN
F 2 "" H 10230 1355 50  0001 C CNN
F 3 "" H 10230 1355 50  0001 C CNN
	1    10230 1355
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR045
U 1 1 5E338DA5
P 10600 1360
F 0 "#PWR045" H 10600 1210 50  0001 C CNN
F 1 "VBUS" H 10615 1533 50  0000 C CNN
F 2 "" H 10600 1360 50  0001 C CNN
F 3 "" H 10600 1360 50  0001 C CNN
	1    10600 1360
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR013
U 1 1 5E33A17A
P 3270 2520
F 0 "#PWR013" H 3270 2370 50  0001 C CNN
F 1 "VBUS" H 3285 2693 50  0000 C CNN
F 2 "" H 3270 2520 50  0001 C CNN
F 3 "" H 3270 2520 50  0001 C CNN
	1    3270 2520
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR01
U 1 1 5E33AE47
P 845 5360
F 0 "#PWR01" H 845 5210 50  0001 C CNN
F 1 "VBUS" H 860 5533 50  0000 C CNN
F 2 "" H 845 5360 50  0001 C CNN
F 3 "" H 845 5360 50  0001 C CNN
	1    845  5360
	1    0    0    -1  
$EndComp
Text Label 9015 2215 2    50   ~ 0
A4
Text Label 9015 2115 2    50   ~ 0
A3
Text Label 9015 2015 2    50   ~ 0
A2
Text Label 9010 1915 2    50   ~ 0
A1
Text Label 9010 1815 2    50   ~ 0
A0
Text Label 9010 1615 2    50   ~ 0
AREF
Text Label 9000 1415 2    50   ~ 0
RST
Wire Wire Line
	8740 1715 8740 1755
Wire Wire Line
	8740 1715 9105 1715
$Comp
L power:GND #PWR039
U 1 1 5E343A24
P 8740 1755
F 0 "#PWR039" H 8740 1505 50  0001 C CNN
F 1 "GND" H 8745 1582 50  0000 C CNN
F 2 "" H 8740 1755 50  0001 C CNN
F 3 "" H 8740 1755 50  0001 C CNN
	1    8740 1755
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x16 J3
U 1 1 5E2A6306
P 9305 2115
F 0 "J3" H 9223 1090 50  0000 C CNN
F 1 "Conn_left" V 9410 2125 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 9305 2115 50  0001 C CNN
F 3 "~" H 9305 2115 50  0001 C CNN
	1    9305 2115
	1    0    0    -1  
$EndComp
Wire Notes Line
	4340 470  4340 4325
Wire Notes Line
	465  4325 11215 4325
Wire Notes Line
	8270 460  8270 4315
Wire Notes Line
	8270 4315 8265 4315
Wire Notes Line
	3210 4335 3210 7775
Wire Notes Line
	3210 7775 3200 7775
Wire Notes Line
	5735 4330 5735 7800
Text Label 1575 6170 3    50   ~ 0
EN
$Comp
L Device:R_Small R5
U 1 1 5E3AF686
P 4720 6695
F 0 "R5" H 4779 6741 50  0000 L CNN
F 1 "100K" H 4779 6650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4720 6695 50  0001 C CNN
F 3 "~" H 4720 6695 50  0001 C CNN
	1    4720 6695
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5E3AFFF4
P 4720 7020
F 0 "R6" H 4779 7066 50  0000 L CNN
F 1 "100K" H 4779 6975 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4720 7020 50  0001 C CNN
F 3 "~" H 4720 7020 50  0001 C CNN
	1    4720 7020
	1    0    0    -1  
$EndComp
Wire Wire Line
	4720 6920 4720 6855
Wire Wire Line
	4720 6595 4720 6515
Wire Wire Line
	4720 7120 4720 7175
$Comp
L power:GND #PWR020
U 1 1 5E3BE565
P 4720 7175
F 0 "#PWR020" H 4720 6925 50  0001 C CNN
F 1 "GND" H 4725 7002 50  0000 C CNN
F 2 "" H 4720 7175 50  0001 C CNN
F 3 "" H 4720 7175 50  0001 C CNN
	1    4720 7175
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR019
U 1 1 5E3BEEC4
P 4720 6515
F 0 "#PWR019" H 4720 6365 50  0001 C CNN
F 1 "+BATT" H 4735 6688 50  0000 C CNN
F 2 "" H 4720 6515 50  0001 C CNN
F 3 "" H 4720 6515 50  0001 C CNN
	1    4720 6515
	1    0    0    -1  
$EndComp
Wire Wire Line
	4720 6855 4905 6855
Connection ~ 4720 6855
Wire Wire Line
	4720 6855 4720 6795
Text Label 1390 1725 0    50   ~ 0
VBAT
Text Label 4905 6855 0    50   ~ 0
VBAT
$Comp
L Connector:USB_C_Plug_USB2.0 P1
U 1 1 5E3C5406
P 5135 3120
F 0 "P1" H 5242 3987 50  0000 C CNN
F 1 "USB_C_Plug_USB2.0" H 5242 3896 50  0000 C CNN
F 2 "Connectors_ElectronicCats:C393939" H 5285 3120 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 5285 3120 50  0001 C CNN
	1    5135 3120
	1    0    0    -1  
$EndComp
$Comp
L Memory_Flash:W25Q32JVSS U4
U 1 1 5E3C76BE
P 8865 5500
F 0 "U4" H 8630 5845 50  0000 C CNN
F 1 "W25Q32JVSS" H 9145 5860 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.23x5.23mm_P1.27mm" H 8865 5500 50  0001 C CNN
F 3 "http://www.winbond.com/resource-files/w25q32jv%20revg%2003272018%20plus.pdf" H 8865 5500 50  0001 C CNN
	1    8865 5500
	1    0    0    -1  
$EndComp
Wire Notes Line
	4335 1785 8255 1785
$Comp
L Device:C_Small C4
U 1 1 5E3CFB42
P 5400 1080
F 0 "C4" H 5492 1126 50  0000 L CNN
F 1 "0.1uF" H 5435 995 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5400 1080 50  0001 C CNN
F 3 "~" H 5400 1080 50  0001 C CNN
	1    5400 1080
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1180 5400 1240
Wire Wire Line
	5400 980  5400 915 
$Comp
L power:GND #PWR025
U 1 1 5E3DF06D
P 5400 1240
F 0 "#PWR025" H 5400 990 50  0001 C CNN
F 1 "GND" H 5405 1067 50  0000 C CNN
F 2 "" H 5400 1240 50  0001 C CNN
F 3 "" H 5400 1240 50  0001 C CNN
	1    5400 1240
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR024
U 1 1 5E3DFB12
P 5400 915
F 0 "#PWR024" H 5400 765 50  0001 C CNN
F 1 "+3V3" H 5415 1088 50  0000 C CNN
F 2 "" H 5400 915 50  0001 C CNN
F 3 "" H 5400 915 50  0001 C CNN
	1    5400 915 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5E3E2987
P 5740 1075
F 0 "C5" H 5832 1121 50  0000 L CNN
F 1 "0.1uF" H 5760 985 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5740 1075 50  0001 C CNN
F 3 "~" H 5740 1075 50  0001 C CNN
	1    5740 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5740 1175 5740 1235
Wire Wire Line
	5740 975  5740 910 
$Comp
L power:GND #PWR028
U 1 1 5E3E298F
P 5740 1235
F 0 "#PWR028" H 5740 985 50  0001 C CNN
F 1 "GND" H 5745 1062 50  0000 C CNN
F 2 "" H 5740 1235 50  0001 C CNN
F 3 "" H 5740 1235 50  0001 C CNN
	1    5740 1235
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR027
U 1 1 5E3E2995
P 5740 910
F 0 "#PWR027" H 5740 760 50  0001 C CNN
F 1 "+3V3" H 5755 1083 50  0000 C CNN
F 2 "" H 5740 910 50  0001 C CNN
F 3 "" H 5740 910 50  0001 C CNN
	1    5740 910 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5E3E7D6C
P 6005 1085
F 0 "C6" H 6097 1131 50  0000 L CNN
F 1 "0.1uF" H 6030 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6005 1085 50  0001 C CNN
F 3 "~" H 6005 1085 50  0001 C CNN
	1    6005 1085
	1    0    0    -1  
$EndComp
Wire Wire Line
	6005 1185 6005 1245
Wire Wire Line
	6005 985  6005 920 
$Comp
L power:GND #PWR032
U 1 1 5E3E7D74
P 6005 1245
F 0 "#PWR032" H 6005 995 50  0001 C CNN
F 1 "GND" H 6010 1072 50  0000 C CNN
F 2 "" H 6005 1245 50  0001 C CNN
F 3 "" H 6005 1245 50  0001 C CNN
	1    6005 1245
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR031
U 1 1 5E3E7D7A
P 6005 920
F 0 "#PWR031" H 6005 770 50  0001 C CNN
F 1 "+3V3" H 6020 1093 50  0000 C CNN
F 2 "" H 6005 920 50  0001 C CNN
F 3 "" H 6005 920 50  0001 C CNN
	1    6005 920 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5E3ED4E5
P 6265 1095
F 0 "C7" H 6357 1141 50  0000 L CNN
F 1 "0.1uF" H 6290 1015 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6265 1095 50  0001 C CNN
F 3 "~" H 6265 1095 50  0001 C CNN
	1    6265 1095
	1    0    0    -1  
$EndComp
Wire Wire Line
	6265 1195 6265 1255
Wire Wire Line
	6265 995  6265 930 
$Comp
L power:GND #PWR035
U 1 1 5E3ED4ED
P 6265 1255
F 0 "#PWR035" H 6265 1005 50  0001 C CNN
F 1 "GND" H 6270 1082 50  0000 C CNN
F 2 "" H 6265 1255 50  0001 C CNN
F 3 "" H 6265 1255 50  0001 C CNN
	1    6265 1255
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR034
U 1 1 5E3ED4F3
P 6265 930
F 0 "#PWR034" H 6265 780 50  0001 C CNN
F 1 "+3V3" H 6280 1103 50  0000 C CNN
F 2 "" H 6265 930 50  0001 C CNN
F 3 "" H 6265 930 50  0001 C CNN
	1    6265 930 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5E3F2915
P 6535 1095
F 0 "C8" H 6627 1141 50  0000 L CNN
F 1 "0.1uF" H 6560 1010 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6535 1095 50  0001 C CNN
F 3 "~" H 6535 1095 50  0001 C CNN
	1    6535 1095
	1    0    0    -1  
$EndComp
Wire Wire Line
	6535 1195 6535 1255
Wire Wire Line
	6535 995  6535 930 
$Comp
L power:GND #PWR037
U 1 1 5E3F291D
P 6535 1255
F 0 "#PWR037" H 6535 1005 50  0001 C CNN
F 1 "GND" H 6540 1082 50  0000 C CNN
F 2 "" H 6535 1255 50  0001 C CNN
F 3 "" H 6535 1255 50  0001 C CNN
	1    6535 1255
	1    0    0    -1  
$EndComp
Text Label 6535 930  0    50   ~ 0
AREF
$Comp
L Switch:SW_Push SW1
U 1 1 5E3F8EC4
P 7380 1095
F 0 "SW1" H 7380 1380 50  0000 C CNN
F 1 "RESET" H 7380 1289 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 7380 1295 50  0001 C CNN
F 3 "TS-1185EC-C-D-B" H 7380 1295 50  0001 C CNN
	1    7380 1095
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5E3F99F2
P 7135 1205
F 0 "#PWR038" H 7135 955 50  0001 C CNN
F 1 "GND" H 7140 1032 50  0000 C CNN
F 2 "" H 7135 1205 50  0001 C CNN
F 3 "" H 7135 1205 50  0001 C CNN
	1    7135 1205
	1    0    0    -1  
$EndComp
Wire Wire Line
	7180 1095 7135 1095
Wire Wire Line
	7135 1095 7135 1205
Wire Wire Line
	7580 1095 7665 1095
Text Label 7665 1095 0    50   ~ 0
RST
Wire Wire Line
	5735 2520 5915 2520
Wire Wire Line
	5915 2520 5915 2475
Wire Wire Line
	5735 3220 5890 3220
Wire Wire Line
	5735 3020 5895 3020
Wire Wire Line
	4835 4020 5000 4020
Wire Wire Line
	5000 4020 5000 4045
Connection ~ 5000 4020
Wire Wire Line
	5000 4020 5135 4020
$Comp
L power:GND #PWR023
U 1 1 5E422FEB
P 5000 4045
F 0 "#PWR023" H 5000 3795 50  0001 C CNN
F 1 "GND" H 5005 3872 50  0000 C CNN
F 2 "" H 5000 4045 50  0001 C CNN
F 3 "" H 5000 4045 50  0001 C CNN
	1    5000 4045
	1    0    0    -1  
$EndComp
Text Label 5895 3020 0    50   ~ 0
D-
Text Label 5890 3220 0    50   ~ 0
D+
$Comp
L Device:R_Small R8
U 1 1 5E424A18
P 5915 2720
F 0 "R8" V 5850 2700 50  0000 C CNN
F 1 "5K1" V 5875 2865 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5915 2720 50  0001 C CNN
F 3 "~" H 5915 2720 50  0001 C CNN
	1    5915 2720
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5E425578
P 5915 2820
F 0 "R9" V 5960 2700 50  0000 C CNN
F 1 "5K1" V 5985 2820 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5915 2820 50  0001 C CNN
F 3 "~" H 5915 2820 50  0001 C CNN
	1    5915 2820
	0    1    1    0   
$EndComp
Wire Wire Line
	5735 2720 5815 2720
Wire Wire Line
	5735 2820 5815 2820
Wire Wire Line
	6015 2720 6300 2720
Wire Wire Line
	6300 2720 6300 2820
Wire Wire Line
	6015 2820 6300 2820
Connection ~ 6300 2820
Wire Wire Line
	6300 2820 6300 2845
$Comp
L power:GND #PWR036
U 1 1 5E43F31C
P 6300 2845
F 0 "#PWR036" H 6300 2595 50  0001 C CNN
F 1 "GND" H 6305 2672 50  0000 C CNN
F 2 "" H 6300 2845 50  0001 C CNN
F 3 "" H 6300 2845 50  0001 C CNN
	1    6300 2845
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR030
U 1 1 5E4407A8
P 5915 2475
F 0 "#PWR030" H 5915 2325 50  0001 C CNN
F 1 "VBUS" H 5930 2648 50  0000 C CNN
F 2 "" H 5915 2475 50  0001 C CNN
F 3 "" H 5915 2475 50  0001 C CNN
	1    5915 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	8365 5400 8225 5400
Wire Wire Line
	8365 5600 8225 5600
Wire Wire Line
	8865 5100 8865 4980
Wire Wire Line
	8865 5900 8865 5985
Wire Wire Line
	9365 5300 9465 5300
Wire Wire Line
	9365 5400 9465 5400
Wire Wire Line
	9365 5600 9470 5600
Wire Wire Line
	9365 5700 9470 5700
Text Label 8225 5400 2    50   ~ 0
QSPI_CS
Text Label 8225 5600 2    50   ~ 0
QSPI_SCK
Text Label 9465 5300 0    50   ~ 0
QSPI_DATA0
Text Label 9465 5400 0    50   ~ 0
QSPI_DATA1
Text Label 9470 5600 0    50   ~ 0
QSPI_DATA2
Text Label 9470 5700 0    50   ~ 0
QSPI_DATA3
$Comp
L power:GND #PWR042
U 1 1 5E47B84A
P 8865 5985
F 0 "#PWR042" H 8865 5735 50  0001 C CNN
F 1 "GND" H 8870 5812 50  0000 C CNN
F 2 "" H 8865 5985 50  0001 C CNN
F 3 "" H 8865 5985 50  0001 C CNN
	1    8865 5985
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR041
U 1 1 5E47C616
P 8865 4980
F 0 "#PWR041" H 8865 4830 50  0001 C CNN
F 1 "+3V3" H 8880 5153 50  0000 C CNN
F 2 "" H 8865 4980 50  0001 C CNN
F 3 "" H 8865 4980 50  0001 C CNN
	1    8865 4980
	1    0    0    -1  
$EndComp
Text Notes 1635 460  0    89   ~ 0
MICROCONTROLLER
Text Notes 9340 695  0    89   ~ 0
FEATHER PINS
Text Notes 5985 1990 0    89   ~ 0
USB
Text Notes 8380 4565 0    89   ~ 0
FLASH MEMORY
Text Notes 3775 4540 0    89   ~ 0
BATTERY CHARGER
Text Notes 1535 4575 0    89   ~ 0
REGULATOR
$Comp
L Connector:Screw_Terminal_01x04 J2
U 1 1 5E2175D2
P 6390 5490
F 0 "J2" H 6470 5482 50  0000 L CNN
F 1 "SWD" H 6470 5391 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 6390 5490 50  0001 C CNN
F 3 "~" H 6390 5490 50  0001 C CNN
	1    6390 5490
	1    0    0    -1  
$EndComp
Wire Wire Line
	6190 5390 6120 5390
Wire Wire Line
	6190 5590 6120 5590
Wire Wire Line
	6190 5690 6120 5690
Text Label 6115 5490 2    50   ~ 0
SWDIO
Text Label 6120 5590 2    50   ~ 0
SWCLK
$Comp
L power:GND #PWR029
U 1 1 5E237980
P 6120 5690
F 0 "#PWR029" H 6120 5440 50  0001 C CNN
F 1 "GND" H 6125 5517 50  0000 C CNN
F 2 "" H 6120 5690 50  0001 C CNN
F 3 "" H 6120 5690 50  0001 C CNN
	1    6120 5690
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR033
U 1 1 5E238E57
P 6120 5390
F 0 "#PWR033" H 6120 5240 50  0001 C CNN
F 1 "+3.3V" H 6135 5563 50  0000 C CNN
F 2 "" H 6120 5390 50  0001 C CNN
F 3 "" H 6120 5390 50  0001 C CNN
	1    6120 5390
	1    0    0    -1  
$EndComp
Wire Notes Line
	6975 6530 6975 4335
Wire Notes Line
	6975 4335 6980 4335
Text Notes 6040 4595 0    89   ~ 0
SWD CONN
Text Label 1390 825  0    50   ~ 0
D5
Text Label 2995 925  0    50   ~ 0
D6
Text Label 2995 1125 0    50   ~ 0
D10
Text Label 2995 1425 0    50   ~ 0
D11
Text Notes 3205 1420 0    50   ~ 0
NOTA: DFU??
Text Notes 885  2905 0    50   ~ 0
NOTA: BOOT
Wire Wire Line
	6190 5490 6115 5490
$Comp
L Device:Q_PMOS_SGD Q1
U 1 1 5E39C807
P 1190 5640
F 0 "Q1" H 1394 5686 50  0000 L CNN
F 1 "DMG3415U-7" H 1370 5770 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 1390 5740 50  0001 C CNN
F 3 "~" H 1190 5640 50  0001 C CNN
	1    1190 5640
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR026
U 1 1 5E3A5E21
P 5415 5375
F 0 "#PWR026" H 5415 5225 50  0001 C CNN
F 1 "VBUS" H 5430 5548 50  0000 C CNN
F 2 "" H 5415 5375 50  0001 C CNN
F 3 "" H 5415 5375 50  0001 C CNN
	1    5415 5375
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR016
U 1 1 5E3A4B4E
P 4270 4920
F 0 "#PWR016" H 4270 4770 50  0001 C CNN
F 1 "VBUS" H 4285 5093 50  0000 C CNN
F 2 "" H 4270 4920 50  0001 C CNN
F 3 "" H 4270 4920 50  0001 C CNN
	1    4270 4920
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E275216
P 4830 4675
F 0 "#PWR021" H 4830 4425 50  0001 C CNN
F 1 "GND" H 4835 4502 50  0000 C CNN
F 2 "" H 4830 4675 50  0001 C CNN
F 3 "" H 4830 4675 50  0001 C CNN
	1    4830 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4830 4635 4830 4675
Wire Wire Line
	4745 4935 4745 4635
Wire Wire Line
	4745 5205 4915 5205
Connection ~ 4745 5205
Wire Wire Line
	4745 5135 4745 5205
$Comp
L Device:C_Small C3
U 1 1 5E26FE7B
P 4745 5035
F 0 "C3" H 4610 5165 50  0000 L CNN
F 1 "10uF" H 4510 5100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4745 5035 50  0001 C CNN
F 3 "~" H 4745 5035 50  0001 C CNN
	1    4745 5035
	1    0    0    -1  
$EndComp
Wire Wire Line
	4270 5640 4270 5675
Connection ~ 4270 5640
Wire Wire Line
	3745 5640 4270 5640
Wire Wire Line
	3745 5605 3745 5640
$Comp
L Device:R_Small R3
U 1 1 5E26C7D7
P 3745 5505
F 0 "R3" H 3804 5551 50  0000 L CNN
F 1 "4K7" H 3804 5460 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3745 5505 50  0001 C CNN
F 3 "~" H 3745 5505 50  0001 C CNN
	1    3745 5505
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR022
U 1 1 5E26906E
P 4915 5205
F 0 "#PWR022" H 4915 5055 50  0001 C CNN
F 1 "+BATT" H 4930 5378 50  0000 C CNN
F 2 "" H 4915 5205 50  0001 C CNN
F 3 "" H 4915 5205 50  0001 C CNN
	1    4915 5205
	1    0    0    -1  
$EndComp
Wire Wire Line
	5335 5405 5415 5405
Wire Wire Line
	4940 5405 5035 5405
$Comp
L Device:R_Small R7
U 1 1 5E260E7D
P 4840 5405
F 0 "R7" V 4765 5405 50  0000 C CNN
F 1 "1K" V 4920 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4840 5405 50  0001 C CNN
F 3 "~" H 4840 5405 50  0001 C CNN
	1    4840 5405
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5E2607F0
P 5185 5405
F 0 "D3" H 5178 5621 50  0000 C CNN
F 1 "LED" H 5178 5530 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5185 5405 50  0001 C CNN
F 3 "~" H 5185 5405 50  0001 C CNN
	1    5185 5405
	1    0    0    -1  
$EndComp
Wire Wire Line
	3870 5405 3745 5405
Wire Wire Line
	4670 5405 4740 5405
Wire Wire Line
	4670 5205 4745 5205
$Comp
L power:GND #PWR017
U 1 1 5E25A527
P 4270 5675
F 0 "#PWR017" H 4270 5425 50  0001 C CNN
F 1 "GND" H 4275 5502 50  0000 C CNN
F 2 "" H 4270 5675 50  0001 C CNN
F 3 "" H 4270 5675 50  0001 C CNN
	1    4270 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4270 5605 4270 5640
Wire Wire Line
	4270 5005 4270 4920
$Comp
L Battery_Management:MCP73831-2-OT U3
U 1 1 5E1EEE26
P 4270 5305
F 0 "U3" H 4385 5550 50  0000 C CNN
F 1 "MCP73831-2-OT" H 3880 5545 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4320 5055 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 4120 5255 50  0001 C CNN
	1    4270 5305
	1    0    0    -1  
$EndComp
$EndSCHEMATC

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
LIBS:custom_components
LIBS:cps2_digiav-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "CPS2_digiAV"
Date "2016-09-24"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 8900 5800 0    60   ~ 0
max. 184mA drawn
Text Notes 9000 5950 0    60   ~ 0
1mA drawn
Text Notes 5750 5000 0    60   ~ 0
I2C pull-ups\ninside
Text Notes 5500 5700 0    60   ~ 0
max. 205mA drawn
$Sheet
S 8350 1200 1750 5200
U 54FF6758
F0 "hdmitx1" 50
F1 "hdmitx.sch" 50
F2 "DE" I L 8350 4300 60 
F3 "HSYNC" I L 8350 4100 60 
F4 "VSYNC" I L 8350 4200 60 
F5 "SDA" B L 8350 4850 60 
F6 "SCL" I L 8350 4950 60 
F7 "B0" I L 8350 3100 60 
F8 "B1" I L 8350 3200 60 
F9 "B2" I L 8350 3300 60 
F10 "B3" I L 8350 3400 60 
F11 "B4" I L 8350 3500 60 
F12 "B5" I L 8350 3600 60 
F13 "B6" I L 8350 3700 60 
F14 "B7" I L 8350 3800 60 
F15 "G0" I L 8350 2200 60 
F16 "G1" I L 8350 2300 60 
F17 "G2" I L 8350 2400 60 
F18 "G3" I L 8350 2500 60 
F19 "G4" I L 8350 2600 60 
F20 "G5" I L 8350 2700 60 
F21 "G6" I L 8350 2800 60 
F22 "G7" I L 8350 2900 60 
F23 "R0" I L 8350 1300 60 
F24 "R1" I L 8350 1400 60 
F25 "R2" I L 8350 1500 60 
F26 "R3" I L 8350 1600 60 
F27 "R4" I L 8350 1700 60 
F28 "R5" I L 8350 1800 60 
F29 "R6" I L 8350 1900 60 
F30 "R7" I L 8350 2000 60 
F31 "PCLK" I L 8350 4000 60 
F32 "SYSRSTN" I L 8350 4550 60 
F33 "INTn" O L 8350 4650 60 
F34 "DVDD3V3" I L 8350 5800 60 
F35 "AVDD3V3" I L 8350 5900 60 
F36 "5V" I L 8350 6150 60 
F37 "AUD_MCLK" I L 8350 5150 60 
F38 "I2S_DATA" I L 8350 5250 60 
F39 "I2S_WS" I L 8350 5350 60 
F40 "I2S_BCK" I L 8350 5450 60 
$EndSheet
$Comp
L SN74LVC3G17 U34
U 1 1 57E738B1
P 2500 5800
F 0 "U34" H 2500 5700 50  0000 C CNN
F 1 "SN74LVC3G17" H 2500 5900 50  0000 C CNN
F 2 "custom_components:SSOP-8_3x3mm_Pitch0.65mm" H 2500 5800 50  0001 C CNN
F 3 "DOCUMENTATION" H 2500 5550 50  0001 C CNN
	1    2500 5800
	1    0    0    -1  
$EndComp
$Comp
L 74LVC245 U31
U 1 1 57E771CF
P 2350 1800
F 0 "U31" H 2450 2375 50  0000 L BNN
F 1 "74LVC245" H 2400 1225 50  0000 L TNN
F 2 "custom_components:TSSOP-20_4.4x6.5mm_Pitch0.65mm_Handsoldering" H 2350 1800 50  0001 C CNN
F 3 "" H 2350 1800 50  0000 C CNN
	1    2350 1800
	1    0    0    -1  
$EndComp
$Comp
L 74LVC245 U32
U 1 1 57E7BE83
P 2350 3200
F 0 "U32" H 2450 3775 50  0000 L BNN
F 1 "74LVC245" H 2400 2625 50  0000 L TNN
F 2 "custom_components:TSSOP-20_4.4x6.5mm_Pitch0.65mm_Handsoldering" H 2350 3200 50  0001 C CNN
F 3 "" H 2350 3200 50  0000 C CNN
	1    2350 3200
	1    0    0    -1  
$EndComp
$Comp
L 74LVC245 U33
U 1 1 57E7C26C
P 2350 4600
F 0 "U33" H 2450 5175 50  0000 L BNN
F 1 "74LVC245" H 2400 4025 50  0000 L TNN
F 2 "custom_components:TSSOP-20_4.4x6.5mm_Pitch0.65mm_Handsoldering" H 2350 4600 50  0001 C CNN
F 3 "" H 2350 4600 50  0000 C CNN
	1    2350 4600
	1    0    0    -1  
$EndComp
$Sheet
S 4650 1200 2100 4550
U 54FE3A8C
F0 "fpga1" 50
F1 "fpga.sch" 50
F2 "SDA" B R 6750 4850 60 
F3 "SCL" O R 6750 4950 60 
F4 "HSYNC_in" I L 4650 5100 60 
F5 "VSYNC_in" I L 4650 5200 60 
F6 "HDMITX_INT_N" I R 6750 4650 60 
F7 "HDMITX_VSYNC" O R 6750 4200 60 
F8 "HDMITX_HSYNC" O R 6750 4100 60 
F9 "HDMITX_DE" O R 6750 4300 60 
F10 "HDMITX_PCLK" O R 6750 4000 60 
F11 "Rin0" I L 4650 1300 60 
F12 "Rin1" I L 4650 1400 60 
F13 "Rin2" I L 4650 1500 60 
F14 "Rin3" I L 4650 1600 60 
F15 "Gin0" I L 4650 1700 60 
F16 "Gin1" I L 4650 1800 60 
F17 "Gin2" I L 4650 1900 60 
F18 "Gin3" I L 4650 2000 60 
F19 "Bin0" I L 4650 2700 60 
F20 "Bin1" I L 4650 2800 60 
F21 "Bin2" I L 4650 2900 60 
F22 "Bin3" I L 4650 3000 60 
F23 "HDMITX_B0" O R 6750 3100 60 
F24 "HDMITX_B1" O R 6750 3200 60 
F25 "HDMITX_B2" O R 6750 3300 60 
F26 "HDMITX_B3" O R 6750 3400 60 
F27 "HDMITX_B4" O R 6750 3500 60 
F28 "HDMITX_B5" O R 6750 3600 60 
F29 "HDMITX_B6" O R 6750 3700 60 
F30 "HDMITX_B7" O R 6750 3800 60 
F31 "HDMITX_G0" O R 6750 2200 60 
F32 "HDMITX_G1" O R 6750 2300 60 
F33 "HDMITX_G2" O R 6750 2400 60 
F34 "HDMITX_G3" O R 6750 2500 60 
F35 "HDMITX_G4" O R 6750 2600 60 
F36 "HDMITX_G5" O R 6750 2700 60 
F37 "HDMITX_G6" O R 6750 2800 60 
F38 "HDMITX_G7" O R 6750 2900 60 
F39 "HDMITX_R0" O R 6750 1300 60 
F40 "HDMITX_R1" O R 6750 1400 60 
F41 "HDMITX_R2" O R 6750 1500 60 
F42 "HDMITX_R3" O R 6750 1600 60 
F43 "HDMITX_R4" O R 6750 1700 60 
F44 "HDMITX_R5" O R 6750 1800 60 
F45 "HDMITX_R6" O R 6750 1900 60 
F46 "HDMITX_R7" O R 6750 2000 60 
F47 "VCCIO" I R 6750 5650 60 
F48 "Fin0" I L 4650 3100 60 
F49 "Fin1" I L 4650 3200 60 
F50 "Fin2" I L 4650 3300 60 
F51 "Fin3" I L 4650 3400 60 
F52 "I2S_BCK" I L 4650 4800 60 
F53 "I2S_WS" I L 4650 4700 60 
F54 "I2S_DATA" I L 4650 4600 60 
F55 "btn_vol-" I L 4650 4100 60 
F56 "btn_vol+" I L 4650 4200 60 
F57 "PCLKx2_in" I L 4650 5000 60 
F58 "HDMITX_RESET_N" O R 6750 4550 60 
F59 "AUD_MCLK" O R 6750 5150 60 
F60 "HDMITX_I2S_DATA" O R 6750 5250 60 
F61 "HDMITX_I2S_WS" O R 6750 5350 60 
F62 "HDMITX_I2S_BCK" O R 6750 5450 60 
$EndSheet
Text Label 6250 7250 0    60   ~ 0
A33VDD
Text Label 6250 6600 0    60   ~ 0
IOVDD
$Comp
L TLV71209DBV U8
U 1 1 57E7546E
P 5650 7300
F 0 "U8" H 5400 7500 40  0000 C CNN
F 1 "TLV70033" H 5850 7500 40  0000 C CNN
F 2 "custom_components:SOT-23-5_Handsoldering" H 5650 7400 35  0001 C CIN
F 3 "" H 5650 7300 60  0000 C CNN
	1    5650 7300
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 57E75475
P 6200 7400
F 0 "C4" H 6200 7500 40  0000 L CNN
F 1 "1u" H 6206 7315 40  0000 L CNN
F 2 "custom_components:SM0603_Capa_libcms" H 6238 7250 30  0001 C CNN
F 3 "~" H 6200 7400 60  0000 C CNN
	1    6200 7400
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 57E7547C
P 5050 7400
F 0 "C2" H 5050 7500 40  0000 L CNN
F 1 "1u" H 5056 7315 40  0000 L CNN
F 2 "custom_components:SM0603_Capa_libcms" H 5088 7250 30  0001 C CNN
F 3 "~" H 5050 7400 60  0000 C CNN
	1    5050 7400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 57E75483
P 5650 7600
F 0 "#PWR01" H 5650 7600 30  0001 C CNN
F 1 "GND" H 5650 7530 30  0001 C CNN
F 2 "" H 5650 7600 60  0001 C CNN
F 3 "" H 5650 7600 60  0000 C CNN
	1    5650 7600
	1    0    0    -1  
$EndComp
Text Notes 4750 7150 0    60   ~ 0
max. 200mA
$Comp
L C C3
U 1 1 57E7548A
P 6200 6750
F 0 "C3" H 6200 6850 40  0000 L CNN
F 1 "10u" H 6206 6665 40  0000 L CNN
F 2 "custom_components:SM0603_Capa_libcms" H 6238 6600 30  0001 C CNN
F 3 "~" H 6200 6750 60  0000 C CNN
	1    6200 6750
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 57E75491
P 5050 6750
F 0 "C1" H 5050 6850 40  0000 L CNN
F 1 "10u" H 5056 6665 40  0000 L CNN
F 2 "custom_components:SM0603_Capa_libcms" H 5088 6600 30  0001 C CNN
F 3 "~" H 5050 6750 60  0000 C CNN
	1    5050 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 57E75498
P 5650 6900
F 0 "#PWR02" H 5650 6900 30  0001 C CNN
F 1 "GND" H 5650 6830 30  0001 C CNN
F 2 "" H 5650 6900 60  0001 C CNN
F 3 "" H 5650 6900 60  0000 C CNN
	1    5650 6900
	1    0    0    -1  
$EndComp
Text Notes 4800 6450 0    60   ~ 0
max. 500mA
$Comp
L SPX2920M3-3.3 U7
U 1 1 57E754A0
P 5650 6650
F 0 "U7" H 5650 6900 40  0000 C CNN
F 1 "TC1262-3.3VDBTR" H 5650 6850 40  0000 C CNN
F 2 "custom_components:SOT-223_Handsoldering" H 5650 6750 35  0001 C CIN
F 3 "" H 5650 6650 60  0000 C CNN
	1    5650 6650
	1    0    0    -1  
$EndComp
Text Label 3350 5650 0    60   ~ 0
IOVDD
$Comp
L TEST_1P W1
U 1 1 57EA032E
P 800 6700
F 0 "W1" H 800 6970 50  0001 C CNN
F 1 "5V" H 800 6900 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 6700 50  0001 C CNN
F 3 "" H 1000 6700 50  0000 C CNN
	1    800  6700
	0    -1   -1   0   
$EndComp
NoConn ~ 3050 4300
NoConn ~ 3050 4400
NoConn ~ 3050 4500
$Comp
L GND #PWR03
U 1 1 57EABBDD
P 2350 5200
F 0 "#PWR03" H 2350 5200 30  0001 C CNN
F 1 "GND" H 2350 5130 30  0001 C CNN
F 2 "" H 2350 5200 60  0001 C CNN
F 3 "" H 2350 5200 60  0000 C CNN
	1    2350 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 57EAC3D4
P 2350 3800
F 0 "#PWR04" H 2350 3800 30  0001 C CNN
F 1 "GND" H 2350 3730 30  0001 C CNN
F 2 "" H 2350 3800 60  0001 C CNN
F 3 "" H 2350 3800 60  0000 C CNN
	1    2350 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 57EACBCB
P 2350 2400
F 0 "#PWR05" H 2350 2400 30  0001 C CNN
F 1 "GND" H 2350 2330 30  0001 C CNN
F 2 "" H 2350 2400 60  0001 C CNN
F 3 "" H 2350 2400 60  0000 C CNN
	1    2350 2400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 57EB0658
P 5050 6150
F 0 "#FLG06" H 5050 6245 50  0001 C CNN
F 1 "PWR_FLAG" H 5050 6330 50  0000 C CNN
F 2 "" H 5050 6150 50  0000 C CNN
F 3 "" H 5050 6150 50  0000 C CNN
	1    5050 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 57EBB5DE
P 1750 5950
F 0 "#PWR07" H 1750 5950 30  0001 C CNN
F 1 "GND" H 1750 5880 30  0001 C CNN
F 2 "" H 1750 5950 60  0001 C CNN
F 3 "" H 1750 5950 60  0000 C CNN
	1    1750 5950
	0    1    1    0   
$EndComp
Text Label 1400 6700 0    60   ~ 0
5V
Text Label 5550 6150 0    60   ~ 0
5V
$Comp
L TEST_1P W26
U 1 1 57EC94EE
P 1150 5650
F 0 "W26" H 1150 5920 50  0001 C CNN
F 1 "HSYNC" H 1150 5850 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1350 5650 50  0001 C CNN
F 3 "" H 1350 5650 50  0000 C CNN
	1    1150 5650
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W24
U 1 1 57EC97A5
P 1000 5850
F 0 "W24" H 1000 6120 50  0001 C CNN
F 1 "VSYNC" H 1000 6050 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1200 5850 50  0001 C CNN
F 3 "" H 1200 5850 50  0000 C CNN
	1    1000 5850
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W21
U 1 1 57EC9A2D
P 800 6000
F 0 "W21" H 800 6270 50  0001 C CNN
F 1 "PCLKx2" H 800 6200 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 6000 50  0001 C CNN
F 3 "" H 1000 6000 50  0000 C CNN
	1    800  6000
	0    -1   -1   0   
$EndComp
Text Label 1350 5000 0    60   ~ 0
IOVDD
Text Label 1350 3600 0    60   ~ 0
IOVDD
Text Label 1350 2200 0    60   ~ 0
IOVDD
Text Label 2050 3950 0    60   ~ 0
IOVDD
Text Label 2050 2550 0    60   ~ 0
IOVDD
Text Label 2050 1150 0    60   ~ 0
IOVDD
$Comp
L TEST_1P W20
U 1 1 57ED29DE
P 800 5000
F 0 "W20" H 800 5270 50  0001 C CNN
F 1 "I2S_BCK" H 800 5200 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 5000 50  0001 C CNN
F 3 "" H 1000 5000 50  0000 C CNN
	1    800  5000
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W22
U 1 1 57ED31AA
P 950 4800
F 0 "W22" H 950 5070 50  0001 C CNN
F 1 "I2S_WS" H 950 5000 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1150 4800 50  0001 C CNN
F 3 "" H 1150 4800 50  0000 C CNN
	1    950  4800
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W25
U 1 1 57ED3435
P 1100 4600
F 0 "W25" H 1100 4870 50  0001 C CNN
F 1 "I2S_DATA" H 1100 4800 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1300 4600 50  0001 C CNN
F 3 "" H 1300 4600 50  0000 C CNN
	1    1100 4600
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W19
U 1 1 57ED59C2
P 800 4300
F 0 "W19" H 800 4570 50  0001 C CNN
F 1 "btn_vol+" H 800 4500 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 4300 50  0001 C CNN
F 3 "" H 1000 4300 50  0000 C CNN
	1    800  4300
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W23
U 1 1 57ED5C6B
P 1000 4100
F 0 "W23" H 1000 4370 50  0001 C CNN
F 1 "btn_vol-" H 1000 4300 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1200 4100 50  0001 C CNN
F 3 "" H 1200 4100 50  0000 C CNN
	1    1000 4100
	0    -1   -1   0   
$EndComp
$Comp
L C C7
U 1 1 57ED977F
P 1900 3950
F 0 "C7" H 1925 4050 50  0000 L CNN
F 1 "0.1u" H 1925 3850 50  0000 L CNN
F 2 "custom_components:SM0603_Capa_libcms" H 1938 3800 50  0001 C CNN
F 3 "" H 1900 3950 50  0000 C CNN
	1    1900 3950
	0    -1   -1   0   
$EndComp
$Comp
L C C8
U 1 1 57ED9AF5
P 3800 5650
F 0 "C8" H 3825 5750 50  0000 L CNN
F 1 "0.1u" H 3825 5550 50  0000 L CNN
F 2 "custom_components:SM0603_Capa_libcms" H 3838 5500 50  0001 C CNN
F 3 "" H 3800 5650 50  0000 C CNN
	1    3800 5650
	0    -1   -1   0   
$EndComp
$Comp
L C C6
U 1 1 57EDA2E1
P 1900 2550
F 0 "C6" H 1925 2650 50  0000 L CNN
F 1 "0.1u" H 1925 2450 50  0000 L CNN
F 2 "custom_components:SM0603_Capa_libcms" H 1938 2400 50  0001 C CNN
F 3 "" H 1900 2550 50  0000 C CNN
	1    1900 2550
	0    -1   -1   0   
$EndComp
$Comp
L C C5
U 1 1 57EDA5B6
P 1900 1150
F 0 "C5" H 1925 1250 50  0000 L CNN
F 1 "0.1u" H 1925 1050 50  0000 L CNN
F 2 "custom_components:SM0603_Capa_libcms" H 1938 1000 50  0001 C CNN
F 3 "" H 1900 1150 50  0000 C CNN
	1    1900 1150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 57EDAA20
P 1750 2550
F 0 "#PWR08" H 1750 2550 30  0001 C CNN
F 1 "GND" H 1750 2480 30  0001 C CNN
F 2 "" H 1750 2550 60  0001 C CNN
F 3 "" H 1750 2550 60  0000 C CNN
	1    1750 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 57EDB425
P 1750 1150
F 0 "#PWR09" H 1750 1150 30  0001 C CNN
F 1 "GND" H 1750 1080 30  0001 C CNN
F 2 "" H 1750 1150 60  0001 C CNN
F 3 "" H 1750 1150 60  0000 C CNN
	1    1750 1150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 57EDBA60
P 1750 3950
F 0 "#PWR010" H 1750 3950 30  0001 C CNN
F 1 "GND" H 1750 3880 30  0001 C CNN
F 2 "" H 1750 3950 60  0001 C CNN
F 3 "" H 1750 3950 60  0000 C CNN
	1    1750 3950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 57EDC1D3
P 3950 5650
F 0 "#PWR011" H 3950 5650 30  0001 C CNN
F 1 "GND" H 3950 5580 30  0001 C CNN
F 2 "" H 3950 5650 60  0001 C CNN
F 3 "" H 3950 5650 60  0000 C CNN
	1    3950 5650
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W18
U 1 1 57EDCBCE
P 800 3400
F 0 "W18" H 800 3670 50  0001 C CNN
F 1 "F3" H 800 3600 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 3400 50  0001 C CNN
F 3 "" H 1000 3400 50  0000 C CNN
	1    800  3400
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W17
U 1 1 57EDD21E
P 800 3300
F 0 "W17" H 800 3570 50  0001 C CNN
F 1 "F2" H 800 3500 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 3300 50  0001 C CNN
F 3 "" H 1000 3300 50  0000 C CNN
	1    800  3300
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W16
U 1 1 57EDD4BC
P 800 3200
F 0 "W16" H 800 3470 50  0001 C CNN
F 1 "F1" H 800 3400 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 3200 50  0001 C CNN
F 3 "" H 1000 3200 50  0000 C CNN
	1    800  3200
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W15
U 1 1 57EDD75D
P 800 3100
F 0 "W15" H 800 3370 50  0001 C CNN
F 1 "F0" H 800 3300 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 3100 50  0001 C CNN
F 3 "" H 1000 3100 50  0000 C CNN
	1    800  3100
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W14
U 1 1 57EDDA01
P 800 3000
F 0 "W14" H 800 3270 50  0001 C CNN
F 1 "B3" H 800 3200 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 3000 50  0001 C CNN
F 3 "" H 1000 3000 50  0000 C CNN
	1    800  3000
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W13
U 1 1 57EDDCA8
P 800 2900
F 0 "W13" H 800 3170 50  0001 C CNN
F 1 "B2" H 800 3100 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 2900 50  0001 C CNN
F 3 "" H 1000 2900 50  0000 C CNN
	1    800  2900
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W12
U 1 1 57EDDF52
P 800 2800
F 0 "W12" H 800 3070 50  0001 C CNN
F 1 "B1" H 800 3000 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 2800 50  0001 C CNN
F 3 "" H 1000 2800 50  0000 C CNN
	1    800  2800
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W11
U 1 1 57EDE1FF
P 800 2700
F 0 "W11" H 800 2970 50  0001 C CNN
F 1 "B0" H 800 2900 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 2700 50  0001 C CNN
F 3 "" H 1000 2700 50  0000 C CNN
	1    800  2700
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W10
U 1 1 57EDFCE3
P 800 2000
F 0 "W10" H 800 2270 50  0001 C CNN
F 1 "G3" H 800 2200 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 2000 50  0001 C CNN
F 3 "" H 1000 2000 50  0000 C CNN
	1    800  2000
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W9
U 1 1 57EDFCE9
P 800 1900
F 0 "W9" H 800 2170 50  0001 C CNN
F 1 "G2" H 800 2100 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 1900 50  0001 C CNN
F 3 "" H 1000 1900 50  0000 C CNN
	1    800  1900
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W8
U 1 1 57EDFCEF
P 800 1800
F 0 "W8" H 800 2070 50  0001 C CNN
F 1 "G1" H 800 2000 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 1800 50  0001 C CNN
F 3 "" H 1000 1800 50  0000 C CNN
	1    800  1800
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W7
U 1 1 57EDFCF5
P 800 1700
F 0 "W7" H 800 1970 50  0001 C CNN
F 1 "G0" H 800 1900 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 1700 50  0001 C CNN
F 3 "" H 1000 1700 50  0000 C CNN
	1    800  1700
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W6
U 1 1 57EDFCFB
P 800 1600
F 0 "W6" H 800 1870 50  0001 C CNN
F 1 "R3" H 800 1800 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 1600 50  0001 C CNN
F 3 "" H 1000 1600 50  0000 C CNN
	1    800  1600
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W5
U 1 1 57EDFD01
P 800 1500
F 0 "W5" H 800 1770 50  0001 C CNN
F 1 "R2" H 800 1700 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 1500 50  0001 C CNN
F 3 "" H 1000 1500 50  0000 C CNN
	1    800  1500
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W4
U 1 1 57EDFD07
P 800 1400
F 0 "W4" H 800 1670 50  0001 C CNN
F 1 "R1" H 800 1600 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 1400 50  0001 C CNN
F 3 "" H 1000 1400 50  0000 C CNN
	1    800  1400
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W3
U 1 1 57EDFD0D
P 800 1300
F 0 "W3" H 800 1570 50  0001 C CNN
F 1 "R0" H 800 1500 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 1300 50  0001 C CNN
F 3 "" H 1000 1300 50  0000 C CNN
	1    800  1300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR012
U 1 1 57EC822F
P 950 6450
F 0 "#PWR012" H 950 6450 30  0001 C CNN
F 1 "GND" H 950 6380 30  0001 C CNN
F 2 "" H 950 6450 60  0001 C CNN
F 3 "" H 950 6450 60  0000 C CNN
	1    950  6450
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W2
U 1 1 57EA3300
P 800 6450
F 0 "W2" H 800 6720 50  0001 C CNN
F 1 "GND" H 800 6650 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 6450 50  0001 C CNN
F 3 "" H 1000 6450 50  0000 C CNN
	1    800  6450
	0    -1   -1   0   
$EndComp
NoConn ~ 1650 4400
NoConn ~ 1650 4500
$Comp
L GND #PWR013
U 1 1 57EF5B5D
P 1650 5100
F 0 "#PWR013" H 1650 5100 30  0001 C CNN
F 1 "GND" H 1650 5030 30  0001 C CNN
F 2 "" H 1650 5100 60  0001 C CNN
F 3 "" H 1650 5100 60  0000 C CNN
	1    1650 5100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 57EF6684
P 1650 3700
F 0 "#PWR014" H 1650 3700 30  0001 C CNN
F 1 "GND" H 1650 3630 30  0001 C CNN
F 2 "" H 1650 3700 60  0001 C CNN
F 3 "" H 1650 3700 60  0000 C CNN
	1    1650 3700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR015
U 1 1 57EF6911
P 1650 2300
F 0 "#PWR015" H 1650 2300 30  0001 C CNN
F 1 "GND" H 1650 2230 30  0001 C CNN
F 2 "" H 1650 2300 60  0001 C CNN
F 3 "" H 1650 2300 60  0000 C CNN
	1    1650 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 57EF800A
P 950 5300
F 0 "#PWR016" H 950 5300 30  0001 C CNN
F 1 "GND" H 950 5230 30  0001 C CNN
F 2 "" H 950 5300 60  0001 C CNN
F 3 "" H 950 5300 60  0000 C CNN
	1    950  5300
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W30
U 1 1 57EF8011
P 800 5300
F 0 "W30" H 800 5570 50  0001 C CNN
F 1 "GND" H 800 5500 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 5300 50  0001 C CNN
F 3 "" H 1000 5300 50  0000 C CNN
	1    800  5300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR017
U 1 1 57EF84FF
P 950 6250
F 0 "#PWR017" H 950 6250 30  0001 C CNN
F 1 "GND" H 950 6180 30  0001 C CNN
F 2 "" H 950 6250 60  0001 C CNN
F 3 "" H 950 6250 60  0000 C CNN
	1    950  6250
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W31
U 1 1 57EF8506
P 800 6250
F 0 "W31" H 800 6520 50  0001 C CNN
F 1 "GND" H 800 6450 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 6250 50  0001 C CNN
F 3 "" H 1000 6250 50  0000 C CNN
	1    800  6250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR018
U 1 1 57EF94FE
P 950 3850
F 0 "#PWR018" H 950 3850 30  0001 C CNN
F 1 "GND" H 950 3780 30  0001 C CNN
F 2 "" H 950 3850 60  0001 C CNN
F 3 "" H 950 3850 60  0000 C CNN
	1    950  3850
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W29
U 1 1 57EF9505
P 800 3850
F 0 "W29" H 800 4120 50  0001 C CNN
F 1 "GND" H 800 4050 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 3850 50  0001 C CNN
F 3 "" H 1000 3850 50  0000 C CNN
	1    800  3850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR019
U 1 1 57EFA015
P 950 3550
F 0 "#PWR019" H 950 3550 30  0001 C CNN
F 1 "GND" H 950 3480 30  0001 C CNN
F 2 "" H 950 3550 60  0001 C CNN
F 3 "" H 950 3550 60  0000 C CNN
	1    950  3550
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W28
U 1 1 57EFA01C
P 800 3550
F 0 "W28" H 800 3820 50  0001 C CNN
F 1 "GND" H 800 3750 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 3550 50  0001 C CNN
F 3 "" H 1000 3550 50  0000 C CNN
	1    800  3550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR020
U 1 1 57EFA50A
P 950 2150
F 0 "#PWR020" H 950 2150 30  0001 C CNN
F 1 "GND" H 950 2080 30  0001 C CNN
F 2 "" H 950 2150 60  0001 C CNN
F 3 "" H 950 2150 60  0000 C CNN
	1    950  2150
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W27
U 1 1 57EFA511
P 800 2150
F 0 "W27" H 800 2420 50  0001 C CNN
F 1 "GND" H 800 2350 50  0000 C CNN
F 2 "custom_components:SMD_PAD" H 1000 2150 50  0001 C CNN
F 3 "" H 1000 2150 50  0000 C CNN
	1    800  2150
	0    -1   -1   0   
$EndComp
NoConn ~ 1650 4300
Wire Wire Line
	3050 1300 4650 1300
Wire Wire Line
	3050 1400 4650 1400
Wire Wire Line
	3050 1500 4650 1500
Wire Wire Line
	3050 1600 4650 1600
Wire Wire Line
	3050 1700 4650 1700
Wire Wire Line
	3050 1800 4650 1800
Wire Wire Line
	3050 1900 4650 1900
Wire Wire Line
	3050 2000 4650 2000
Wire Wire Line
	3050 2700 4650 2700
Wire Wire Line
	3050 2800 4650 2800
Wire Wire Line
	3050 2900 4650 2900
Wire Wire Line
	3050 3000 4650 3000
Wire Wire Line
	6750 1300 8350 1300
Wire Wire Line
	6750 1400 8350 1400
Wire Wire Line
	6750 1500 8350 1500
Wire Wire Line
	6750 1600 8350 1600
Wire Wire Line
	6750 1700 8350 1700
Wire Wire Line
	6750 1800 8350 1800
Wire Wire Line
	6750 1900 8350 1900
Wire Wire Line
	6750 2000 8350 2000
Wire Wire Line
	6750 2200 8350 2200
Wire Wire Line
	6750 2300 8350 2300
Wire Wire Line
	6750 2400 8350 2400
Wire Wire Line
	6750 2500 8350 2500
Wire Wire Line
	6750 2600 8350 2600
Wire Wire Line
	6750 2700 8350 2700
Wire Wire Line
	6750 2800 8350 2800
Wire Wire Line
	6750 2900 8350 2900
Wire Wire Line
	6750 3100 8350 3100
Wire Wire Line
	6750 3200 8350 3200
Wire Wire Line
	6750 3300 8350 3300
Wire Wire Line
	6750 3400 8350 3400
Wire Wire Line
	6750 3500 8350 3500
Wire Wire Line
	6750 3600 8350 3600
Wire Wire Line
	6750 3700 8350 3700
Wire Wire Line
	6750 3800 8350 3800
Wire Wire Line
	6750 4000 8350 4000
Wire Wire Line
	6750 4100 8350 4100
Wire Wire Line
	6750 4200 8350 4200
Wire Wire Line
	6750 4300 8350 4300
Wire Wire Line
	6750 4550 8350 4550
Wire Wire Line
	6750 4650 8350 4650
Wire Notes Line
	8950 5950 9550 5950
Wire Notes Line
	6350 4800 6350 5000
Wire Notes Line
	8950 5950 8950 5850
Wire Notes Line
	8950 5850 9550 5850
Wire Notes Line
	9550 5850 9550 5950
Wire Notes Line
	9800 5700 8900 5700
Wire Notes Line
	8900 5800 9800 5800
Wire Notes Line
	8900 5700 8900 5800
Wire Notes Line
	9800 5800 9800 5700
Wire Notes Line
	5700 4800 6350 4800
Wire Notes Line
	6350 5000 5700 5000
Wire Wire Line
	8350 4950 6750 4950
Wire Wire Line
	6750 4850 8350 4850
Wire Wire Line
	7500 5800 8350 5800
Wire Wire Line
	1750 5750 1600 5750
Wire Wire Line
	1600 5750 1600 5300
Wire Wire Line
	1600 5300 3050 5300
Wire Wire Line
	3050 5300 3050 5000
Wire Wire Line
	3050 5000 4650 5000
Wire Wire Line
	3250 5750 4100 5750
Wire Wire Line
	4100 5750 4100 5100
Wire Wire Line
	4100 5100 4650 5100
Wire Wire Line
	3250 5950 4300 5950
Wire Wire Line
	4300 5950 4300 5200
Wire Wire Line
	4300 5200 4650 5200
Wire Wire Line
	3050 4100 4650 4100
Wire Wire Line
	3050 4200 4650 4200
Wire Wire Line
	3050 4600 4650 4600
Wire Wire Line
	3050 4700 4650 4700
Wire Wire Line
	3050 4800 4650 4800
Connection ~ 5050 7250
Connection ~ 6200 7250
Wire Wire Line
	4750 7250 5200 7250
Wire Wire Line
	5200 7250 5200 7400
Connection ~ 5050 6600
Connection ~ 6200 6600
Wire Wire Line
	4750 6600 5250 6600
Wire Wire Line
	6050 6600 6900 6600
Connection ~ 4750 6600
Wire Wire Line
	7050 5900 8350 5900
Wire Wire Line
	6100 7250 6800 7250
Wire Wire Line
	6800 7250 6800 6750
Wire Wire Line
	6800 6750 7050 6750
Wire Wire Line
	7050 6750 7050 5900
Wire Wire Line
	4750 6150 4750 7250
Wire Wire Line
	3650 5650 3250 5650
Wire Wire Line
	3050 3100 4650 3100
Wire Wire Line
	4650 3200 3050 3200
Wire Wire Line
	4650 3300 3050 3300
Wire Wire Line
	3050 3400 4650 3400
Connection ~ 5650 7600
Wire Wire Line
	2350 2400 2350 2350
Wire Wire Line
	2350 3800 2350 3750
Wire Wire Line
	2350 5200 2350 5150
Connection ~ 5050 6150
Wire Notes Line
	5700 5000 5700 4800
Wire Wire Line
	6750 5650 7500 5650
Wire Wire Line
	7500 5650 7500 5800
Wire Wire Line
	6900 6600 6900 5650
Connection ~ 6900 5650
Wire Wire Line
	800  6450 950  6450
Wire Wire Line
	800  6700 1500 6700
Wire Wire Line
	1750 5650 1150 5650
Wire Wire Line
	1750 5850 1000 5850
Wire Wire Line
	3250 5850 3400 5850
Wire Wire Line
	3400 5850 3400 6300
Wire Wire Line
	3400 6300 1400 6300
Wire Wire Line
	1400 6300 1400 6000
Wire Wire Line
	1400 6000 800  6000
Wire Wire Line
	1350 5000 1650 5000
Wire Wire Line
	1350 3600 1650 3600
Wire Wire Line
	1350 2200 1650 2200
Wire Wire Line
	2050 3950 2350 3950
Wire Wire Line
	2050 2550 2350 2550
Wire Wire Line
	2350 2550 2350 2650
Wire Wire Line
	2050 1150 2350 1150
Wire Wire Line
	2350 1150 2350 1250
Wire Wire Line
	1650 4600 1100 4600
Wire Wire Line
	950  4800 1100 4800
Wire Wire Line
	1100 4800 1100 4700
Wire Wire Line
	1100 4700 1650 4700
Wire Wire Line
	1650 4800 1250 4800
Wire Wire Line
	1250 4800 1250 4900
Wire Wire Line
	1250 4900 1000 4900
Wire Wire Line
	1000 4900 1000 5000
Wire Wire Line
	1000 5000 800  5000
Wire Wire Line
	1650 4100 1000 4100
Wire Wire Line
	800  4300 1200 4300
Wire Wire Line
	1200 4300 1200 4200
Wire Wire Line
	1200 4200 1650 4200
Wire Wire Line
	800  2700 1650 2700
Wire Wire Line
	1650 2800 800  2800
Wire Wire Line
	800  2900 1650 2900
Wire Wire Line
	1650 3000 800  3000
Wire Wire Line
	800  3100 1650 3100
Wire Wire Line
	1650 3200 800  3200
Wire Wire Line
	800  3300 1650 3300
Wire Wire Line
	800  3400 1650 3400
Wire Wire Line
	800  1300 1650 1300
Wire Wire Line
	1650 1400 800  1400
Wire Wire Line
	800  1500 1650 1500
Wire Wire Line
	1650 1600 800  1600
Wire Wire Line
	800  1700 1650 1700
Wire Wire Line
	1650 1800 800  1800
Wire Wire Line
	800  1900 1650 1900
Wire Wire Line
	800  2000 1650 2000
Wire Wire Line
	6750 5150 8350 5150
Wire Wire Line
	8350 5250 6750 5250
Wire Wire Line
	6750 5350 8350 5350
Wire Wire Line
	8350 5450 6750 5450
Wire Wire Line
	2350 3950 2350 4050
Wire Wire Line
	5050 6900 6200 6900
Connection ~ 5650 6900
Wire Wire Line
	5050 7550 5050 7600
Wire Wire Line
	4750 7600 6200 7600
Wire Wire Line
	6200 7600 6200 7550
Connection ~ 5050 7600
Wire Wire Line
	800  5300 950  5300
Wire Wire Line
	800  6250 950  6250
Wire Wire Line
	800  3850 950  3850
Wire Wire Line
	800  3550 950  3550
Wire Wire Line
	800  2150 950  2150
$Comp
L PWR_FLAG #FLG021
U 1 1 57EB1979
P 4750 7600
F 0 "#FLG021" H 4750 7695 50  0001 C CNN
F 1 "PWR_FLAG" H 4750 7780 50  0000 C CNN
F 2 "" H 4750 7600 50  0000 C CNN
F 3 "" H 4750 7600 50  0000 C CNN
	1    4750 7600
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 57F2D882
P 1300 6850
F 0 "C9" H 1300 6950 40  0000 L CNN
F 1 "47u" H 1306 6765 40  0000 L CNN
F 2 "custom_components:SM0603_Capa_libcms" H 1338 6700 30  0001 C CNN
F 3 "~" H 1300 6850 60  0000 C CNN
	1    1300 6850
	1    0    0    -1  
$EndComp
$Comp
L ZENERsmall D1
U 1 1 57F2E2C3
P 1050 6800
F 0 "D1" H 1050 6900 50  0000 C CNN
F 1 "SD05-7" H 1050 6700 50  0000 C CNN
F 2 "custom_components:SOD-323_Handsoldering" H 1050 6800 50  0001 C CNN
F 3 "" H 1050 6800 50  0000 C CNN
	1    1050 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 6900 1050 7000
Wire Wire Line
	1050 7000 1300 7000
$Comp
L GND #PWR022
U 1 1 57F2EE42
P 1200 7000
F 0 "#PWR022" H 1200 7000 30  0001 C CNN
F 1 "GND" H 1200 6930 30  0001 C CNN
F 2 "" H 1200 7000 60  0001 C CNN
F 3 "" H 1200 7000 60  0000 C CNN
	1    1200 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6150 8350 6150
Connection ~ 1050 6700
Connection ~ 1300 6700
Connection ~ 1200 7000
$EndSCHEMATC

100 '    KINGDOM
110 '
120 GOSUB 2180: GOSUB 1970
130 KEY OFF: WIDTH 80
140 RANDOMIZE VAL(RIGHT$(TIME$, 2))
150 CLS: RESTORE: K = 100: S = 500: P = 2500: Q = 100
160 A = 0: D = 1: M = 0: N = 0: Z1 = 0
170 GOSUB 1830
180 B1 = 0: B2 = 0: B3 = 0: B4 = 0: B5 = 0: K1 = 0: S1 = 0: P1 = 0: N1 = 0
190 ON M GOTO 320, 430, 530, 680
200 IF S <= 2 * KORS < T1 THEN M = M + 1: GOTO 320
210 IF 5 * K <= Q THEN M = M + 1: GOTO 320
220 INPUT "HOW MANY SQUARES DO YOU WISH TO TRADE SERVANTS FOR"; B1
230 IF S - (B1 * T1) >= 2 * K THEN 270
240 PRINT "SERVANTS MUST TEND YOUR KNIGHTS, ";
250 PRINT "YOU MAY TRADE FOR ONLY"; INT((S - 2 * K) / T1); "SQUARES."
260 GOTO 220
270 IF Q + B1 <= 5 * K THEN 300
280 PRINT "YOU HAVEN'T ENOUGH KNIGHTS TO PROTECT SUCH A KINGDOM!"
290 GOTO 220
300 S = S - B1 * T1: Q = Q + B1
310 M = M + 1: GOTO 170
320 IF P <= 5 * Q + T2 OR P < T2 THEN M = M + 1: GOTO 430
330 IF 5 * K <= Q THEN M = M + 1: GOTO 430
340 INPUT "HOW MANY SQUARES DO YOU WISH TO ACQUIRE BY TRADING PEASANTS FOR"; B2
350 IF P - (B2 * T2) >= 5 * (Q + B2) THEN 390
360 GOSUB 1730
370 PRINT "PEASANTS MUST TEND YOUR LAND, ";
380 PRINT "YOU MAY TRADE FOR ONLY"; Z; "SQUARES.": GOTO 340
390 IF Q + B2 <= 5 * K THEN 420
400 PRINT "YOU HAVE NOT ENOUGH KNIGHTS TO PROTECT SUCH A KINGDOM!"
410 GOTO 340
420 P = P - (B2 * T2): Q = Q + B2: GOTO 310
430 IF D = 1 OR N < T3 OR 5 * K <= Q THEN M = M + 1: GOTO 530
440 INPUT "HOW MANY SQUARES DO YOU WISH TO ACQUIRE BY TRADING NOMADS FOR"; B5
450 IF N - (B5 * T3) >= 0 THEN 490
460 PRINT "SIR, YOU HAVE NOT ENOUGH NOMADS TO MAKE SUCH A TRADE!"
470 X = INT(N / T3): IF Q + X > 5 * K THEN X = 5 * K - Q
480 PRINT "YOU MAY TRADE FOR ONLY"; X; "SQUARES.": GOTO 440
490 IF Q + B5 <= 5 * K THEN 520
500 PRINT "SIR, YOU HAVEN'T ENOUGH KNIGHTS TO PROTECT SUCH A KINGDOM"
510 GOTO 440
520 N = N - B5 * T3: Q = Q + B5: GOTO 310
530 INPUT "HOW MANY SQUARES DO YOU WISH TO TRADE FOR SERVANTS"; B3
540 IF B3 < Q / 2 + 1 THEN 660
550 IF Z1 = 0 THEN 620
560 CLS
570 IF Z1 = 1 THEN CLS: PRINT: PRINT: PRINT: PRINT: PRINT: PRINT
580 IF Z1 = 1 THEN PRINT "SUCH A FOOL!!  THOUGH WARNED,"
590 PRINT "YOU TRADED AWAY MORE THAN HALF THE KINGDOM."
600 PRINT "THE PEOPLE HAVE RIOTED, YOU HAVE BEEN DETHRONED AND"
610 PRINT "SHALL BE BEHEADED ON THE MORROW.": GOTO 1660
620 Z1 = 1: PRINT "SIR!!  IF YOU TRADE AWAY SUCH LAND, THE PEOPLE"
630 PRINT "WILL SURELY REVOLT.  PLEASE I BEG YOU RECONSIDER."
640 IF M = 4 THEN 680
650 GOTO 530
660 S = S + B3 * T1: Q = Q - B3
670 GOTO 310
680 INPUT "HOW MANY SQUARES DO YOU WISH TO TRADE FOR PEASANTS"; B4
690 IF B4 < Q / 2 + 1 THEN 720
700 IF Z1 = 0 THEN 620
710 IF Z1 = 1 THEN 560
720 P = P + B4 * T2: Q = Q - B4
730 M = 0: A = 1
740 CLS
750 GOSUB 1830: PRINT: PRINT "THE BARBARIANS ARE MARCHING TOWARD THE KINGDOM."
760 PRINT "YOU MUST SEND YOUR PEOPLE OUT TO FIGHT THEM OFF!": PRINT
770 IF Q / 5 > K OR K <= 1 THEN 810
780 INPUT "HOW MANY KNIGHTS  WILL YOU SEND "; K1
790 A$ = "HALF YOUR KNIGHTS MUST STAY TO DEFEND THE CASTLE."
800 IF K1 > K / 2 THEN PRINT A$: PRINT: GOTO 780
810 IF S < 2 * (K - K1) + 1 THEN 850
820 INPUT "HOW MANY SERVANTS WILL YOU SEND "; S1
830 A$ = "SOME SERVANTS MUST STAY TO TEND YOUR KNIGHTS."
840 IF S - S1 < 2 * (K - K1) THEN PRINT A$: PRINT: GOTO 820
850 IF P > 0 THEN INPUT "HOW MANY PEASANTS WILL YOU SEND "; P1
860 IF P > 0 AND P1 > P THEN PRINT "SIR, YOU HAVEN'T THAT MANY!": PRINT
870 IF N > 0 THEN INPUT "HOW MANY NOMADS   WILL YOU SEND "; N1
880 IF N > 0 AND N1 > N THEN PRINT "SIR, YOU HAVEN'T THAN MANY!": PRINT
890 IF N1 = 0 THEN 930
900 PRINT: PRINT: PRINT
910 GOSUB 1760
920 CLS
930 F = K1 + S1 + P1 + N1: F1 = K1 * 50 + S1 * 10 + P1 * 2 + N1
940 IF F = 0 THEN 980
950 K3 = INT(K / 2 * W1 * .0001): S3 = INT(S / 2 * W1 * .0001): P3 = INT(P / 2 * W1 * .0001)
960 IF F = 0 THEN F = 1: N3 = INT(N / 2 * W1 * .0001): GOTO 1210
970 K2 = K1 / F: S2 = S1 / F: P2 = P1 / F: N2 = N1 / F
980 E = INT(RND(1) * 10000)
990 E1 = ABS(INT(RND(1) * 10))
1000 IF E1 = 9 THEN E = E * 3
1010 IF E1 = 8 THEN E = E * 2
1020 IF E1 < 8 AND E1 > 4 THEN E = INT(E * 1.5)
1030 W = F1 - E: W1 = ABS(W)
1040 IF F = 0 THEN 950
1050 IF W <= 0 THEN 1140
1060 K3 = INT(E * K2 / 100): S3 = INT(E * S2 / 20)
1070 IF K3 > K1 THEN K3 = K1
1080 IF S3 > S1 THEN S3 = S1
1090 P3 = INT(E * P2 / 4): N3 = INT(E * N2 / 2)
1100 IF P3 > P1 THEN P3 = P1
1110 IF N3 > N1 THEN N3 = N1
1120 K = K - K3: S = S - S3: P = P - P3: N = N - N3 + E
1130 N4 = E
1140 IF W >= 0 THEN 1240
1150 K3 = INT(W1 * K2 / 50): S3 = INT(W1 * S2 / 10)
1160 IF K3 > K THEN K3 = K
1170 IF S3 > S THEN S3 = S
1180 P3 = INT(W1 * P2 / 2): N3 = INT(W1 * N2)
1190 IF P3 > P THEN P3 = P
1200 IF N3 > N THEN N3 = N
1210 Q1 = Q / (K + S + P + N): Q2 = INT((K3 + S3 + P3 + N3) * Q1): Q = Q - Q2
1220 K = K - K3: S = S - S3: P = P - P3: N = N - N3 + INT(W1 / 2)
1230 N4 = INT(W1 / 2)
1240 IF W <> 0 THEN 1280
1250 PRINT "THE ATTACKING BARBARIANS HAVE SEEN YOUR FORCES AND"
1260 PRINT "RETREATED! THROUGH YOUR WISDOM THE KINGDOM HAS"
1270 PRINT "BEEN SAVED!": PRINT: PRINT: PRINT: GOTO 1350
1280 K4 = ABS(INT(RND(1) * 10)): S4 = ABS(INT(RND(1) * 50))
1290 P4 = ABS(INT(RND(1) * 250))
1300 IF K4 > S THEN K4 = S
1310 IF S4 > P THEN S4 = P
1320 IF P4 > N THEN P4 = N
1330 K = K + K4: S = S + S4 - K4: P = P + P4 - S4: N = N - P4
1340 CLS
1350 READ D$
1360 PRINT "The history books will show that during your "; D$; " decade,"
1370 PRINT: PRINT "Your kingdom was attacked by"; E; "barbarians.": PRINT
1380 PRINT "YOU SENT INTO BATTLE:", "YOU LOST IN BATTLE:"
1390 PRINT USING "##### KNIGHTS               ##### KNIGHTS"; K1, K3
1400 PRINT USING "##### SERVANTS              ##### SERVANTS"; S1, S3
1410 PRINT USING "##### PEASANTS              ##### PEASANTS"; P1, P3
1420 PRINT USING "##### NOMADS                ##### NOMADS"; N1, N3
1430 PRINT USING "                            ##### SQUARES"; Q2
1440 PRINT: PRINT: PRINT "YOU CAPTURED IN BATTLE"; N4; "NOMADS.": PRINT
1450 PRINT USING "#### NOMADS BECAME LOYAL PEASANTS"; P4
1460 PRINT USING "#### PEASANTS BECAME FAITHFUL SERVANTS"; S4
1470 PRINT USING "#### FAITHFUL SERVANTS WERE KNIGHTED"; K4
1480 Q2 = 0
1490 GOSUB 2150
1500 IF D$ = "10TH" THEN 1530
1510 D = D + 1: A = 0
1520 CLS: GOTO 170
1530 CLS: GOSUB 1830
1540 PRINT: PRINT: PRINT
1550 PRINT "You have come to the end of your 10th decade which"
1560 PRINT "marks the end of your reign."
1570 PRINT: PRINT
1580 A$ = "The history books, if they bother to mention you, will"
1590 B$ = "surely show you to be a deplorable king."
1600 IF Q < 100 THEN PRINT A$: PRINT B$: GOTO 1660
1610 A$ = "You may be mentioned in the history books, if so, they"
1620 B$ = "will most likely say you were a good king."
1630 IF Q < 200 THEN PRINT A$: PRINT B$: GOTO 1660
1640 PRINT "History books will devote chapters to you.  People"
1650 PRINT "for all time will remember your wisdom and greatness!"
1660 PRINT: PRINT: PRINT "DO YOU WANT TO PLAY ANOTHER GAME  Y/N ?"
1670 A$ = INKEY$: IF A$ = "" THEN 1670 ELSE IF A$ = "y" OR A$ = "Y" THEN 150
1680 STOP
1690 T1 = INT(RND * 10): IF T1 = 0 THEN 1690
1700 T2 = INT(RND * 50): IF T2 = 0 THEN 1700
1710 T3 = INT(RND * 250): IF T3 = 0 THEN 1710
1720 RETURN
1730 Z = INT((P - 5 * Q) / T2)
1740 IF P - Z * T2 >= 5 * (Q + Z) THEN RETURN
1750 Z = Z - 1: GOTO 1740
1760 X1 = INT(RND(1) * 10)
1770 IF X1 < 3 THEN PRINT "SIR, THE NOMADS REFUSE TO FIGHT!": N1 = 0: GOTO 1810
1780 A$ = "SIR, IT IS UNCERTAIN IF THE NOMADS WILL FIGHT!!!"
1790 IF X1 < 5 THEN PRINT A$: N1 = 0: GOTO 1810
1800 IF X1 < 7 THEN PRINT A$: GOTO 1810
1805 RETURN
1810 T = TIMER
1815 IF TIMER < T + 3 AND INKEY$ = "" THEN 1815 ELSE RETURN
1820 DATA 1ST,2ND,3RD,4TH,5TH,6TH,7TH,8TH,9TH,10TH
1830 LOCATE 1, 1: PRINT "THE STATUS OF THE ";: COLOR 15: PRINT "KINGDOM": PRINT
1840 COLOR 7: PRINT USING "##### KNIGHTS OF CASTLE"; K
1850 PRINT USING "##### FAITHFUL SERVANTS"; S
1860 PRINT USING "##### LOYAL PEASANTS"; P
1870 IF N > 0 THEN PRINT USING "##### CAPTURED NOMADS"; N
1880 PRINT: PRINT "THE SIZE OF THE KINGDOM IS NOW"; Q; "SQUARES."
1890 IF A = 1 THEN RETURN
1900 IF M = 0 THEN GOSUB 1690
1910 LOCATE 1, 40: PRINT "LAND SQUARES ARE CURRENTLY TRADING FOR:"
1920 LOCATE 3, 40: PRINT USING "#### SERVANTS PER SQUARE"; T1
1930 LOCATE 4, 40: PRINT USING "#### PEASANTS PER SQUARE"; T2
1940 IF D > 1 THEN LOCATE 5, 40: PRINT USING "#### NOMADS PER SQUARE"; T3
1950 LOCATE 10, 1, 0: PRINT SPACE$(79): PRINT SPACE$(79)
1960 PRINT SPACE$(79): PRINT SPACE$(79): PRINT SPACE$(79): LOCATE 10, 1: RETURN
1970 WIDTH 40: CLS: LOCATE 1, 16, 0: COLOR 15: PRINT "KINGDOM": COLOR 7: PRINT
1980 PRINT "In days of old when knights were bold,"
1990 PRINT "kings would live one hundred years. A"
2000 PRINT "sorcerer often found himself advisor to"
2010 PRINT "the king in fending off evil and"
2020 PRINT "casting off spells for the prosperity"
2030 PRINT "of the kingdom.": PRINT
2040 PRINT "You are the king, and I'm the sorcerer."
2050 PRINT "The kingdom is yours to control.  You"
2060 PRINT "must defend the kingdom and your "
2070 PRINT "subjects.  You will trade land for "
2080 PRINT "servants and servants for land.": PRINT
2090 PRINT "If your decisions are wise, you will"
2100 PRINT "gain property, peasants and knights."
2110 PRINT "If your decisions are poor, you will be"
2120 PRINT "dethroned.  Your sorcerer knows and"
2130 PRINT "tells all . . . . ."
2140 GOSUB 2150: WIDTH 80: CLS: RETURN
2150 LOCATE 25, 1: PRINT "PRESS ANY KEY TO CONTINUE.";: LOCATE 1
2160 A$ = INKEY$: IF A$ = "" THEN 2160
2170 IF ASC(A$) = 27 THEN STOP ELSE RETURN
2180 KEY OFF: WIDTH 80: SCREEN 0, 0, 0, 0: CLS: LOCATE 6, 1, 0
2190 COLOR 7
2200 PRINT "               浜僕様様様様様様様様様様様様様様様様様様様様様曜融"
2210 PRINT "               麺陵様様様様様様様様様様様様様様様様様様様様様洋郵"
2220 PRINT "               � �                                            � �"
2230 PRINT "               � � ";: COLOR 15: PRINT "                 KINGDOM                ";: COLOR 7: PRINT "   � �"
2240 PRINT "               � �                                            � �"
2250 PRINT "               � � ";: COLOR 15: PRINT "  COPYRIGHT (C) 1982  BY ENSIGN SOFTWARE ";: COLOR 7: PRINT "  � �"
2260 PRINT "               � �                                            � �"
2270 PRINT "               � �          2312 N. COLE RD, SUITE E          � �"
2280 PRINT "               � �          BOISE, ID  83704  U.S.A.          � �"
2290 PRINT "               � � DAY (208) 378-8086      EVE (208) 377-1938 � �"
2300 PRINT "               � �                                            � �"
2310 PRINT "               麺陵様様様様様様様様様様様様様様様様様様様様様洋郵"
2320 PRINT "               藩瞥様様様様様様様様様様様様様様様様様様様様様擁夕"
2325 DEF SEG = 0: POKE &H417, PEEK(&H417) OR &H60: T = TIMER
2330 IF TIMER < T + 5 AND INKEY$ = "" THEN 2330: ELSE SCREEN 0, 0, 0, 0: RETURN
2340 LOCATE 25, 1: ON E GOTO 2360, 2370, 2380, 2390, 2400, 2410, 2420, 2430, 2440
2350 PRINT "                                       ";: LOCATE 1: RETURN
2360 PRINT "You need knights to protect the kingdom";: LOCATE 1: RETURN
2370 PRINT "    Servants must tend your knights    ";: LOCATE 1: RETURN
2380 PRINT "  You may trade for only"; PS; "squares  ";: LOCATE 1: RETURN
2390 PRINT "123456789012345678901234567890123456789";: LOCATE 1: RETURN
2400 PRINT "123456789012345678901234567890123456789";: LOCATE 1: RETURN
2410 PRINT "123456789012345678901234567890123456789";: LOCATE 1: RETURN
2420 PRINT "123456789012345678901234567890123456789";: LOCATE 1: RETURN
2430 PRINT "123456789012345678901234567890123456789";: LOCATE 1: RETURN
2440 PRINT "123456789012345678901234567890123456789";: LOCATE 1: RETURN

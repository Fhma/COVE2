dtmc
  const double x; 
  const double p12;  
  const double p11;  
  const double p14;  
  const double p13;  
  const double p15;  
  const double p21;  
  const double p23;  
  const double p22;  
  const double p25;  
  const double p24;  
  const double y1;  
  const double y2;  
 
 const double PX_0_1 = ((x)); 
  const double PX_0_2 = (((-1)*x+1));
 const double PX_1_3 = ((p15*p14*p13*p12*p11)); 
  const double PX_1_4 = (((-1)*p15*p14*p13*p12*p11+p14*p13*p12*p11));
  const double PX_1_5 = (((-1)*p15*p14*p13*p12*p11+p15*p13*p12*p11));
  const double PX_1_6 = ((p15*p14*p13*p12*p11-p14*p13*p12*p11-p15*p13*p12*p11+p13*p12*p11));
  const double PX_1_7 = (((-1)*p15*p14*p13*p12*p11+p15*p14*p12*p11));
  const double PX_1_8 = ((p15*p14*p13*p12*p11-p14*p13*p12*p11-p15*p14*p12*p11+p14*p12*p11));
  const double PX_1_9 = ((p15*p14*p13*p12*p11-p15*p13*p12*p11-p15*p14*p12*p11+p15*p12*p11));
  const double PX_1_10 = (((-1)*p15*p14*p13*p12*p11+p14*p13*p12*p11+p15*p13*p12*p11+p15*p14*p12*p11-p13*p12*p11-p14*p12*p11-p15*p12*p11+p12*p11));
  const double PX_1_11 = (((-1)*p15*p14*p13*p12*p11+p15*p14*p13*p11));
  const double PX_1_12 = ((p15*p14*p13*p12*p11-p14*p13*p12*p11-p15*p14*p13*p11+p14*p13*p11));
  const double PX_1_13 = ((p15*p14*p13*p12*p11-p15*p13*p12*p11-p15*p14*p13*p11+p15*p13*p11));
  const double PX_1_14 = (((-1)*p15*p14*p13*p12*p11+p14*p13*p12*p11+p15*p13*p12*p11+p15*p14*p13*p11-p13*p12*p11-p14*p13*p11-p15*p13*p11+p13*p11));
  const double PX_1_15 = ((p15*p14*p13*p12*p11-p15*p14*p12*p11-p15*p14*p13*p11+p15*p14*p11));
  const double PX_1_16 = (((-1)*p15*p14*p13*p12*p11+p14*p13*p12*p11+p15*p14*p12*p11+p15*p14*p13*p11-p14*p12*p11-p14*p13*p11-p15*p14*p11+p14*p11));
  const double PX_1_17 = (((-1)*p15*p14*p13*p12*p11+p15*p13*p12*p11+p15*p14*p12*p11+p15*p14*p13*p11-p15*p12*p11-p15*p13*p11-p15*p14*p11+p15*p11));
  const double PX_1_18 = ((p15*p14*p13*p12*p11-p14*p13*p12*p11-p15*p13*p12*p11-p15*p14*p12*p11-p15*p14*p13*p11+p13*p12*p11+p14*p12*p11+p15*p12*p11+p14*p13*p11+p15*p13*p11+p15*p14*p11-p12*p11-p13*p11-p14*p11-p15*p11+p11));
  const double PX_1_19 = (((-1)*p15*p14*p13*p12*p11+p15*p14*p13*p12));
  const double PX_1_20 = ((p15*p14*p13*p12*p11-p14*p13*p12*p11-p15*p14*p13*p12+p14*p13*p12));
  const double PX_1_21 = ((p15*p14*p13*p12*p11-p15*p13*p12*p11-p15*p14*p13*p12+p15*p13*p12));
  const double PX_1_22 = (((-1)*p15*p14*p13*p12*p11+p14*p13*p12*p11+p15*p13*p12*p11+p15*p14*p13*p12-p13*p12*p11-p14*p13*p12-p15*p13*p12+p13*p12));
  const double PX_1_23 = ((p15*p14*p13*p12*p11-p15*p14*p12*p11-p15*p14*p13*p12+p15*p14*p12));
  const double PX_1_24 = (((-1)*p15*p14*p13*p12*p11+p14*p13*p12*p11+p15*p14*p12*p11+p15*p14*p13*p12-p14*p12*p11-p14*p13*p12-p15*p14*p12+p14*p12));
  const double PX_1_25 = (((-1)*p15*p14*p13*p12*p11+p15*p13*p12*p11+p15*p14*p12*p11+p15*p14*p13*p12-p15*p12*p11-p15*p13*p12-p15*p14*p12+p15*p12));
  const double PX_1_26 = ((p15*p14*p13*p12*p11-p14*p13*p12*p11-p15*p13*p12*p11-p15*p14*p12*p11-p15*p14*p13*p12+p13*p12*p11+p14*p12*p11+p15*p12*p11+p14*p13*p12+p15*p13*p12+p15*p14*p12-p12*p11-p13*p12-p14*p12-p15*p12+p12));
  const double PX_1_27 = ((p15*p14*p13*p12*p11-p15*p14*p13*p11-p15*p14*p13*p12+p15*p14*p13));
  const double PX_1_28 = (((-1)*p15*p14*p13*p12*p11+p14*p13*p12*p11+p15*p14*p13*p11+p15*p14*p13*p12-p14*p13*p11-p14*p13*p12-p15*p14*p13+p14*p13));
  const double PX_1_29 = (((-1)*p15*p14*p13*p12*p11+p15*p13*p12*p11+p15*p14*p13*p11+p15*p14*p13*p12-p15*p13*p11-p15*p13*p12-p15*p14*p13+p15*p13));
  const double PX_1_30 = ((p15*p14*p13*p12*p11-p14*p13*p12*p11-p15*p13*p12*p11-p15*p14*p13*p11-p15*p14*p13*p12+p13*p12*p11+p14*p13*p11+p15*p13*p11+p14*p13*p12+p15*p13*p12+p15*p14*p13-p13*p11-p13*p12-p14*p13-p15*p13+p13));
  const double PX_1_31 = (((-1)*p15*p14*p13*p12*p11+p15*p14*p12*p11+p15*p14*p13*p11+p15*p14*p13*p12-p15*p14*p11-p15*p14*p12-p15*p14*p13+p15*p14));
  const double PX_1_32 = ((p15*p14*p13*p12*p11-p14*p13*p12*p11-p15*p14*p12*p11-p15*p14*p13*p11-p15*p14*p13*p12+p14*p12*p11+p14*p13*p11+p15*p14*p11+p14*p13*p12+p15*p14*p12+p15*p14*p13-p14*p11-p14*p12-p14*p13-p15*p14+p14));
  const double PX_1_33 = ((p15*p14*p13*p12*p11-p15*p13*p12*p11-p15*p14*p12*p11-p15*p14*p13*p11-p15*p14*p13*p12+p15*p12*p11+p15*p13*p11+p15*p14*p11+p15*p13*p12+p15*p14*p12+p15*p14*p13-p15*p11-p15*p12-p15*p13-p15*p14+p15));
  const double PX_1_34 = (((-1)*p15*p14*p13*p12*p11+p14*p13*p12*p11+p15*p13*p12*p11+p15*p14*p12*p11+p15*p14*p13*p11+p15*p14*p13*p12-p13*p12*p11-p14*p12*p11-p15*p12*p11-p14*p13*p11-p15*p13*p11-p15*p14*p11-p14*p13*p12-p15*p13*p12-p15*p14*p12-p15*p14*p13+p12*p11+p13*p11+p14*p11+p15*p11+p13*p12+p14*p12+p15*p12+p14*p13+p15*p13+p15*p14-p11-p12-p13-p14-p15+1));
 const double PX_2_35 = ((p25*p24*p23*p22*p21)); 
  const double PX_2_36 = (((-1)*p25*p24*p23*p22*p21+p24*p23*p22*p21));
  const double PX_2_37 = (((-1)*p25*p24*p23*p22*p21+p25*p23*p22*p21));
  const double PX_2_38 = ((p25*p24*p23*p22*p21-p24*p23*p22*p21-p25*p23*p22*p21+p23*p22*p21));
  const double PX_2_39 = (((-1)*p25*p24*p23*p22*p21+p25*p24*p22*p21));
  const double PX_2_40 = ((p25*p24*p23*p22*p21-p24*p23*p22*p21-p25*p24*p22*p21+p24*p22*p21));
  const double PX_2_41 = ((p25*p24*p23*p22*p21-p25*p23*p22*p21-p25*p24*p22*p21+p25*p22*p21));
  const double PX_2_42 = (((-1)*p25*p24*p23*p22*p21+p24*p23*p22*p21+p25*p23*p22*p21+p25*p24*p22*p21-p23*p22*p21-p24*p22*p21-p25*p22*p21+p22*p21));
  const double PX_2_43 = (((-1)*p25*p24*p23*p22*p21+p25*p24*p23*p21));
  const double PX_2_44 = ((p25*p24*p23*p22*p21-p24*p23*p22*p21-p25*p24*p23*p21+p24*p23*p21));
  const double PX_2_45 = ((p25*p24*p23*p22*p21-p25*p23*p22*p21-p25*p24*p23*p21+p25*p23*p21));
  const double PX_2_46 = (((-1)*p25*p24*p23*p22*p21+p24*p23*p22*p21+p25*p23*p22*p21+p25*p24*p23*p21-p23*p22*p21-p24*p23*p21-p25*p23*p21+p23*p21));
  const double PX_2_47 = ((p25*p24*p23*p22*p21-p25*p24*p22*p21-p25*p24*p23*p21+p25*p24*p21));
  const double PX_2_48 = (((-1)*p25*p24*p23*p22*p21+p24*p23*p22*p21+p25*p24*p22*p21+p25*p24*p23*p21-p24*p22*p21-p24*p23*p21-p25*p24*p21+p24*p21));
  const double PX_2_49 = (((-1)*p25*p24*p23*p22*p21+p25*p23*p22*p21+p25*p24*p22*p21+p25*p24*p23*p21-p25*p22*p21-p25*p23*p21-p25*p24*p21+p25*p21));
  const double PX_2_50 = ((p25*p24*p23*p22*p21-p24*p23*p22*p21-p25*p23*p22*p21-p25*p24*p22*p21-p25*p24*p23*p21+p23*p22*p21+p24*p22*p21+p25*p22*p21+p24*p23*p21+p25*p23*p21+p25*p24*p21-p22*p21-p23*p21-p24*p21-p25*p21+p21));
  const double PX_2_51 = (((-1)*p25*p24*p23*p22*p21+p25*p24*p23*p22));
  const double PX_2_52 = ((p25*p24*p23*p22*p21-p24*p23*p22*p21-p25*p24*p23*p22+p24*p23*p22));
  const double PX_2_53 = ((p25*p24*p23*p22*p21-p25*p23*p22*p21-p25*p24*p23*p22+p25*p23*p22));
  const double PX_2_54 = (((-1)*p25*p24*p23*p22*p21+p24*p23*p22*p21+p25*p23*p22*p21+p25*p24*p23*p22-p23*p22*p21-p24*p23*p22-p25*p23*p22+p23*p22));
  const double PX_2_55 = ((p25*p24*p23*p22*p21-p25*p24*p22*p21-p25*p24*p23*p22+p25*p24*p22));
  const double PX_2_56 = (((-1)*p25*p24*p23*p22*p21+p24*p23*p22*p21+p25*p24*p22*p21+p25*p24*p23*p22-p24*p22*p21-p24*p23*p22-p25*p24*p22+p24*p22));
  const double PX_2_57 = (((-1)*p25*p24*p23*p22*p21+p25*p23*p22*p21+p25*p24*p22*p21+p25*p24*p23*p22-p25*p22*p21-p25*p23*p22-p25*p24*p22+p25*p22));
  const double PX_2_58 = ((p25*p24*p23*p22*p21-p24*p23*p22*p21-p25*p23*p22*p21-p25*p24*p22*p21-p25*p24*p23*p22+p23*p22*p21+p24*p22*p21+p25*p22*p21+p24*p23*p22+p25*p23*p22+p25*p24*p22-p22*p21-p23*p22-p24*p22-p25*p22+p22));
  const double PX_2_59 = ((p25*p24*p23*p22*p21-p25*p24*p23*p21-p25*p24*p23*p22+p25*p24*p23));
  const double PX_2_60 = (((-1)*p25*p24*p23*p22*p21+p24*p23*p22*p21+p25*p24*p23*p21+p25*p24*p23*p22-p24*p23*p21-p24*p23*p22-p25*p24*p23+p24*p23));
  const double PX_2_61 = (((-1)*p25*p24*p23*p22*p21+p25*p23*p22*p21+p25*p24*p23*p21+p25*p24*p23*p22-p25*p23*p21-p25*p23*p22-p25*p24*p23+p25*p23));
  const double PX_2_62 = ((p25*p24*p23*p22*p21-p24*p23*p22*p21-p25*p23*p22*p21-p25*p24*p23*p21-p25*p24*p23*p22+p23*p22*p21+p24*p23*p21+p25*p23*p21+p24*p23*p22+p25*p23*p22+p25*p24*p23-p23*p21-p23*p22-p24*p23-p25*p23+p23));
  const double PX_2_63 = (((-1)*p25*p24*p23*p22*p21+p25*p24*p22*p21+p25*p24*p23*p21+p25*p24*p23*p22-p25*p24*p21-p25*p24*p22-p25*p24*p23+p25*p24));
  const double PX_2_64 = ((p25*p24*p23*p22*p21-p24*p23*p22*p21-p25*p24*p22*p21-p25*p24*p23*p21-p25*p24*p23*p22+p24*p22*p21+p24*p23*p21+p25*p24*p21+p24*p23*p22+p25*p24*p22+p25*p24*p23-p24*p21-p24*p22-p24*p23-p25*p24+p24));
  const double PX_2_65 = ((p25*p24*p23*p22*p21-p25*p23*p22*p21-p25*p24*p22*p21-p25*p24*p23*p21-p25*p24*p23*p22+p25*p22*p21+p25*p23*p21+p25*p24*p21+p25*p23*p22+p25*p24*p22+p25*p24*p23-p25*p21-p25*p22-p25*p23-p25*p24+p25));
  const double PX_2_131 = (((-1)*p25*p24*p23*p22*p21+p24*p23*p22*p21+p25*p23*p22*p21+p25*p24*p22*p21+p25*p24*p23*p21+p25*p24*p23*p22-p23*p22*p21-p24*p22*p21-p25*p22*p21-p24*p23*p21-p25*p23*p21-p25*p24*p21-p24*p23*p22-p25*p23*p22-p25*p24*p22-p25*p24*p23+p22*p21+p23*p21+p24*p21+p25*p21+p23*p22+p24*p22+p25*p22+p24*p23+p25*p23+p25*p24-p21-p22-p23-p24-p25+1));
 const double PX_7_66 = ((y2)); 
  const double PX_7_67 = (((-1)*y1-y2+1));
  const double PX_7_68 = ((y1));
 const double PX_16_69 = ((1)); 
 const double PX_17_70 = ((1)); 
 const double PX_18_71 = ((1)); 
 const double PX_19_72 = ((1)); 
 const double PX_20_73 = ((1)); 
 const double PX_21_74 = ((1)); 
 const double PX_22_75 = ((1)); 
 const double PX_23_76 = ((1)); 
 const double PX_24_77 = ((1)); 
 const double PX_25_78 = ((1)); 
 const double PX_26_79 = ((1)); 
 const double PX_27_80 = ((1)); 
 const double PX_28_81 = ((1)); 
 const double PX_29_82 = ((1)); 
 const double PX_30_83 = ((1)); 
 const double PX_31_84 = ((1)); 
 const double PX_32_85 = ((1)); 
 const double PX_33_86 = ((1)); 
 const double PX_34_87 = ((1)); 
 const double PX_35_88 = ((1)); 
 const double PX_36_89 = ((1)); 
 const double PX_37_90 = ((1)); 
 const double PX_38_91 = ((1)); 
 const double PX_39_92 = ((1)); 
 const double PX_40_93 = ((1)); 
 const double PX_41_94 = ((1)); 
 const double PX_42_95 = ((1)); 
 const double PX_43_96 = ((1)); 
 const double PX_44_97 = ((1)); 
 const double PX_45_98 = ((1)); 
 const double PX_46_99 = ((1)); 
 const double PX_48_100 = ((1)); 
 const double PX_49_101 = ((1)); 
 const double PX_50_102 = ((1)); 
 const double PX_51_103 = ((1)); 
 const double PX_52_104 = ((1)); 
 const double PX_53_105 = ((1)); 
 const double PX_54_106 = ((1)); 
 const double PX_55_107 = ((1)); 
 const double PX_56_108 = ((1)); 
 const double PX_57_109 = ((1)); 
 const double PX_58_110 = ((1)); 
 const double PX_59_111 = ((1)); 
 const double PX_60_112 = ((1)); 
 const double PX_61_113 = ((1)); 
 const double PX_62_114 = ((1)); 
 const double PX_63_115 = ((1)); 
 const double PX_64_116 = ((1)); 
 const double PX_65_117 = ((1)); 
 const double PX_66_118 = ((1)); 
 const double PX_67_119 = ((1)); 
 const double PX_68_120 = ((1)); 
 const double PX_69_121 = ((1)); 
 const double PX_70_122 = ((1)); 
 const double PX_71_123 = ((1)); 
 const double PX_72_124 = ((1)); 
 const double PX_73_125 = ((1)); 
 const double PX_74_126 = ((1)); 
 const double PX_75_127 = ((1)); 
 const double PX_76_128 = ((1)); 
 const double PX_77_129 = ((1)); 
 const double PX_78_130 = ((1)); 

module f1 
s : [0 .. 208] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=4); 
 [] s=1 -> (PX_1_3):(s'=16) + (PX_1_4):(s'=17) + (PX_1_5):(s'=18) + (PX_1_6):(s'=19) + (PX_1_7):(s'=20) + (PX_1_8):(s'=21) + (PX_1_9):(s'=22) + (PX_1_10):(s'=23) + (PX_1_11):(s'=24) + (PX_1_12):(s'=25) + (PX_1_13):(s'=26) + (PX_1_14):(s'=27) + (PX_1_15):(s'=28) + (PX_1_16):(s'=29) + (PX_1_17):(s'=30) + (PX_1_18):(s'=31) + (PX_1_19):(s'=32) + (PX_1_20):(s'=33) + (PX_1_21):(s'=34) + (PX_1_22):(s'=35) + (PX_1_23):(s'=36) + (PX_1_24):(s'=37) + (PX_1_25):(s'=38) + (PX_1_26):(s'=39) + (PX_1_27):(s'=40) + (PX_1_28):(s'=41) + (PX_1_29):(s'=42) + (PX_1_30):(s'=43) + (PX_1_31):(s'=44) + (PX_1_32):(s'=45) + (PX_1_33):(s'=46) + (PX_1_34):(s'=47); 
 [] s=2 -> (PX_2_35):(s'=48) + (PX_2_36):(s'=49) + (PX_2_37):(s'=50) + (PX_2_38):(s'=51) + (PX_2_39):(s'=52) + (PX_2_40):(s'=53) + (PX_2_41):(s'=54) + (PX_2_42):(s'=55) + (PX_2_43):(s'=56) + (PX_2_44):(s'=57) + (PX_2_45):(s'=58) + (PX_2_46):(s'=59) + (PX_2_47):(s'=60) + (PX_2_48):(s'=61) + (PX_2_49):(s'=62) + (PX_2_50):(s'=63) + (PX_2_51):(s'=64) + (PX_2_52):(s'=65) + (PX_2_53):(s'=66) + (PX_2_54):(s'=67) + (PX_2_55):(s'=68) + (PX_2_56):(s'=69) + (PX_2_57):(s'=70) + (PX_2_58):(s'=71) + (PX_2_59):(s'=72) + (PX_2_60):(s'=73) + (PX_2_61):(s'=74) + (PX_2_62):(s'=75) + (PX_2_63):(s'=76) + (PX_2_64):(s'=77) + (PX_2_65):(s'=78) + (PX_2_131):(s'=208); 
 [] s=3 -> true; 
 [] s=4 -> true; 
 [] s=5 -> true; 
 [] s=7 -> (PX_7_66):(s'=1) + (PX_7_67):(s'=3) + (PX_7_68):(s'=5); 
 [] s=16 -> (PX_16_69):(s'=2); 
 [] s=17 -> (PX_17_70):(s'=2); 
 [] s=18 -> (PX_18_71):(s'=2); 
 [] s=19 -> (PX_19_72):(s'=2); 
 [] s=20 -> (PX_20_73):(s'=2); 
 [] s=21 -> (PX_21_74):(s'=2); 
 [] s=22 -> (PX_22_75):(s'=2); 
 [] s=23 -> (PX_23_76):(s'=2); 
 [] s=24 -> (PX_24_77):(s'=2); 
 [] s=25 -> (PX_25_78):(s'=2); 
 [] s=26 -> (PX_26_79):(s'=2); 
 [] s=27 -> (PX_27_80):(s'=2); 
 [] s=28 -> (PX_28_81):(s'=2); 
 [] s=29 -> (PX_29_82):(s'=2); 
 [] s=30 -> (PX_30_83):(s'=2); 
 [] s=31 -> (PX_31_84):(s'=2); 
 [] s=32 -> (PX_32_85):(s'=2); 
 [] s=33 -> (PX_33_86):(s'=2); 
 [] s=34 -> (PX_34_87):(s'=2); 
 [] s=35 -> (PX_35_88):(s'=2); 
 [] s=36 -> (PX_36_89):(s'=2); 
 [] s=37 -> (PX_37_90):(s'=2); 
 [] s=38 -> (PX_38_91):(s'=2); 
 [] s=39 -> (PX_39_92):(s'=2); 
 [] s=40 -> (PX_40_93):(s'=2); 
 [] s=41 -> (PX_41_94):(s'=2); 
 [] s=42 -> (PX_42_95):(s'=2); 
 [] s=43 -> (PX_43_96):(s'=2); 
 [] s=44 -> (PX_44_97):(s'=2); 
 [] s=45 -> (PX_45_98):(s'=2); 
 [] s=46 -> (PX_46_99):(s'=2); 
 [] s=47 -> true; 
 [] s=48 -> (PX_48_100):(s'=7); 
 [] s=49 -> (PX_49_101):(s'=7); 
 [] s=50 -> (PX_50_102):(s'=7); 
 [] s=51 -> (PX_51_103):(s'=7); 
 [] s=52 -> (PX_52_104):(s'=7); 
 [] s=53 -> (PX_53_105):(s'=7); 
 [] s=54 -> (PX_54_106):(s'=7); 
 [] s=55 -> (PX_55_107):(s'=7); 
 [] s=56 -> (PX_56_108):(s'=7); 
 [] s=57 -> (PX_57_109):(s'=7); 
 [] s=58 -> (PX_58_110):(s'=7); 
 [] s=59 -> (PX_59_111):(s'=7); 
 [] s=60 -> (PX_60_112):(s'=7); 
 [] s=61 -> (PX_61_113):(s'=7); 
 [] s=62 -> (PX_62_114):(s'=7); 
 [] s=63 -> (PX_63_115):(s'=7); 
 [] s=64 -> (PX_64_116):(s'=7); 
 [] s=65 -> (PX_65_117):(s'=7); 
 [] s=66 -> (PX_66_118):(s'=7); 
 [] s=67 -> (PX_67_119):(s'=7); 
 [] s=68 -> (PX_68_120):(s'=7); 
 [] s=69 -> (PX_69_121):(s'=7); 
 [] s=70 -> (PX_70_122):(s'=7); 
 [] s=71 -> (PX_71_123):(s'=7); 
 [] s=72 -> (PX_72_124):(s'=7); 
 [] s=73 -> (PX_73_125):(s'=7); 
 [] s=74 -> (PX_74_126):(s'=7); 
 [] s=75 -> (PX_75_127):(s'=7); 
 [] s=76 -> (PX_76_128):(s'=7); 
 [] s=77 -> (PX_77_129):(s'=7); 
 [] s=78 -> (PX_78_130):(s'=7); 
 [] s=208 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s4 " = (s = 4); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s47 " = (s = 47); 
 label " prob_f1_s208 " = (s = 208); 
 
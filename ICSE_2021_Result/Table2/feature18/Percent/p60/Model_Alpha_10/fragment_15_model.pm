dtmc
                //const double p30; 
  // const double p32;  
  // const double p31;  
  // const double p34;  
  // const double p33;  
  // const double p35;  
  // const double p21;  
  // const double p20;  
  // const double p23;  
  // const double p22;  
  // const double p25;  
  // const double p24;  
  // const double p27;  
  // const double p26;  
  // const double p29;  
  // const double p28;  
 
 const double P15_24_1;// = ((p20)); 
  const double P15_24_2 ;// = (((-1)*p20+1));
 const double P15_25_3;// = ((p21)); 
  const double P15_25_4 ;// = (((-1)*p21+1));
 const double P15_26_5;// = ((p22)); 
  const double P15_26_6 ;// = (((-1)*p22+1));
 const double P15_27_7;// = ((p23)); 
  const double P15_27_8 ;// = (((-1)*p23+1));
 const double P15_28_9;// = ((p24)); 
  const double P15_28_35 ;// = (((-1)*p24+1));
 const double P15_29_10;// = ((p25)); 
  const double P15_29_28 ;// = (((-1)*p25+1));
 const double P15_33_14;// = ((p26)); 
  const double P15_33_15 ;// = (((-1)*p26+1));
 const double P15_34_16;// = ((p27)); 
  const double P15_34_17 ;// = (((-1)*p27+1));
 const double P15_35_18;// = ((p28)); 
  const double P15_35_36 ;// = (((-1)*p28+1));
 const double P15_36_19;// = ((p29)); 
  const double P15_36_29 ;// = (((-1)*p29+1));
 const double P15_38_21;// = ((p30)); 
  const double P15_38_33 ;// = (((-1)*p30+1));
 const double P15_39_22;// = ((p31)); 
  const double P15_39_34 ;// = (((-1)*p31+1));
 const double P15_40_23;// = ((p32)); 
  const double P15_40_32 ;// = (((-1)*p32+1));
 const double P15_41_24;// = ((p33)); 
  const double P15_41_31 ;// = (((-1)*p33+1));
 const double P15_42_25;// = ((p34)); 
  const double P15_42_30 ;// = (((-1)*p34+1));
 const double P15_43_26;// = ((p35)); 
  const double P15_43_27 ;// = (((-1)*p35+1));

module f15 
s : [24 .. 134] init 24; 
 
 [] s=24 -> (P15_24_1):(s'=25) + (P15_24_2):(s'=33); 
 [] s=25 -> (P15_25_3):(s'=26) + (P15_25_4):(s'=44); 
 [] s=26 -> (P15_26_5):(s'=27) + (P15_26_6):(s'=32); 
 [] s=27 -> (P15_27_7):(s'=28) + (P15_27_8):(s'=31); 
 [] s=28 -> (P15_28_9):(s'=29) + (P15_28_35):(s'=133); 
 [] s=29 -> (P15_29_10):(s'=30) + (P15_29_28):(s'=126); 
 [] s=30 -> ((1)):(s'=27); 
 [] s=31 -> ((1)):(s'=26); 
 [] s=32 -> ((1)):(s'=25); 
 [] s=33 -> (P15_33_14):(s'=34) + (P15_33_15):(s'=38); 
 [] s=34 -> (P15_34_16):(s'=35) + (P15_34_17):(s'=44); 
 [] s=35 -> (P15_35_18):(s'=36) + (P15_35_36):(s'=134); 
 [] s=36 -> (P15_36_19):(s'=37) + (P15_36_29):(s'=127); 
 [] s=37 -> ((1)):(s'=34); 
 [] s=38 -> (P15_38_21):(s'=39) + (P15_38_33):(s'=131); 
 [] s=39 -> (P15_39_22):(s'=40) + (P15_39_34):(s'=132); 
 [] s=40 -> (P15_40_23):(s'=41) + (P15_40_32):(s'=130); 
 [] s=41 -> (P15_41_24):(s'=42) + (P15_41_31):(s'=129); 
 [] s=42 -> (P15_42_25):(s'=43) + (P15_42_30):(s'=128); 
 [] s=43 -> (P15_43_26):(s'=44) + (P15_43_27):(s'=125); 
 [] s=44 -> true; 
 [] s=125 -> true; 
 [] s=126 -> true; 
 [] s=127 -> true; 
 [] s=128 -> true; 
 [] s=129 -> true; 
 [] s=130 -> true; 
 [] s=131 -> true; 
 [] s=132 -> true; 
 [] s=133 -> true; 
 [] s=134 -> true; 
 
endmodule
label " prob_f15_s44 "= (s = 44); 
 label " prob_f15_s125 " = (s = 125); 
 label " prob_f15_s126 " = (s = 126); 
 label " prob_f15_s127 " = (s = 127); 
 label " prob_f15_s128 " = (s = 128); 
 label " prob_f15_s129 " = (s = 129); 
 label " prob_f15_s130 " = (s = 130); 
 label " prob_f15_s131 " = (s = 131); 
 label " prob_f15_s132 " = (s = 132); 
 label " prob_f15_s133 " = (s = 133); 
 label " prob_f15_s134 " = (s = 134); 
 
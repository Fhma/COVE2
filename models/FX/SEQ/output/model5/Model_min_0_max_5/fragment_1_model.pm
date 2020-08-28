dtmc
  const double p12; 
  const double p11;  
  const double p14;  
  const double p13;  
  const double p15;  
  const double y1;  
  const double y2;  
  const double p21;  
  const double p23;  
  const double p22;  
  const double p25;  
  const double p24;  
  const double x;  
 
 const double PX_0_1 = ((x)); 
  const double PX_0_2 = (((-1)*x+1));
 const double PX_1_3 = ((p11)); 
  const double PX_1_4 = (((-1)*p11+1));
 const double PX_2_5 = ((p21)); 
  const double PX_2_6 = (((-1)*p21+1));
 const double PX_7_7 = ((y2)); 
  const double PX_7_8 = (((-1)*y1-y2+1));
  const double PX_7_9 = ((y1));
 const double PX_27_10 = ((p22)); 
  const double PX_27_11 = (((-1)*p22+1));
 const double PX_28_12 = ((p23)); 
  const double PX_28_13 = (((-1)*p23+1));
 const double PX_29_14 = ((p24)); 
  const double PX_29_15 = (((-1)*p24+1));
 const double PX_30_16 = ((p25)); 
  const double PX_30_24 = (((-1)*p25+1));
 const double PX_31_17 = ((p12)); 
  const double PX_31_18 = (((-1)*p12+1));
 const double PX_32_19 = ((p13)); 
  const double PX_32_20 = (((-1)*p13+1));
 const double PX_33_21 = ((p14)); 
  const double PX_33_22 = (((-1)*p14+1));
 const double PX_34_23 = ((p15)); 
  const double PX_34_25 = (((-1)*p15+1));

module f1 
s : [0 .. 36] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=4); 
 [] s=1 -> (PX_1_3):(s'=2) + (PX_1_4):(s'=31); 
 [] s=2 -> (PX_2_5):(s'=7) + (PX_2_6):(s'=27); 
 [] s=3 -> true; 
 [] s=4 -> true; 
 [] s=5 -> true; 
 [] s=7 -> (PX_7_7):(s'=1) + (PX_7_8):(s'=3) + (PX_7_9):(s'=5); 
 [] s=27 -> (PX_27_10):(s'=7) + (PX_27_11):(s'=28); 
 [] s=28 -> (PX_28_12):(s'=7) + (PX_28_13):(s'=29); 
 [] s=29 -> (PX_29_14):(s'=7) + (PX_29_15):(s'=30); 
 [] s=30 -> (PX_30_16):(s'=7) + (PX_30_24):(s'=35); 
 [] s=31 -> (PX_31_17):(s'=2) + (PX_31_18):(s'=32); 
 [] s=32 -> (PX_32_19):(s'=2) + (PX_32_20):(s'=33); 
 [] s=33 -> (PX_33_21):(s'=2) + (PX_33_22):(s'=34); 
 [] s=34 -> (PX_34_23):(s'=2) + (PX_34_25):(s'=36); 
 [] s=35 -> true; 
 [] s=36 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s4 " = (s = 4); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s35 " = (s = 35); 
 label " prob_f1_s36 " = (s = 36); 
 
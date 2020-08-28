dtmc
  const double p21; 
  const double p23;  
  const double p12;  
  const double p11;  
  const double p22;  
  const double p14;  
  const double p24;  
  const double p13;  
  const double x;  
  const double y1;  
  const double y2;  
 
 const double PX_0_1 = ((x)); 
  const double PX_0_2 = (((-1)*x+1));
 const double PX_1_3 = ((p11)); 
  const double PX_1_4 = (((-1)*p11+1));
 const double PX_2_5 = ((p21)); 
  const double PX_2_6 = (((-1)*p21+1));
 const double PX_7_7 = ((y2)); 
  const double PX_7_8 = (((-1)*y1-y2+1));
  const double PX_7_9 = ((y1));
 const double PX_23_10 = ((p22)); 
  const double PX_23_11 = (((-1)*p22+1));
 const double PX_24_12 = ((p23)); 
  const double PX_24_13 = (((-1)*p23+1));
 const double PX_25_14 = ((p24)); 
  const double PX_25_20 = (((-1)*p24+1));
 const double PX_26_15 = ((p12)); 
  const double PX_26_16 = (((-1)*p12+1));
 const double PX_27_17 = ((p13)); 
  const double PX_27_18 = (((-1)*p13+1));
 const double PX_28_19 = ((p14)); 
  const double PX_28_21 = (((-1)*p14+1));

module f1 
s : [0 .. 30] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=4); 
 [] s=1 -> (PX_1_3):(s'=2) + (PX_1_4):(s'=26); 
 [] s=2 -> (PX_2_5):(s'=7) + (PX_2_6):(s'=23); 
 [] s=3 -> true; 
 [] s=4 -> true; 
 [] s=5 -> true; 
 [] s=7 -> (PX_7_7):(s'=1) + (PX_7_8):(s'=3) + (PX_7_9):(s'=5); 
 [] s=23 -> (PX_23_10):(s'=7) + (PX_23_11):(s'=24); 
 [] s=24 -> (PX_24_12):(s'=7) + (PX_24_13):(s'=25); 
 [] s=25 -> (PX_25_14):(s'=7) + (PX_25_20):(s'=29); 
 [] s=26 -> (PX_26_15):(s'=2) + (PX_26_16):(s'=27); 
 [] s=27 -> (PX_27_17):(s'=2) + (PX_27_18):(s'=28); 
 [] s=28 -> (PX_28_19):(s'=2) + (PX_28_21):(s'=30); 
 [] s=29 -> true; 
 [] s=30 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s4 " = (s = 4); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s29 " = (s = 29); 
 label " prob_f1_s30 " = (s = 30); 
 
dtmc
  const double p41; 
  const double p21;  
  const double p11;  
  const double z1;  
  const double x;  
  const double y1;  
  const double z2;  
  const double y2;  
 
 const double PX_0_1 = ((x)); 
  const double PX_0_2 = (((-1)*x+1));
 const double PX_1_3 = ((p11)); 
  const double PX_1_12 = (((-1)*p11+1));
 const double PX_2_4 = ((p21)); 
  const double PX_2_14 = (((-1)*p21+1));
 const double PX_4_5 = ((p41)); 
  const double PX_4_13 = (((-1)*p41+1));
 const double PX_7_6 = ((y2)); 
  const double PX_7_7 = (((-1)*y1-y2+1));
  const double PX_7_8 = ((y1));
 const double PX_8_9 = ((z2)); 
  const double PX_8_10 = (((-1)*z1-z2+1));
  const double PX_8_11 = ((z1));

module f1 
s : [0 .. 13] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=4); 
 [] s=1 -> (PX_1_3):(s'=2) + (PX_1_12):(s'=11); 
 [] s=2 -> (PX_2_4):(s'=7) + (PX_2_14):(s'=13); 
 [] s=3 -> true; 
 [] s=4 -> (PX_4_5):(s'=8) + (PX_4_13):(s'=12); 
 [] s=5 -> true; 
 [] s=7 -> (PX_7_6):(s'=1) + (PX_7_7):(s'=3) + (PX_7_8):(s'=5); 
 [] s=8 -> (PX_8_9):(s'=0) + (PX_8_10):(s'=4) + (PX_8_11):(s'=5); 
 [] s=11 -> true; 
 [] s=12 -> true; 
 [] s=13 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s11 " = (s = 11); 
 label " prob_f1_s12 " = (s = 12); 
 label " prob_f1_s13 " = (s = 13); 
 
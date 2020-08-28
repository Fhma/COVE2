dtmc
  const double p52; 
  const double p41;  
  const double p51;  
  const double p43;  
  const double p42;  
  const double z1;  
  const double z2;  
 
 const double PX_8_5 = (( ((-1)*z1-z2+1) ) * ( (p41) )); 
  const double PX_8_6 = (( ((-1)*z1-z2+1) ) * ( ((-1)*p41+1) ));
  const double PX_8_7 = (( (z1) ) * ( ((-1)*p51+1) ));
  const double PX_8_8 = ((z2));
  const double PX_8_9 = (( (z1) ) * ( (p51) ));
 const double PX_14_1 = (((-1)*p52+1)); 
  const double PX_14_10 = ((p52));
 const double PX_17_2 = ((p42)); 
  const double PX_17_3 = (((-1)*p42+1));
 const double PX_18_4 = ((p43)); 
  const double PX_18_11 = (((-1)*p43+1));

module f3 
s : [8 .. 35] init 8; 
 
 [] s=8 -> (PX_8_5):(s'=8) + (PX_8_6):(s'=17) + (PX_8_7):(s'=14) + (PX_8_8):(s'=32) + (PX_8_9):(s'=33); 
 [] s=14 -> (PX_14_1):(s'=15) + (PX_14_10):(s'=34); 
 [] s=15 -> true; 
 [] s=17 -> (PX_17_2):(s'=8) + (PX_17_3):(s'=18); 
 [] s=18 -> (PX_18_4):(s'=8) + (PX_18_11):(s'=35); 
 [] s=32 -> true; 
 [] s=33 -> true; 
 [] s=34 -> true; 
 [] s=35 -> true; 
 
endmodule
label " prob_f3_s15 "= (s = 15); 
 label " prob_f3_s32 " = (s = 32); 
 label " prob_f3_s33 " = (s = 33); 
 label " prob_f3_s34 " = (s = 34); 
 label " prob_f3_s35 " = (s = 35); 
 
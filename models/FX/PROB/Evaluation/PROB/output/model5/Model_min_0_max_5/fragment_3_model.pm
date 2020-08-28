dtmc
  const double z52; 
  const double z51;  
  const double z54;  
  const double z53;  
  const double z55;  
  const double p41;  
  const double p43;  
  const double p42;  
  const double p45;  
  const double p44;  
  const double z41;  
  const double z1;  
  const double z2;  
  const double z43;  
  const double z42;  
  const double z45;  
  const double z44;  
 
 const double PX_8_6 = (( ((-1)*z1-z2+1) ) * ( (z41)/(z41+z42+z43+z44+z45) )); 
  const double PX_8_7 = (( ((-1)*z1-z2+1) ) * ( (z42)/(z41+z42+z43+z44+z45) ));
  const double PX_8_8 = (( ((-1)*z1-z2+1) ) * ( (z43)/(z41+z42+z43+z44+z45) ));
  const double PX_8_9 = (( ((-1)*z1-z2+1) ) * ( (z44)/(z41+z42+z43+z44+z45) ));
  const double PX_8_10 = (( ((-1)*z1-z2+1) ) * ( (z45)/(z41+z42+z43+z44+z45) ));
  const double PX_8_11 = (( (z1) ) * ( (z51)/(z51+z52+z53+z54+z55) ));
  const double PX_8_12 = (( (z1) ) * ( (z52)/(z51+z52+z53+z54+z55) ));
  const double PX_8_13 = (( (z1) ) * ( (z53)/(z51+z52+z53+z54+z55) ));
  const double PX_8_14 = (( (z1) ) * ( (z54)/(z51+z52+z53+z54+z55) ));
  const double PX_8_15 = (( (z1) ) * ( (z55)/(z51+z52+z53+z54+z55) ));
  const double PX_8_16 = ((z2));
 const double PX_21_1 = ((p41)); 
  const double PX_21_17 = (((-1)*p41+1));
 const double PX_22_2 = ((p42)); 
  const double PX_22_18 = (((-1)*p42+1));
 const double PX_23_3 = ((p43)); 
  const double PX_23_19 = (((-1)*p43+1));
 const double PX_24_4 = ((p44)); 
  const double PX_24_20 = (((-1)*p44+1));
 const double PX_25_5 = ((p45)); 
  const double PX_25_21 = (((-1)*p45+1));

module f3 
s : [8 .. 56] init 8; 
 
 [] s=8 -> (PX_8_6):(s'=21) + (PX_8_7):(s'=22) + (PX_8_8):(s'=23) + (PX_8_9):(s'=24) + (PX_8_10):(s'=25) + (PX_8_11):(s'=16) + (PX_8_12):(s'=17) + (PX_8_13):(s'=18) + (PX_8_14):(s'=19) + (PX_8_15):(s'=20) + (PX_8_16):(s'=51); 
 [] s=16 -> true; 
 [] s=17 -> true; 
 [] s=18 -> true; 
 [] s=19 -> true; 
 [] s=20 -> true; 
 [] s=21 -> (PX_21_1):(s'=8) + (PX_21_17):(s'=52); 
 [] s=22 -> (PX_22_2):(s'=8) + (PX_22_18):(s'=53); 
 [] s=23 -> (PX_23_3):(s'=8) + (PX_23_19):(s'=54); 
 [] s=24 -> (PX_24_4):(s'=8) + (PX_24_20):(s'=55); 
 [] s=25 -> (PX_25_5):(s'=8) + (PX_25_21):(s'=56); 
 [] s=51 -> true; 
 [] s=52 -> true; 
 [] s=53 -> true; 
 [] s=54 -> true; 
 [] s=55 -> true; 
 [] s=56 -> true; 
 
endmodule
label " prob_f3_s16 "= (s = 16); 
 label " prob_f3_s17 " = (s = 17); 
 label " prob_f3_s18 " = (s = 18); 
 label " prob_f3_s19 " = (s = 19); 
 label " prob_f3_s20 " = (s = 20); 
 label " prob_f3_s51 " = (s = 51); 
 label " prob_f3_s52 " = (s = 52); 
 label " prob_f3_s53 " = (s = 53); 
 label " prob_f3_s54 " = (s = 54); 
 label " prob_f3_s55 " = (s = 55); 
 label " prob_f3_s56 " = (s = 56); 
 
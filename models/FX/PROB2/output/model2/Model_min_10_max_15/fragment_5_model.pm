dtmc
  const double r5; 
  const double z52;  
  const double z51;  
  const double p51;  
 
 const double PX_12_1 = (((-1)*p51+1)); 
  const double PX_12_3 = ((p51));
 const double PX_26_2 = (( (r5) ) * ( (z51)/(z51+z52) )); 
  const double PX_26_4 = (((-1)*r5+1));
  const double PX_26_5 = (( (r5) ) * ( (z52)/(z51+z52) ));

module f5 
s : [12 .. 36] init 12; 
 
 [] s=12 -> (PX_12_1):(s'=26) + (PX_12_3):(s'=34); 
 [] s=26 -> (PX_26_2):(s'=12) + (PX_26_4):(s'=35) + (PX_26_5):(s'=36); 
 [] s=34 -> true; 
 [] s=35 -> true; 
 [] s=36 -> true; 
 
endmodule
label " prob_f5_s34 "= (s = 34); 
 label " prob_f5_s35 " = (s = 35); 
 label " prob_f5_s36 " = (s = 36); 
 
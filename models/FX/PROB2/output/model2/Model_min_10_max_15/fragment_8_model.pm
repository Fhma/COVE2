dtmc
  const double r3; 
  const double z32;  
  const double z31;  
  const double p31;  
 
 const double PX_16_1 = (((-1)*p31+1)); 
  const double PX_16_3 = ((p31));
 const double PX_24_2 = (( (r3) ) * ( (z31)/(z31+z32) )); 
  const double PX_24_4 = (((-1)*r3+1));
  const double PX_24_5 = (( (r3) ) * ( (z32)/(z31+z32) ));

module f8 
s : [16 .. 39] init 16; 
 
 [] s=16 -> (PX_16_1):(s'=24) + (PX_16_3):(s'=37); 
 [] s=24 -> (PX_24_2):(s'=16) + (PX_24_4):(s'=38) + (PX_24_5):(s'=39); 
 [] s=37 -> true; 
 [] s=38 -> true; 
 [] s=39 -> true; 
 
endmodule
label " prob_f8_s37 "= (s = 37); 
 label " prob_f8_s38 " = (s = 38); 
 label " prob_f8_s39 " = (s = 39); 
 
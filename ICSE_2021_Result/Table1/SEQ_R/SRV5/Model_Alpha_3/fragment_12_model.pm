dtmc
   //const double p61; 
  // const double p52;  
  // const double r52;  
 
 const double P12_14_1;// = (((-1)*p52+1)); 
  const double P12_14_3 ;// = (( (p52) ) * ( (p61) ));
  const double P12_14_4 ;// = (( (p52) ) * ( ((-1)*p61+1) ));
 const double P12_45_2;// = ((r52)); 
  const double P12_45_5 ;// = (((-1)*r52+1));

module f12 
s : [14 .. 87] init 14; 
 
 [] s=14 -> (P12_14_1):(s'=45) + (P12_14_3):(s'=85) + (P12_14_4):(s'=86); 
 [] s=45 -> (P12_45_2):(s'=14) + (P12_45_5):(s'=87); 
 [] s=85 -> true; 
 [] s=86 -> true; 
 [] s=87 -> true; 
 
endmodule
label " prob_f12_s85 "= (s = 85); 
 label " prob_f12_s86 " = (s = 86); 
 label " prob_f12_s87 " = (s = 87); 
 
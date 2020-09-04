dtmc
   //const double r32; 
  // const double p61;  
  // const double p32;  
 
 const double P11_13_1;// = (((-1)*p32+1)); 
  const double P11_13_3 ;// = (( (p32) ) * ( (p61) ));
  const double P11_13_4 ;// = (( (p32) ) * ( ((-1)*p61+1) ));
 const double P11_26_2;// = ((r32)); 
  const double P11_26_5 ;// = (((-1)*r32+1));

module f11 
s : [13 .. 50] init 13; 
 
 [] s=13 -> (P11_13_1):(s'=26) + (P11_13_3):(s'=48) + (P11_13_4):(s'=49); 
 [] s=26 -> (P11_26_2):(s'=13) + (P11_26_5):(s'=50); 
 [] s=48 -> true; 
 [] s=49 -> true; 
 [] s=50 -> true; 
 
endmodule
label " prob_f11_s48 "= (s = 48); 
 label " prob_f11_s49 " = (s = 49); 
 label " prob_f11_s50 " = (s = 50); 
 
dtmc
 //const double p61; 
 
 const double P2_6_1;// = (((-1)*p61+1)); 
  const double P2_6_2 ;// = ((p61));

module f2 
s : [6 .. 38] init 6; 
 
 [] s=6 -> (P2_6_1):(s'=11) + (P2_6_2):(s'=38); 
 [] s=11 -> true; 
 [] s=38 -> true; 
 
endmodule
label " prob_f2_s11 "= (s = 11); 
 label " prob_f2_s38 " = (s = 38); 
 
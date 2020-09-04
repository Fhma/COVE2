dtmc
  //const double r64; 
  // const double p64;  
 
 const double P10_12_1;// = (((-1)*p64+1)); 
  const double P10_12_3 ;// = ((p64));
 const double P10_37_2;// = ((r64)); 
  const double P10_37_4 ;// = (((-1)*r64+1));

module f10 
s : [12 .. 70] init 12; 
 
 [] s=12 -> (P10_12_1):(s'=37) + (P10_12_3):(s'=69); 
 [] s=37 -> (P10_37_2):(s'=12) + (P10_37_4):(s'=70); 
 [] s=69 -> true; 
 [] s=70 -> true; 
 
endmodule
label " prob_f10_s69 "= (s = 69); 
 label " prob_f10_s70 " = (s = 70); 
 
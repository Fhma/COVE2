dtmc
  //const double p12; 
  // const double r12;  
 
 const double P14_15_1;// = (((-1)*p12+1)); 
  const double P14_15_3 ;// = ((p12));
 const double P14_28_2;// = ((r12)); 
  const double P14_28_4 ;// = (((-1)*r12+1));

module f14 
s : [15 .. 58] init 15; 
 
 [] s=15 -> (P14_15_1):(s'=28) + (P14_15_3):(s'=57); 
 [] s=28 -> (P14_28_2):(s'=15) + (P14_28_4):(s'=58); 
 [] s=57 -> true; 
 [] s=58 -> true; 
 
endmodule
label " prob_f14_s57 "= (s = 57); 
 label " prob_f14_s58 " = (s = 58); 
 
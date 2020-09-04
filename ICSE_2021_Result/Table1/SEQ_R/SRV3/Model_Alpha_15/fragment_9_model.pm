dtmc
  //const double r31; 
  // const double p31;  
 
 const double P9_24_1;// = (( (r31) ) * ( ((-1)*p31+1) )); 
  const double P9_24_2 ;// = (((-1)*r31+1));
  const double P9_24_3 ;// = (( (r31) ) * ( (p31) ));

module f9 
s : [24 .. 59] init 24; 
 
 [] s=24 -> (P9_24_1):(s'=24) + (P9_24_2):(s'=58) + (P9_24_3):(s'=59); 
 [] s=58 -> true; 
 [] s=59 -> true; 
 
endmodule
label " prob_f9_s58 "= (s = 58); 
 label " prob_f9_s59 " = (s = 59); 
 
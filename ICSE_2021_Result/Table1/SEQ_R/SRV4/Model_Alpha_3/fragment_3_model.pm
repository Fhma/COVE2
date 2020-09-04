dtmc
  //const double r31; 
  // const double p31;  
 
 const double P3_3_1;// = ((p31)); 
  const double P3_3_2 ;// = (((-1)*p31+1));
 const double P3_30_3;// = ((r31)); 
  const double P3_30_4 ;// = (((-1)*r31+1));

module f3 
s : [3 .. 57] init 3; 
 
 [] s=3 -> (P3_3_1):(s'=6) + (P3_3_2):(s'=30); 
 [] s=6 -> true; 
 [] s=30 -> (P3_30_3):(s'=3) + (P3_30_4):(s'=57); 
 [] s=57 -> true; 
 
endmodule
label " prob_f3_s6 "= (s = 6); 
 label " prob_f3_s57 " = (s = 57); 
 
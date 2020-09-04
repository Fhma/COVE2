dtmc
  //const double p12; 
  // const double r12;  
 
 const double P29_30_1;// = (((-1)*p12+1)); 
  const double P29_30_3 ;// = ((p12));
 const double P29_61_2;// = ((r12)); 
  const double P29_61_4 ;// = (((-1)*r12+1));

module f29 
s : [30 .. 139] init 30; 
 
 [] s=30 -> (P29_30_1):(s'=61) + (P29_30_3):(s'=138); 
 [] s=61 -> (P29_61_2):(s'=30) + (P29_61_4):(s'=139); 
 [] s=138 -> true; 
 [] s=139 -> true; 
 
endmodule
label " prob_f29_s138 "= (s = 138); 
 label " prob_f29_s139 " = (s = 139); 
 
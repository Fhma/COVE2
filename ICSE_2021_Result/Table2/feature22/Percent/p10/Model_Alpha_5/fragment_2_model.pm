dtmc
 //const double p3; 
 
 const double P2_2_1;// = ((p3)); 
  const double P2_2_2 ;// = (((-1)*p3+(1)));

module f2 
s : [2 .. 115] init 2; 
 
 [] s=2 -> (P2_2_1):(s'=3) + (P2_2_2):(s'=115); 
 [] s=3 -> true; 
 [] s=115 -> true; 
 
endmodule
label " prob_f2_s3 "= (s = 3); 
 label " prob_f2_s115 " = (s = 115); 
 
dtmc
  const double p12; 
  const double p11;  
 
module f1 
s : [0 .. 3] init 0; 
 
 [] s=0 -> (((-1)*p11+1)):(s'=1) + ((p11)):(s'=2); 
 [] s=1 -> ((p12)):(s'=2) + (((-1)*p12+1)):(s'=3); 
 [] s=2 -> true; 
 [] s=3 -> true; 
 
endmodule
label " prob_f1_s2 "= (s = 2); 
 label " prob_f1_s3 " = (s = 3); 
 
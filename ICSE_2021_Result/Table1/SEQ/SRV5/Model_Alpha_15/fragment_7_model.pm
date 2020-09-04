dtmc
 //const double p32; 
 
 const double P7_23_1;// = (((-1)*p32+1)); 
  const double P7_23_2 ;// = ((p32));

module f7 
s : [23 .. 42] init 23; 
 
 [] s=23 -> (P7_23_1):(s'=24) + (P7_23_2):(s'=42); 
 [] s=24 -> true; 
 [] s=42 -> true; 
 
endmodule
label " prob_f7_s24 "= (s = 24); 
 label " prob_f7_s42 " = (s = 42); 
 
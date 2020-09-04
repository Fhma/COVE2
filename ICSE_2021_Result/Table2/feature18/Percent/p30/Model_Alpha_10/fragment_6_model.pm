dtmc
 //const double p5; 
 
 const double P6_6_1;// = ((p5)); 
  const double P6_6_2 ;// = (((-1)*p5+1));

module f6 
s : [6 .. 14] init 6; 
 
 [] s=6 -> (P6_6_1):(s'=7) + (P6_6_2):(s'=14); 
 [] s=7 -> true; 
 [] s=14 -> true; 
 
endmodule
label " prob_f6_s7 "= (s = 7); 
 label " prob_f6_s14 " = (s = 14); 
 
dtmc
 //const double p44; 
 
 const double P27_59_1;// = ((p44)); 
  const double P27_59_2 ;// = (((-1)*p44+1));

module f27 
s : [59 .. 134] init 59; 
 
 [] s=59 -> (P27_59_1):(s'=60) + (P27_59_2):(s'=134); 
 [] s=60 -> true; 
 [] s=134 -> true; 
 
endmodule
label " prob_f27_s60 "= (s = 60); 
 label " prob_f27_s134 " = (s = 134); 
 
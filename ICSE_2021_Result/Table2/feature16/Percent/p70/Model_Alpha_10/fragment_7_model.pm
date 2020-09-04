dtmc
 //const double p6; 
 
 const double P7_5_1;// = ((p6)); 
  const double P7_5_2 ;// = (((-1)*p6+1));

module f7 
s : [5 .. 123] init 5; 
 
 [] s=5 -> (P7_5_1):(s'=122) + (P7_5_2):(s'=123); 
 [] s=122 -> true; 
 [] s=123 -> true; 
 
endmodule
label " prob_f7_s122 "= (s = 122); 
 label " prob_f7_s123 " = (s = 123); 
 
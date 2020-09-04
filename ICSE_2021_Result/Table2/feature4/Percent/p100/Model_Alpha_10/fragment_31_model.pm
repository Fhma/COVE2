dtmc
 //const double p68; 
 
 const double P31_82_1;// = ((p68)); 
  const double P31_82_2 ;// = (((-1)*p68+1));

module f31 
s : [82 .. 88] init 82; 
 
 [] s=82 -> (P31_82_1):(s'=83) + (P31_82_2):(s'=88); 
 [] s=83 -> true; 
 [] s=88 -> true; 
 
endmodule
label " prob_f31_s83 "= (s = 83); 
 label " prob_f31_s88 " = (s = 88); 
 
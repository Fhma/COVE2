dtmc
 //const double p42; 
 
 const double P26_57_1;// = ((p42)); 
  const double P26_57_2 ;// = (((-1)*p42+1));

module f26 
s : [57 .. 133] init 57; 
 
 [] s=57 -> (P26_57_1):(s'=58) + (P26_57_2):(s'=133); 
 [] s=58 -> true; 
 [] s=133 -> true; 
 
endmodule
label " prob_f26_s58 "= (s = 58); 
 label " prob_f26_s133 " = (s = 133); 
 
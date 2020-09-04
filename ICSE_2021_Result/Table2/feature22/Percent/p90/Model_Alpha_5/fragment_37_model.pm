dtmc
 //const double p62; 
 
 const double P37_83_1;// = (((-1)*p62+1)); 
  const double P37_83_2 ;// = ((p62));

module f37 
s : [83 .. 142] init 83; 
 
 [] s=83 -> (P37_83_1):(s'=140) + (P37_83_2):(s'=142); 
 [] s=140 -> true; 
 [] s=142 -> true; 
 
endmodule
label " prob_f37_s140 "= (s = 140); 
 label " prob_f37_s142 " = (s = 142); 
 
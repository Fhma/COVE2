dtmc
  //const double r43; 
  // const double p43;  
 
 const double P17_19_1;// = (((-1)*p43+1)); 
  const double P17_19_3 ;// = ((p43));
 const double P17_50_2;// = ((r43)); 
  const double P17_50_4 ;// = (((-1)*r43+1));

module f17 
s : [19 .. 100] init 19; 
 
 [] s=19 -> (P17_19_1):(s'=50) + (P17_19_3):(s'=99); 
 [] s=50 -> (P17_50_2):(s'=19) + (P17_50_4):(s'=100); 
 [] s=99 -> true; 
 [] s=100 -> true; 
 
endmodule
label " prob_f17_s99 "= (s = 99); 
 label " prob_f17_s100 " = (s = 100); 
 
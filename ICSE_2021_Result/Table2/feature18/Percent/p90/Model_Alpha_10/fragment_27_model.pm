dtmc
 //const double p62; 
 
 const double P27_75_1;// = ((p62)); 
  const double P27_75_2 ;// = (((-1)*p62+1));

module f27 
s : [75 .. 108] init 75; 
 
 [] s=75 -> (P27_75_1):(s'=76) + (P27_75_2):(s'=108); 
 [] s=76 -> true; 
 [] s=108 -> true; 
 
endmodule
label " prob_f27_s76 "= (s = 76); 
 label " prob_f27_s108 " = (s = 108); 
 
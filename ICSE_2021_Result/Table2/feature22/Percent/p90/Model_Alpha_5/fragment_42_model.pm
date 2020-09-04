dtmc
 //const double p73; 
 
 const double P42_96_1;// = ((p73)); 
  const double P42_96_2 ;// = (((-1)*p73+1));

module f42 
s : [96 .. 146] init 96; 
 
 [] s=96 -> (P42_96_1):(s'=97) + (P42_96_2):(s'=146); 
 [] s=97 -> true; 
 [] s=146 -> true; 
 
endmodule
label " prob_f42_s97 "= (s = 97); 
 label " prob_f42_s146 " = (s = 146); 
 
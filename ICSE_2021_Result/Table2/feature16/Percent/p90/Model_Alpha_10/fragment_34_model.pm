dtmc
 //const double p66; 
 
 const double P34_85_1;// = ((p66)); 
  const double P34_85_2 ;// = (((-1)*p66+1));

module f34 
s : [85 .. 88] init 85; 
 
 [] s=85 -> (P34_85_1):(s'=86) + (P34_85_2):(s'=88); 
 [] s=86 -> true; 
 [] s=88 -> true; 
 
endmodule
label " prob_f34_s86 "= (s = 86); 
 label " prob_f34_s88 " = (s = 88); 
 
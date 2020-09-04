dtmc
 //const double p38; 
 
 const double P22_52_1;// = ((p38)); 
  const double P22_52_2 ;// = (((-1)*p38+1));

module f22 
s : [52 .. 130] init 52; 
 
 [] s=52 -> (P22_52_1):(s'=53) + (P22_52_2):(s'=130); 
 [] s=53 -> true; 
 [] s=130 -> true; 
 
endmodule
label " prob_f22_s53 "= (s = 53); 
 label " prob_f22_s130 " = (s = 130); 
 
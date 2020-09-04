dtmc
 

module f9 
s : [12 .. 121] init 12; 
 
 [] s=12 -> ((2479/2500)):(s'=13) + ((21/2500)):(s'=121); 
 [] s=13 -> true; 
 [] s=121 -> true; 
 
endmodule
label " prob_f9_s13 "= (s = 13); 
 label " prob_f9_s121 " = (s = 121); 
 
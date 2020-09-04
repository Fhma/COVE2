dtmc
 

module f22 
s : [52 .. 130] init 52; 
 
 [] s=52 -> ((1247/1250)):(s'=53) + ((3/1250)):(s'=130); 
 [] s=53 -> true; 
 [] s=130 -> true; 
 
endmodule
label " prob_f22_s53 "= (s = 53); 
 label " prob_f22_s130 " = (s = 130); 
 
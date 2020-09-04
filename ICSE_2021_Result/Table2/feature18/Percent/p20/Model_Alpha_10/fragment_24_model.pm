dtmc
 

module f24 
s : [68 .. 105] init 68; 
 
 [] s=68 -> ((9997/10000)):(s'=69) + ((3/10000)):(s'=105); 
 [] s=69 -> true; 
 [] s=105 -> true; 
 
endmodule
label " prob_f24_s69 "= (s = 69); 
 label " prob_f24_s105 " = (s = 105); 
 
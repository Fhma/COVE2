dtmc
 

module f8 
s : [8 .. 124] init 8; 
 
 [] s=8 -> ((399/400)):(s'=9) + ((1/400)):(s'=124); 
 [] s=9 -> true; 
 [] s=124 -> true; 
 
endmodule
label " prob_f8_s9 "= (s = 9); 
 label " prob_f8_s124 " = (s = 124); 
 
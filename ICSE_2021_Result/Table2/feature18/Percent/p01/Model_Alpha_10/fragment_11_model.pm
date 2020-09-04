dtmc
 

module f11 
s : [15 .. 123] init 15; 
 
 [] s=15 -> ((41/5000)):(s'=122) + ((4959/5000)):(s'=123); 
 [] s=122 -> true; 
 [] s=123 -> true; 
 
endmodule
label " prob_f11_s122 "= (s = 122); 
 label " prob_f11_s123 " = (s = 123); 
 
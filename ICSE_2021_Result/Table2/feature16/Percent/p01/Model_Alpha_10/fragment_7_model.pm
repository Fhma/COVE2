dtmc
 

module f7 
s : [5 .. 123] init 5; 
 
 [] s=5 -> ((4/5)):(s'=122) + ((1/5)):(s'=123); 
 [] s=122 -> true; 
 [] s=123 -> true; 
 
endmodule
label " prob_f7_s122 "= (s = 122); 
 label " prob_f7_s123 " = (s = 123); 
 
dtmc
 

module f15 
s : [31 .. 128] init 31; 
 
 [] s=31 -> ((4989/5000)):(s'=32) + ((11/5000)):(s'=128); 
 [] s=32 -> true; 
 [] s=128 -> true; 
 
endmodule
label " prob_f15_s32 "= (s = 32); 
 label " prob_f15_s128 " = (s = 128); 
 
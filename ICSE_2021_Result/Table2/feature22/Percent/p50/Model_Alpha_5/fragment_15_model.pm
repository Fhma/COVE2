dtmc
 

module f15 
s : [31 .. 32] init 31; 
 
 [] s=31 -> ((1)):(s'=32); 
 [] s=32 -> true; 
 
endmodule
label " prob_f15_s32 "= (s = 32); 
 
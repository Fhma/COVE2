dtmc
 

module f32 
s : [75 .. 76] init 75; 
 
 [] s=75 -> ((1)):(s'=76); 
 [] s=76 -> true; 
 
endmodule
label " prob_f32_s76 "= (s = 76); 
 
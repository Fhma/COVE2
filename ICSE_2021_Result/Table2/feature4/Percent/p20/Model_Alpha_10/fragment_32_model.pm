dtmc
 

module f32 
s : [84 .. 191] init 84; 
 
 [] s=84 -> ((4983/5000)):(s'=85) + ((17/5000)):(s'=191); 
 [] s=85 -> true; 
 [] s=191 -> true; 
 
endmodule
label " prob_f32_s85 "= (s = 85); 
 label " prob_f32_s191 " = (s = 191); 
 
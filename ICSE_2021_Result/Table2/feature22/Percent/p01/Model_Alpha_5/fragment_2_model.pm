dtmc
 

module f2 
s : [2 .. 115] init 2; 
 
 [] s=2 -> ((7/10)):(s'=3) + ((3/10)):(s'=115); 
 [] s=3 -> true; 
 [] s=115 -> true; 
 
endmodule
label " prob_f2_s3 "= (s = 3); 
 label " prob_f2_s115 " = (s = 115); 
 
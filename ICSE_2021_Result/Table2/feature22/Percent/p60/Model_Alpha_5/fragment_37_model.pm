dtmc
 

module f37 
s : [83 .. 142] init 83; 
 
 [] s=83 -> ((7/2000)):(s'=140) + ((1993/2000)):(s'=142); 
 [] s=140 -> true; 
 [] s=142 -> true; 
 
endmodule
label " prob_f37_s140 "= (s = 140); 
 label " prob_f37_s142 " = (s = 142); 
 
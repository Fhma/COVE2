dtmc
 

module f26 
s : [51 .. 140] init 51; 
 
 [] s=51 -> ((17/2500)):(s'=135) + ((2483/2500)):(s'=140); 
 [] s=135 -> true; 
 [] s=140 -> true; 
 
endmodule
label " prob_f26_s135 "= (s = 135); 
 label " prob_f26_s140 " = (s = 140); 
 
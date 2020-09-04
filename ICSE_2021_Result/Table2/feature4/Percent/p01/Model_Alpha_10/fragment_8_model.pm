dtmc
 

module f8 
s : [9 .. 103] init 9; 
 
 [] s=9 -> ((3/2000)):(s'=92) + ((1997/2000)):(s'=103); 
 [] s=92 -> true; 
 [] s=103 -> true; 
 
endmodule
label " prob_f8_s92 "= (s = 92); 
 label " prob_f8_s103 " = (s = 103); 
 
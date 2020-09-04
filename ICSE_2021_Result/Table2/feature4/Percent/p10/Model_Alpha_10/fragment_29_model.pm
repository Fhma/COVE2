dtmc
 

module f29 
s : [78 .. 190] init 78; 
 
 [] s=78 -> ((2477/2500)):(s'=79) + ((23/2500)):(s'=190); 
 [] s=79 -> true; 
 [] s=190 -> true; 
 
endmodule
label " prob_f29_s79 "= (s = 79); 
 label " prob_f29_s190 " = (s = 190); 
 
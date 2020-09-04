dtmc
 

module f34 
s : [79 .. 139] init 79; 
 
 [] s=79 -> ((993/1000)):(s'=80) + ((7/1000)):(s'=139); 
 [] s=80 -> true; 
 [] s=139 -> true; 
 
endmodule
label " prob_f34_s80 "= (s = 80); 
 label " prob_f34_s139 " = (s = 139); 
 
dtmc
 

module f21 
s : [60 .. 139] init 60; 
 
 [] s=60 -> ((69/10000)):(s'=114) + ((9931/10000)):(s'=139); 
 [] s=114 -> true; 
 [] s=139 -> true; 
 
endmodule
label " prob_f21_s114 "= (s = 114); 
 label " prob_f21_s139 " = (s = 139); 
 
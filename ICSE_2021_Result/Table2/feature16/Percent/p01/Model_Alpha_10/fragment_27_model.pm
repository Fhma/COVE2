dtmc
 

module f27 
s : [53 .. 141] init 53; 
 
 [] s=53 -> ((29/10000)):(s'=136) + ((9971/10000)):(s'=141); 
 [] s=136 -> true; 
 [] s=141 -> true; 
 
endmodule
label " prob_f27_s136 "= (s = 136); 
 label " prob_f27_s141 " = (s = 141); 
 
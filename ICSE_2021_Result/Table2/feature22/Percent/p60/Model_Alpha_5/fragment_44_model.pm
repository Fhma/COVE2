dtmc
 

module f44 
s : [109 .. 112] init 109; 
 
 [] s=109 -> ((7/10)):(s'=110) + ((3/10)):(s'=112); 
 [] s=110 -> true; 
 [] s=112 -> true; 
 
endmodule
label " prob_f44_s110 "= (s = 110); 
 label " prob_f44_s112 " = (s = 112); 
 
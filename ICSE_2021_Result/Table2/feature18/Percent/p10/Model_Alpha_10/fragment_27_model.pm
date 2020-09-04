dtmc
 

module f27 
s : [75 .. 108] init 75; 
 
 [] s=75 -> ((9947/10000)):(s'=76) + ((53/10000)):(s'=108); 
 [] s=76 -> true; 
 [] s=108 -> true; 
 
endmodule
label " prob_f27_s76 "= (s = 76); 
 label " prob_f27_s108 " = (s = 108); 
 
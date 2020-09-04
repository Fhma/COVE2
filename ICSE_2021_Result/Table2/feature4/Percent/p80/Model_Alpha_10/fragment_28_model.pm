dtmc
 

module f28 
s : [76 .. 80] init 76; 
 
 [] s=76 -> ((4/5)):(s'=77) + ((1/5)):(s'=80); 
 [] s=77 -> true; 
 [] s=80 -> true; 
 
endmodule
label " prob_f28_s77 "= (s = 77); 
 label " prob_f28_s80 " = (s = 80); 
 
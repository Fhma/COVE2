dtmc
 

module f35 
s : [89 .. 142] init 89; 
 
 [] s=89 -> ((623/625)):(s'=90) + ((2/625)):(s'=142); 
 [] s=90 -> true; 
 [] s=142 -> true; 
 
endmodule
label " prob_f35_s90 "= (s = 90); 
 label " prob_f35_s142 " = (s = 142); 
 
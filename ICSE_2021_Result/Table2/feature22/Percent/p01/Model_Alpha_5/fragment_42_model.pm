dtmc
 

module f42 
s : [96 .. 146] init 96; 
 
 [] s=96 -> ((9951/10000)):(s'=97) + ((49/10000)):(s'=146); 
 [] s=97 -> true; 
 [] s=146 -> true; 
 
endmodule
label " prob_f42_s97 "= (s = 97); 
 label " prob_f42_s146 " = (s = 146); 
 
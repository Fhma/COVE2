dtmc
 

module f38 
s : [85 .. 143] init 85; 
 
 [] s=85 -> ((9903/10000)):(s'=86) + ((97/10000)):(s'=143); 
 [] s=86 -> true; 
 [] s=143 -> true; 
 
endmodule
label " prob_f38_s86 "= (s = 86); 
 label " prob_f38_s143 " = (s = 143); 
 
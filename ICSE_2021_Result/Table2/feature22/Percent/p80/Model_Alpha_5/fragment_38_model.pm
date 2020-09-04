dtmc
 //const double p64; 
 
 const double P38_85_1;// = ((p64)); 
  const double P38_85_2 ;// = (((-1)*p64+1));

module f38 
s : [85 .. 143] init 85; 
 
 [] s=85 -> (P38_85_1):(s'=86) + (P38_85_2):(s'=143); 
 [] s=86 -> true; 
 [] s=143 -> true; 
 
endmodule
label " prob_f38_s86 "= (s = 86); 
 label " prob_f38_s143 " = (s = 143); 
 
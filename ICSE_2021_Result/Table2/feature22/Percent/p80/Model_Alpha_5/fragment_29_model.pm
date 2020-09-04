dtmc
 //const double p48; 
 
 const double P29_63_1;// = ((p48)); 
  const double P29_63_2 ;// = (((-1)*p48+1));

module f29 
s : [63 .. 136] init 63; 
 
 [] s=63 -> (P29_63_1):(s'=64) + (P29_63_2):(s'=136); 
 [] s=64 -> true; 
 [] s=136 -> true; 
 
endmodule
label " prob_f29_s64 "= (s = 64); 
 label " prob_f29_s136 " = (s = 136); 
 
dtmc
 //const double p32; 
 
 const double P19_45_1;// = ((p32)); 
  const double P19_45_2 ;// = (((-1)*p32+1));

module f19 
s : [45 .. 49] init 45; 
 
 [] s=45 -> (P19_45_1):(s'=46) + (P19_45_2):(s'=49); 
 [] s=46 -> true; 
 [] s=49 -> true; 
 
endmodule
label " prob_f19_s46 "= (s = 46); 
 label " prob_f19_s49 " = (s = 49); 
 
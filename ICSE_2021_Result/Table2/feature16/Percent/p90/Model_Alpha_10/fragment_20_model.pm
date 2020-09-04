dtmc
 //const double p32; 
 
 const double P20_39_1;// = ((p32)); 
  const double P20_39_2 ;// = (((-1)*p32+1));

module f20 
s : [39 .. 133] init 39; 
 
 [] s=39 -> (P20_39_1):(s'=40) + (P20_39_2):(s'=133); 
 [] s=40 -> true; 
 [] s=133 -> true; 
 
endmodule
label " prob_f20_s40 "= (s = 40); 
 label " prob_f20_s133 " = (s = 133); 
 
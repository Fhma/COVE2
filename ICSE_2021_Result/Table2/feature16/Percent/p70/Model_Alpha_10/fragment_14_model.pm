dtmc
 //const double p22; 
 
 const double P14_29_1;// = ((p22)); 
  const double P14_29_2 ;// = (((-1)*p22+1));

module f14 
s : [29 .. 37] init 29; 
 
 [] s=29 -> (P14_29_1):(s'=30) + (P14_29_2):(s'=37); 
 [] s=30 -> true; 
 [] s=37 -> true; 
 
endmodule
label " prob_f14_s30 "= (s = 30); 
 label " prob_f14_s37 " = (s = 37); 
 
dtmc
 //const double p34; 
 
 const double P20_47_1;// = ((p34)); 
  const double P20_47_2 ;// = (((-1)*p34+1));

module f20 
s : [47 .. 128] init 47; 
 
 [] s=47 -> (P20_47_1):(s'=48) + (P20_47_2):(s'=128); 
 [] s=48 -> true; 
 [] s=128 -> true; 
 
endmodule
label " prob_f20_s48 "= (s = 48); 
 label " prob_f20_s128 " = (s = 128); 
 
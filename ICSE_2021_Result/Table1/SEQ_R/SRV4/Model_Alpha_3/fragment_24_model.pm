dtmc
  //const double p12; 
  // const double r12;  
 
 const double P24_25_1;// = (((-1)*p12+1)); 
  const double P24_25_3 ;// = ((p12));
 const double P24_50_2;// = ((r12)); 
  const double P24_50_4 ;// = (((-1)*r12+1));

module f24 
s : [25 .. 112] init 25; 
 
 [] s=25 -> (P24_25_1):(s'=50) + (P24_25_3):(s'=111); 
 [] s=50 -> (P24_50_2):(s'=25) + (P24_50_4):(s'=112); 
 [] s=111 -> true; 
 [] s=112 -> true; 
 
endmodule
label " prob_f24_s111 "= (s = 111); 
 label " prob_f24_s112 " = (s = 112); 
 
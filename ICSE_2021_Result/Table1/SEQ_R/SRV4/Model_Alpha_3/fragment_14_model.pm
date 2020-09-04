dtmc
  //const double r42; 
  // const double p42;  
 
 const double P14_16_1;// = (((-1)*p42+1)); 
  const double P14_16_3 ;// = ((p42));
 const double P14_41_2;// = ((r42)); 
  const double P14_41_4 ;// = (((-1)*r42+1));

module f14 
s : [16 .. 81] init 16; 
 
 [] s=16 -> (P14_16_1):(s'=41) + (P14_16_3):(s'=80); 
 [] s=41 -> (P14_41_2):(s'=16) + (P14_41_4):(s'=81); 
 [] s=80 -> true; 
 [] s=81 -> true; 
 
endmodule
label " prob_f14_s80 "= (s = 80); 
 label " prob_f14_s81 " = (s = 81); 
 
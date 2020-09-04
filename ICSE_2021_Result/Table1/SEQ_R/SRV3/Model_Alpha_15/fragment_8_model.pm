dtmc
  //const double p33; 
  // const double r33;  
 
 const double P8_17_1;// = (((-1)*p33+1)); 
  const double P8_17_3 ;// = ((p33));
 const double P8_36_2;// = ((r33)); 
  const double P8_36_4 ;// = (((-1)*r33+1));

module f8 
s : [17 .. 57] init 17; 
 
 [] s=17 -> (P8_17_1):(s'=36) + (P8_17_3):(s'=56); 
 [] s=36 -> (P8_36_2):(s'=17) + (P8_36_4):(s'=57); 
 [] s=56 -> true; 
 [] s=57 -> true; 
 
endmodule
label " prob_f8_s56 "= (s = 56); 
 label " prob_f8_s57 " = (s = 57); 
 
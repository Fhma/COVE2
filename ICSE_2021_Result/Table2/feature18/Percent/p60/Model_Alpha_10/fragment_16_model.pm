dtmc
      //const double p41; 
  // const double p40;  
  // const double p43;  
  // const double p42;  
  // const double p38;  
  // const double p39;  
 
 const double P16_47_1;// = ((p38)); 
  const double P16_47_2 ;// = (((-1)*p38+1));
 const double P16_48_3;// = ((p39)); 
  const double P16_48_4 ;// = (((-1)*p39+1));
 const double P16_49_5;// = ((p40)); 
  const double P16_49_12 ;// = (((-1)*p40+1));
 const double P16_50_6;// = ((p41)); 
  const double P16_50_10 ;// = (((-1)*p41+1));
 const double P16_52_8;// = ((p42)); 
  const double P16_52_13 ;// = (((-1)*p42+1));
 const double P16_53_9;// = ((p43)); 
  const double P16_53_11 ;// = (((-1)*p43+1));

module f16 
s : [47 .. 138] init 47; 
 
 [] s=47 -> (P16_47_1):(s'=48) + (P16_47_2):(s'=52); 
 [] s=48 -> (P16_48_3):(s'=49) + (P16_48_4):(s'=54); 
 [] s=49 -> (P16_49_5):(s'=50) + (P16_49_12):(s'=137); 
 [] s=50 -> (P16_50_6):(s'=51) + (P16_50_10):(s'=135); 
 [] s=51 -> ((1)):(s'=48); 
 [] s=52 -> (P16_52_8):(s'=53) + (P16_52_13):(s'=138); 
 [] s=53 -> (P16_53_9):(s'=54) + (P16_53_11):(s'=136); 
 [] s=54 -> true; 
 [] s=135 -> true; 
 [] s=136 -> true; 
 [] s=137 -> true; 
 [] s=138 -> true; 
 
endmodule
label " prob_f16_s54 "= (s = 54); 
 label " prob_f16_s135 " = (s = 135); 
 label " prob_f16_s136 " = (s = 136); 
 label " prob_f16_s137 " = (s = 137); 
 label " prob_f16_s138 " = (s = 138); 
 
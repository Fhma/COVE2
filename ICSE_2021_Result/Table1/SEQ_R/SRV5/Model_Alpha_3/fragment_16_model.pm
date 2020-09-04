dtmc
  //const double r42; 
  // const double p42;  
 
 const double P16_18_1;// = (((-1)*p42+1)); 
  const double P16_18_3 ;// = ((p42));
 const double P16_49_2;// = ((r42)); 
  const double P16_49_4 ;// = (((-1)*r42+1));

module f16 
s : [18 .. 98] init 18; 
 
 [] s=18 -> (P16_18_1):(s'=49) + (P16_18_3):(s'=97); 
 [] s=49 -> (P16_49_2):(s'=18) + (P16_49_4):(s'=98); 
 [] s=97 -> true; 
 [] s=98 -> true; 
 
endmodule
label " prob_f16_s97 "= (s = 97); 
 label " prob_f16_s98 " = (s = 98); 
 
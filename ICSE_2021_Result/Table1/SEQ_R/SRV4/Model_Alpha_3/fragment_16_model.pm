dtmc
  //const double p44; 
  // const double r44;  
 
 const double P16_18_1;// = (((-1)*p44+1)); 
  const double P16_18_3 ;// = ((p44));
 const double P16_43_2;// = ((r44)); 
  const double P16_43_4 ;// = (((-1)*r44+1));

module f16 
s : [18 .. 85] init 18; 
 
 [] s=18 -> (P16_18_1):(s'=43) + (P16_18_3):(s'=84); 
 [] s=43 -> (P16_43_2):(s'=18) + (P16_43_4):(s'=85); 
 [] s=84 -> true; 
 [] s=85 -> true; 
 
endmodule
label " prob_f16_s84 "= (s = 84); 
 label " prob_f16_s85 " = (s = 85); 
 
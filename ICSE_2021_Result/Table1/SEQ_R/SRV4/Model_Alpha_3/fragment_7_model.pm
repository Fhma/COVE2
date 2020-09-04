dtmc
   //const double z1; 
  // const double z2;  
  // const double p41;  
 
 const double P7_8_1;// = (( ((-1)*z1-z2+1) ) * ( (p41) )); 
  const double P7_8_2 ;// = ((z2));
  const double P7_8_3 ;// = ((z1));
  const double P7_8_4 ;// = (( ((-1)*z1-z2+1) ) * ( ((-1)*p41+1) ));

module f7 
s : [8 .. 64] init 8; 
 
 [] s=8 -> (P7_8_1):(s'=8) + (P7_8_2):(s'=62) + (P7_8_3):(s'=63) + (P7_8_4):(s'=64); 
 [] s=62 -> true; 
 [] s=63 -> true; 
 [] s=64 -> true; 
 
endmodule
label " prob_f7_s62 "= (s = 62); 
 label " prob_f7_s63 " = (s = 63); 
 label " prob_f7_s64 " = (s = 64); 
 
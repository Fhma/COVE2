dtmc
   //const double z1; 
  // const double z2;  
  // const double p41;  
 
 const double P7_8_1;// = (( ((-1)*z1-z2+1) ) * ( (p41) )); 
  const double P7_8_2 ;// = ((z2));
  const double P7_8_3 ;// = ((z1));
  const double P7_8_4 ;// = (( ((-1)*z1-z2+1) ) * ( ((-1)*p41+1) ));

module f7 
s : [8 .. 40] init 8; 
 
 [] s=8 -> (P7_8_1):(s'=8) + (P7_8_2):(s'=38) + (P7_8_3):(s'=39) + (P7_8_4):(s'=40); 
 [] s=38 -> true; 
 [] s=39 -> true; 
 [] s=40 -> true; 
 
endmodule
label " prob_f7_s38 "= (s = 38); 
 label " prob_f7_s39 " = (s = 39); 
 label " prob_f7_s40 " = (s = 40); 
 
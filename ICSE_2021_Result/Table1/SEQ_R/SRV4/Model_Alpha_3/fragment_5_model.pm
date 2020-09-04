dtmc
   //const double p61; 
  // const double p51;  
  // const double r51;  
 
 const double P5_5_1;// = (((-1)*p51+1)); 
  const double P5_5_3 ;// = (( (p51) ) * ( (p61) ));
  const double P5_5_4 ;// = (( (p51) ) * ( ((-1)*p61+1) ));
 const double P5_32_2;// = ((r51)); 
  const double P5_32_5 ;// = (((-1)*r51+1));

module f5 
s : [5 .. 61] init 5; 
 
 [] s=5 -> (P5_5_1):(s'=32) + (P5_5_3):(s'=58) + (P5_5_4):(s'=60); 
 [] s=32 -> (P5_32_2):(s'=5) + (P5_32_5):(s'=61); 
 [] s=58 -> true; 
 [] s=60 -> true; 
 [] s=61 -> true; 
 
endmodule
label " prob_f5_s58 "= (s = 58); 
 label " prob_f5_s60 " = (s = 60); 
 label " prob_f5_s61 " = (s = 61); 
 
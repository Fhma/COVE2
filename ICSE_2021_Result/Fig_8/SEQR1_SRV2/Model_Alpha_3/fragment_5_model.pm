dtmc
   //const double p61; 
  // const double p51;  
  // const double r51;  
 
 const double P5_5_1;// = (((-1)*p51+1)); 
  const double P5_5_3 ;// = (( (p51) ) * ( (p61) ));
  const double P5_5_4 ;// = (( (p51) ) * ( ((-1)*p61+1) ));
 const double P5_20_2;// = ((r51)); 
  const double P5_20_5 ;// = (((-1)*r51+1));

module f5 
s : [5 .. 37] init 5; 
 
 [] s=5 -> (P5_5_1):(s'=20) + (P5_5_3):(s'=34) + (P5_5_4):(s'=36); 
 [] s=20 -> (P5_20_2):(s'=5) + (P5_20_5):(s'=37); 
 [] s=34 -> true; 
 [] s=36 -> true; 
 [] s=37 -> true; 
 
endmodule
label " prob_f5_s34 "= (s = 34); 
 label " prob_f5_s36 " = (s = 36); 
 label " prob_f5_s37 " = (s = 37); 
 
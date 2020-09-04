dtmc
   //const double p61; 
  // const double p51;  
  // const double r51;  
 
 const double P5_5_1;// = (((-1)*p51+1)); 
  const double P5_5_3 ;// = (( (p51) ) * ( (p61) ));
  const double P5_5_4 ;// = (( (p51) ) * ( ((-1)*p61+1) ));
 const double P5_38_2;// = ((r51)); 
  const double P5_38_5 ;// = (((-1)*r51+1));

module f5 
s : [5 .. 73] init 5; 
 
 [] s=5 -> (P5_5_1):(s'=38) + (P5_5_3):(s'=70) + (P5_5_4):(s'=72); 
 [] s=38 -> (P5_38_2):(s'=5) + (P5_38_5):(s'=73); 
 [] s=70 -> true; 
 [] s=72 -> true; 
 [] s=73 -> true; 
 
endmodule
label " prob_f5_s70 "= (s = 70); 
 label " prob_f5_s72 " = (s = 72); 
 label " prob_f5_s73 " = (s = 73); 
 
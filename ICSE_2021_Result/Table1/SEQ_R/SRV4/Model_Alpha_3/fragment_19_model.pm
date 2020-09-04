dtmc
   //const double p34; 
  // const double r34;  
  // const double p61;  
 
 const double P19_21_1;// = (((-1)*p34+1)); 
  const double P19_21_3 ;// = (( (p34) ) * ( (p61) ));
  const double P19_21_4 ;// = (( (p34) ) * ( ((-1)*p61+1) ));
 const double P19_46_2;// = ((r34)); 
  const double P19_46_5 ;// = (((-1)*r34+1));

module f19 
s : [21 .. 94] init 21; 
 
 [] s=21 -> (P19_21_1):(s'=46) + (P19_21_3):(s'=92) + (P19_21_4):(s'=93); 
 [] s=46 -> (P19_46_2):(s'=21) + (P19_46_5):(s'=94); 
 [] s=92 -> true; 
 [] s=93 -> true; 
 [] s=94 -> true; 
 
endmodule
label " prob_f19_s92 "= (s = 92); 
 label " prob_f19_s93 " = (s = 93); 
 label " prob_f19_s94 " = (s = 94); 
 
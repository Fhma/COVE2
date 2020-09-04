dtmc
   //const double r32; 
  // const double p61;  
  // const double p32;  
 
 const double P5_13_1;// = (((-1)*p32+1)); 
  const double P5_13_3 ;// = (( (p32) ) * ( (p61) ));
  const double P5_13_4 ;// = (( (p32) ) * ( ((-1)*p61+1) ));
 const double P5_26_2;// = ((r32)); 
  const double P5_26_5 ;// = (((-1)*r32+1));

module f5 
s : [13 .. 42] init 13; 
 
 [] s=13 -> (P5_13_1):(s'=26) + (P5_13_3):(s'=40) + (P5_13_4):(s'=41); 
 [] s=26 -> (P5_26_2):(s'=13) + (P5_26_5):(s'=42); 
 [] s=40 -> true; 
 [] s=41 -> true; 
 [] s=42 -> true; 
 
endmodule
label " prob_f5_s40 "= (s = 40); 
 label " prob_f5_s41 " = (s = 41); 
 label " prob_f5_s42 " = (s = 42); 
 
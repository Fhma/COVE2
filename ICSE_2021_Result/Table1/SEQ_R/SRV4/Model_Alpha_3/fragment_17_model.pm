dtmc
   //const double r32; 
  // const double p61;  
  // const double p32;  
 
 const double P17_19_1;// = (((-1)*p32+1)); 
  const double P17_19_3 ;// = (( (p32) ) * ( (p61) ));
  const double P17_19_4 ;// = (( (p32) ) * ( ((-1)*p61+1) ));
 const double P17_44_2;// = ((r32)); 
  const double P17_44_5 ;// = (((-1)*r32+1));

module f17 
s : [19 .. 88] init 19; 
 
 [] s=19 -> (P17_19_1):(s'=44) + (P17_19_3):(s'=86) + (P17_19_4):(s'=87); 
 [] s=44 -> (P17_44_2):(s'=19) + (P17_44_5):(s'=88); 
 [] s=86 -> true; 
 [] s=87 -> true; 
 [] s=88 -> true; 
 
endmodule
label " prob_f17_s86 "= (s = 86); 
 label " prob_f17_s87 " = (s = 87); 
 label " prob_f17_s88 " = (s = 88); 
 
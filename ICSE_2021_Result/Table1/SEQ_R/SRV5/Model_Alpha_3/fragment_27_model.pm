dtmc
     //const double p11; 
  // const double p24;  
  // const double r24;  
  // const double y1;  
  // const double y2;  
 
 const double P27_28_1;// = (((-1)*p24+1)); 
  const double P27_28_3 ;// = (( (p24) ) * ( ((-1)*y1-y2+1) ));
  const double P27_28_4 ;// = (( (p24) ) * ( (y1) ));
  const double P27_28_5 ;// = (( (p24) ) * ( ( (y2) ) * ( (p11) ) ));
  const double P27_28_6 ;// = (( (p24) ) * ( ( (y2) ) * ( ((-1)*p11+1) ) ));
 const double P27_59_2;// = ((r24)); 
  const double P27_59_7 ;// = (((-1)*r24+1));

module f27 
s : [28 .. 132] init 28; 
 
 [] s=28 -> (P27_28_1):(s'=59) + (P27_28_3):(s'=128) + (P27_28_4):(s'=129) + (P27_28_5):(s'=130) + (P27_28_6):(s'=131); 
 [] s=59 -> (P27_59_2):(s'=28) + (P27_59_7):(s'=132); 
 [] s=128 -> true; 
 [] s=129 -> true; 
 [] s=130 -> true; 
 [] s=131 -> true; 
 [] s=132 -> true; 
 
endmodule
label " prob_f27_s128 "= (s = 128); 
 label " prob_f27_s129 " = (s = 129); 
 label " prob_f27_s130 " = (s = 130); 
 label " prob_f27_s131 " = (s = 131); 
 label " prob_f27_s132 " = (s = 132); 
 
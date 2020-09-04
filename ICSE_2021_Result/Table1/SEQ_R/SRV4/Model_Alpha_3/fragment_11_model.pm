dtmc
   //const double p61; 
  // const double p52;  
  // const double r52;  
 
 const double P11_13_1;// = (((-1)*p52+1)); 
  const double P11_13_3 ;// = (( (p52) ) * ( (p61) ));
  const double P11_13_4 ;// = (( (p52) ) * ( ((-1)*p61+1) ));
 const double P11_38_2;// = ((r52)); 
  const double P11_38_5 ;// = (((-1)*r52+1));

module f11 
s : [13 .. 73] init 13; 
 
 [] s=13 -> (P11_13_1):(s'=38) + (P11_13_3):(s'=71) + (P11_13_4):(s'=72); 
 [] s=38 -> (P11_38_2):(s'=13) + (P11_38_5):(s'=73); 
 [] s=71 -> true; 
 [] s=72 -> true; 
 [] s=73 -> true; 
 
endmodule
label " prob_f11_s71 "= (s = 71); 
 label " prob_f11_s72 " = (s = 72); 
 label " prob_f11_s73 " = (s = 73); 
 
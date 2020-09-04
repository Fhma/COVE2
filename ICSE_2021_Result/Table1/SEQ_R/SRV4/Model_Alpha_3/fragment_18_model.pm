dtmc
   //const double p33; 
  // const double r33;  
  // const double p61;  
 
 const double P18_20_1;// = (((-1)*p33+1)); 
  const double P18_20_3 ;// = (( (p33) ) * ( (p61) ));
  const double P18_20_4 ;// = (( (p33) ) * ( ((-1)*p61+1) ));
 const double P18_45_2;// = ((r33)); 
  const double P18_45_5 ;// = (((-1)*r33+1));

module f18 
s : [20 .. 91] init 20; 
 
 [] s=20 -> (P18_20_1):(s'=45) + (P18_20_3):(s'=89) + (P18_20_4):(s'=90); 
 [] s=45 -> (P18_45_2):(s'=20) + (P18_45_5):(s'=91); 
 [] s=89 -> true; 
 [] s=90 -> true; 
 [] s=91 -> true; 
 
endmodule
label " prob_f18_s89 "= (s = 89); 
 label " prob_f18_s90 " = (s = 90); 
 label " prob_f18_s91 " = (s = 91); 
 
dtmc
  //const double r65; 
  // const double p65;  
 
 const double P11_13_1;// = (((-1)*p65+1)); 
  const double P11_13_3 ;// = ((p65));
 const double P11_44_2;// = ((r65)); 
  const double P11_44_4 ;// = (((-1)*r65+1));

module f11 
s : [13 .. 84] init 13; 
 
 [] s=13 -> (P11_13_1):(s'=44) + (P11_13_3):(s'=83); 
 [] s=44 -> (P11_44_2):(s'=13) + (P11_44_4):(s'=84); 
 [] s=83 -> true; 
 [] s=84 -> true; 
 
endmodule
label " prob_f11_s83 "= (s = 83); 
 label " prob_f11_s84 " = (s = 84); 
 
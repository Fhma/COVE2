dtmc
  //const double p61; 
  // const double p62;  
 
 const double P2_6_1;// = ((p62*p61)); 
  const double P2_6_2 ;// = (((-1)*p62*p61+p61));
  const double P2_6_3 ;// = (((-1)*p62*p61+p62));
  const double P2_6_4 ;// = ((p62*p61-p61-p62+1));

module f2 
s : [6 .. 39] init 6; 
 
 [] s=6 -> (P2_6_1):(s'=36) + (P2_6_2):(s'=37) + (P2_6_3):(s'=38) + (P2_6_4):(s'=39); 
 [] s=36 -> true; 
 [] s=37 -> true; 
 [] s=38 -> true; 
 [] s=39 -> true; 
 
endmodule
label " prob_f2_s36 "= (s = 36); 
 label " prob_f2_s37 " = (s = 37); 
 label " prob_f2_s38 " = (s = 38); 
 label " prob_f2_s39 " = (s = 39); 
 
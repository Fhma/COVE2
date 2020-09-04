dtmc
  //const double p61; 
  // const double r61;  
 
 const double P2_6_1;// = (((-1)*p61+1)); 
  const double P2_6_3 ;// = ((p61));
 const double P2_27_2;// = ((r61)); 
  const double P2_27_4 ;// = (((-1)*r61+1));

module f2 
s : [6 .. 45] init 6; 
 
 [] s=6 -> (P2_6_1):(s'=27) + (P2_6_3):(s'=44); 
 [] s=27 -> (P2_27_2):(s'=6) + (P2_27_4):(s'=45); 
 [] s=44 -> true; 
 [] s=45 -> true; 
 
endmodule
label " prob_f2_s44 "= (s = 44); 
 label " prob_f2_s45 " = (s = 45); 
 
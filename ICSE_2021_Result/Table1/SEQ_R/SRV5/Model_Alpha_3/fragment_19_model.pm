dtmc
  //const double p45; 
  // const double r45;  
 
 const double P19_21_1;// = (((-1)*p45+1)); 
  const double P19_21_3 ;// = ((p45));
 const double P19_52_2;// = ((r45)); 
  const double P19_52_4 ;// = (((-1)*r45+1));

module f19 
s : [21 .. 104] init 21; 
 
 [] s=21 -> (P19_21_1):(s'=52) + (P19_21_3):(s'=103); 
 [] s=52 -> (P19_52_2):(s'=21) + (P19_52_4):(s'=104); 
 [] s=103 -> true; 
 [] s=104 -> true; 
 
endmodule
label " prob_f19_s103 "= (s = 103); 
 label " prob_f19_s104 " = (s = 104); 
 
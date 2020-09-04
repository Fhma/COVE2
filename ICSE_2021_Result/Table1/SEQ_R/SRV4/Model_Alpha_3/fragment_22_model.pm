dtmc
     //const double p23; 
  // const double p11;  
  // const double r23;  
  // const double y1;  
  // const double y2;  
 
 const double P22_23_1;// = (((-1)*p23+1)); 
  const double P22_23_3 ;// = (( (p23) ) * ( ((-1)*y1-y2+1) ));
  const double P22_23_4 ;// = (( (p23) ) * ( (y1) ));
  const double P22_23_5 ;// = (( (p23) ) * ( ( (y2) ) * ( (p11) ) ));
  const double P22_23_6 ;// = (( (p23) ) * ( ( (y2) ) * ( ((-1)*p11+1) ) ));
 const double P22_48_2;// = ((r23)); 
  const double P22_48_7 ;// = (((-1)*r23+1));

module f22 
s : [23 .. 105] init 23; 
 
 [] s=23 -> (P22_23_1):(s'=48) + (P22_23_3):(s'=101) + (P22_23_4):(s'=102) + (P22_23_5):(s'=103) + (P22_23_6):(s'=104); 
 [] s=48 -> (P22_48_2):(s'=23) + (P22_48_7):(s'=105); 
 [] s=101 -> true; 
 [] s=102 -> true; 
 [] s=103 -> true; 
 [] s=104 -> true; 
 [] s=105 -> true; 
 
endmodule
label " prob_f22_s101 "= (s = 101); 
 label " prob_f22_s102 " = (s = 102); 
 label " prob_f22_s103 " = (s = 103); 
 label " prob_f22_s104 " = (s = 104); 
 label " prob_f22_s105 " = (s = 105); 
 
dtmc
    //const double p50; 
  // const double p52;  
  // const double p51;  
  // const double p53;  
 
 const double P30_65_1;// = ((p50)); 
  const double P30_65_2 ;// = (((-1)*p50+1));
 const double P30_66_3;// = ((p51)); 
  const double P30_66_4 ;// = (((-1)*p51+1));
 const double P30_67_5;// = ((p52)); 
  const double P30_67_10 ;// = (((-1)*p52+1));
 const double P30_68_6;// = ((p53)); 
  const double P30_68_9 ;// = (((-1)*p53+1));

module f30 
s : [65 .. 138] init 65; 
 
 [] s=65 -> (P30_65_1):(s'=66) + (P30_65_2):(s'=71); 
 [] s=66 -> (P30_66_3):(s'=67) + (P30_66_4):(s'=70); 
 [] s=67 -> (P30_67_5):(s'=68) + (P30_67_10):(s'=138); 
 [] s=68 -> (P30_68_6):(s'=69) + (P30_68_9):(s'=137); 
 [] s=69 -> ((1)):(s'=66); 
 [] s=70 -> ((1)):(s'=65); 
 [] s=71 -> true; 
 [] s=137 -> true; 
 [] s=138 -> true; 
 
endmodule
label " prob_f30_s71 "= (s = 71); 
 label " prob_f30_s137 " = (s = 137); 
 label " prob_f30_s138 " = (s = 138); 
 
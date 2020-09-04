dtmc
  //const double p13; 
  // const double r13;  
 
 const double P30_31_1;// = (((-1)*p13+1)); 
  const double P30_31_3 ;// = ((p13));
 const double P30_62_2;// = ((r13)); 
  const double P30_62_4 ;// = (((-1)*r13+1));

module f30 
s : [31 .. 141] init 31; 
 
 [] s=31 -> (P30_31_1):(s'=62) + (P30_31_3):(s'=140); 
 [] s=62 -> (P30_62_2):(s'=31) + (P30_62_4):(s'=141); 
 [] s=140 -> true; 
 [] s=141 -> true; 
 
endmodule
label " prob_f30_s140 "= (s = 140); 
 label " prob_f30_s141 " = (s = 141); 
 
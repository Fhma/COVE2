dtmc
  //const double p14; 
  // const double r14;  
 
 const double P31_32_1;// = (((-1)*p14+1)); 
  const double P31_32_3 ;// = ((p14));
 const double P31_63_2;// = ((r14)); 
  const double P31_63_4 ;// = (((-1)*r14+1));

module f31 
s : [32 .. 143] init 32; 
 
 [] s=32 -> (P31_32_1):(s'=63) + (P31_32_3):(s'=142); 
 [] s=63 -> (P31_63_2):(s'=32) + (P31_63_4):(s'=143); 
 [] s=142 -> true; 
 [] s=143 -> true; 
 
endmodule
label " prob_f31_s142 "= (s = 142); 
 label " prob_f31_s143 " = (s = 143); 
 
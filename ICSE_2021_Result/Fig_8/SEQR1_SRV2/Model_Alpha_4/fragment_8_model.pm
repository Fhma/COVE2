dtmc
  //const double r32; 
  // const double p32;  
 
 const double P8_13_1;// = (((-1)*p32+1)); 
  const double P8_13_3 ;// = ((p32));
 const double P8_26_2;// = ((r32)); 
  const double P8_26_4 ;// = (((-1)*r32+1));

module f8 
s : [13 .. 46] init 13; 
 
 [] s=13 -> (P8_13_1):(s'=26) + (P8_13_3):(s'=45); 
 [] s=26 -> (P8_26_2):(s'=13) + (P8_26_4):(s'=46); 
 [] s=45 -> true; 
 [] s=46 -> true; 
 
endmodule
label " prob_f8_s45 "= (s = 45); 
 label " prob_f8_s46 " = (s = 46); 
 
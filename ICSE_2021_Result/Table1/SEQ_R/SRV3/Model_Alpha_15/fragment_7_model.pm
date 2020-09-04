dtmc
  //const double r32; 
  // const double p32;  
 
 const double P7_16_1;// = (((-1)*p32+1)); 
  const double P7_16_3 ;// = ((p32));
 const double P7_35_2;// = ((r32)); 
  const double P7_35_4 ;// = (((-1)*r32+1));

module f7 
s : [16 .. 55] init 16; 
 
 [] s=16 -> (P7_16_1):(s'=35) + (P7_16_3):(s'=54); 
 [] s=35 -> (P7_35_2):(s'=16) + (P7_35_4):(s'=55); 
 [] s=54 -> true; 
 [] s=55 -> true; 
 
endmodule
label " prob_f7_s54 "= (s = 54); 
 label " prob_f7_s55 " = (s = 55); 
 
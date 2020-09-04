dtmc
  //const double r32; 
  // const double p32;  
 
 const double P5_13_1;// = (((-1)*p32+1)); 
  const double P5_13_3 ;// = ((p32));
 const double P5_26_2;// = ((r32)); 
  const double P5_26_4 ;// = (((-1)*r32+1));

module f5 
s : [13 .. 40] init 13; 
 
 [] s=13 -> (P5_13_1):(s'=26) + (P5_13_3):(s'=39); 
 [] s=26 -> (P5_26_2):(s'=13) + (P5_26_4):(s'=40); 
 [] s=39 -> true; 
 [] s=40 -> true; 
 
endmodule
label " prob_f5_s39 "= (s = 39); 
 label " prob_f5_s40 " = (s = 40); 
 
dtmc
  //const double p14; 
  // const double r14;  
 
 const double P26_27_1;// = (((-1)*p14+1)); 
  const double P26_27_3 ;// = ((p14));
 const double P26_52_2;// = ((r14)); 
  const double P26_52_4 ;// = (((-1)*r14+1));

module f26 
s : [27 .. 116] init 27; 
 
 [] s=27 -> (P26_27_1):(s'=52) + (P26_27_3):(s'=115); 
 [] s=52 -> (P26_52_2):(s'=27) + (P26_52_4):(s'=116); 
 [] s=115 -> true; 
 [] s=116 -> true; 
 
endmodule
label " prob_f26_s115 "= (s = 115); 
 label " prob_f26_s116 " = (s = 116); 
 
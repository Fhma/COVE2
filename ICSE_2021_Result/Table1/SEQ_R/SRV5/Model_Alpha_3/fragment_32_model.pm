dtmc
  //const double p15; 
  // const double r15;  
 
 const double P32_33_1;// = (((-1)*p15+1)); 
  const double P32_33_3 ;// = ((p15));
 const double P32_64_2;// = ((r15)); 
  const double P32_64_4 ;// = (((-1)*r15+1));

module f32 
s : [33 .. 145] init 33; 
 
 [] s=33 -> (P32_33_1):(s'=64) + (P32_33_3):(s'=144); 
 [] s=64 -> (P32_64_2):(s'=33) + (P32_64_4):(s'=145); 
 [] s=144 -> true; 
 [] s=145 -> true; 
 
endmodule
label " prob_f32_s144 "= (s = 144); 
 label " prob_f32_s145 " = (s = 145); 
 
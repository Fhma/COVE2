dtmc
  //const double p62; 
  // const double r62;  
 
 const double P3_10_1;// = (((-1)*p62+1)); 
  const double P3_10_3 ;// = ((p62));
 const double P3_29_2;// = ((r62)); 
  const double P3_29_4 ;// = (((-1)*r62+1));

module f3 
s : [10 .. 47] init 10; 
 
 [] s=10 -> (P3_10_1):(s'=29) + (P3_10_3):(s'=46); 
 [] s=29 -> (P3_29_2):(s'=10) + (P3_29_4):(s'=47); 
 [] s=46 -> true; 
 [] s=47 -> true; 
 
endmodule
label " prob_f3_s46 "= (s = 46); 
 label " prob_f3_s47 " = (s = 47); 
 
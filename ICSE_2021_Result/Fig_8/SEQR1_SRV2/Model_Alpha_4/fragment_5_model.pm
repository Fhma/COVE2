dtmc
  //const double p62; 
  // const double r62;  
 
 const double P5_10_1;// = (((-1)*p62+1)); 
  const double P5_10_3 ;// = ((p62));
 const double P5_23_2;// = ((r62)); 
  const double P5_23_4 ;// = (((-1)*r62+1));

module f5 
s : [10 .. 40] init 10; 
 
 [] s=10 -> (P5_10_1):(s'=23) + (P5_10_3):(s'=39); 
 [] s=23 -> (P5_23_2):(s'=10) + (P5_23_4):(s'=40); 
 [] s=39 -> true; 
 [] s=40 -> true; 
 
endmodule
label " prob_f5_s39 "= (s = 39); 
 label " prob_f5_s40 " = (s = 40); 
 
dtmc
  //const double p13; 
  // const double r13;  
 
 const double P25_26_1;// = (((-1)*p13+1)); 
  const double P25_26_3 ;// = ((p13));
 const double P25_51_2;// = ((r13)); 
  const double P25_51_4 ;// = (((-1)*r13+1));

module f25 
s : [26 .. 114] init 26; 
 
 [] s=26 -> (P25_26_1):(s'=51) + (P25_26_3):(s'=113); 
 [] s=51 -> (P25_51_2):(s'=26) + (P25_51_4):(s'=114); 
 [] s=113 -> true; 
 [] s=114 -> true; 
 
endmodule
label " prob_f25_s113 "= (s = 113); 
 label " prob_f25_s114 " = (s = 114); 
 
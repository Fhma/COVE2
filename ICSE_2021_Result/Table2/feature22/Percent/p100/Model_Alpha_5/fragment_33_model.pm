dtmc
  //const double p56; 
  // const double p70;  
 
 const double P33_77_1;// = ((p56)); 
  const double P33_77_2 ;// = (((-1)*p56+1));
 const double P33_91_3;// = ((p70)); 
  const double P33_91_4 ;// = (((-1)*p70+1));

module f33 
s : [77 .. 108] init 77; 
 
 [] s=77 -> (P33_77_1):(s'=78) + (P33_77_2):(s'=91); 
 [] s=78 -> true; 
 [] s=91 -> (P33_91_3):(s'=92) + (P33_91_4):(s'=108); 
 [] s=92 -> ((1)):(s'=93); 
 [] s=93 -> ((1)):(s'=91); 
 [] s=108 -> true; 
 
endmodule
label " prob_f33_s78 "= (s = 78); 
 label " prob_f33_s108 " = (s = 108); 
 
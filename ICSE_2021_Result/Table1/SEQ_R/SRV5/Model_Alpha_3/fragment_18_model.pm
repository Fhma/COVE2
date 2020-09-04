dtmc
  //const double p44; 
  // const double r44;  
 
 const double P18_20_1;// = (((-1)*p44+1)); 
  const double P18_20_3 ;// = ((p44));
 const double P18_51_2;// = ((r44)); 
  const double P18_51_4 ;// = (((-1)*r44+1));

module f18 
s : [20 .. 102] init 20; 
 
 [] s=20 -> (P18_20_1):(s'=51) + (P18_20_3):(s'=101); 
 [] s=51 -> (P18_51_2):(s'=20) + (P18_51_4):(s'=102); 
 [] s=101 -> true; 
 [] s=102 -> true; 
 
endmodule
label " prob_f18_s101 "= (s = 101); 
 label " prob_f18_s102 " = (s = 102); 
 
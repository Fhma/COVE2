dtmc
 //const double p51; 
 
 const double P5_14_1;// = ((p51)); 
  const double P5_14_2 ;// = (((-1)*p51+1));

module f5 
s : [14 .. 53] init 14; 
 
 [] s=14 -> (P5_14_1):(s'=48) + (P5_14_2):(s'=53); 
 [] s=48 -> true; 
 [] s=53 -> true; 
 
endmodule
label " prob_f5_s48 "= (s = 48); 
 label " prob_f5_s53 " = (s = 53); 
 
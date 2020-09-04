dtmc
 //const double p51; 
 
 const double P5_13_1;// = ((p51)); 
  const double P5_13_2 ;// = (((-1)*p51+1));

module f5 
s : [13 .. 45] init 13; 
 
 [] s=13 -> (P5_13_1):(s'=41) + (P5_13_2):(s'=45); 
 [] s=41 -> true; 
 [] s=45 -> true; 
 
endmodule
label " prob_f5_s41 "= (s = 41); 
 label " prob_f5_s45 " = (s = 45); 
 
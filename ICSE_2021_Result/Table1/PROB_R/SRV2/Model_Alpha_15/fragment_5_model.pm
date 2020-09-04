dtmc
 //const double p51; 
 
 const double P5_12_1;// = ((p51)); 
  const double P5_12_2 ;// = (((-1)*p51+1));

module f5 
s : [12 .. 37] init 12; 
 
 [] s=12 -> (P5_12_1):(s'=34) + (P5_12_2):(s'=37); 
 [] s=34 -> true; 
 [] s=37 -> true; 
 
endmodule
label " prob_f5_s34 "= (s = 34); 
 label " prob_f5_s37 " = (s = 37); 
 
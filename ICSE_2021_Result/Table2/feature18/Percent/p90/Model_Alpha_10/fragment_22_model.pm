dtmc
 //const double p51; 
 
 const double P22_64_1;// = ((p51)); 
  const double P22_64_2 ;// = (((-1)*p51+1));

module f22 
s : [64 .. 70] init 64; 
 
 [] s=64 -> (P22_64_1):(s'=65) + (P22_64_2):(s'=70); 
 [] s=65 -> true; 
 [] s=70 -> true; 
 
endmodule
label " prob_f22_s65 "= (s = 65); 
 label " prob_f22_s70 " = (s = 70); 
 
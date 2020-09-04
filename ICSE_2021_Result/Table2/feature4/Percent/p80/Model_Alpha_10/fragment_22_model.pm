dtmc
 //const double p41; 
 
 const double P22_51_1;// = ((p41)); 
  const double P22_51_2 ;// = (((-1)*p41+1));

module f22 
s : [51 .. 55] init 51; 
 
 [] s=51 -> (P22_51_1):(s'=52) + (P22_51_2):(s'=55); 
 [] s=52 -> true; 
 [] s=55 -> true; 
 
endmodule
label " prob_f22_s52 "= (s = 52); 
 label " prob_f22_s55 " = (s = 55); 
 
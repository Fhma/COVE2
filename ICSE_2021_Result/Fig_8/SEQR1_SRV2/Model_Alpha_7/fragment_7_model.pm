dtmc
  //const double p51; 
  // const double r51;  
 
 const double P7_20_1;// = (( (r51) ) * ( ((-1)*p51+1) )); 
  const double P7_20_2 ;// = (((-1)*r51+1));
  const double P7_20_3 ;// = (( (r51) ) * ( (p51) ));

module f7 
s : [20 .. 44] init 20; 
 
 [] s=20 -> (P7_20_1):(s'=20) + (P7_20_2):(s'=43) + (P7_20_3):(s'=44); 
 [] s=43 -> true; 
 [] s=44 -> true; 
 
endmodule
label " prob_f7_s43 "= (s = 43); 
 label " prob_f7_s44 " = (s = 44); 
 
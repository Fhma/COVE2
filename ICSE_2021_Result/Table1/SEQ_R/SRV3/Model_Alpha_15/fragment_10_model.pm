dtmc
  //const double p51; 
  // const double r51;  
 
 const double P10_26_1;// = (( (r51) ) * ( ((-1)*p51+1) )); 
  const double P10_26_2 ;// = (((-1)*r51+1));
  const double P10_26_3 ;// = (( (r51) ) * ( (p51) ));

module f10 
s : [26 .. 61] init 26; 
 
 [] s=26 -> (P10_26_1):(s'=26) + (P10_26_2):(s'=60) + (P10_26_3):(s'=61); 
 [] s=60 -> true; 
 [] s=61 -> true; 
 
endmodule
label " prob_f10_s60 "= (s = 60); 
 label " prob_f10_s61 " = (s = 61); 
 
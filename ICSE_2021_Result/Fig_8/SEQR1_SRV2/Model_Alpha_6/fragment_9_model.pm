dtmc
  //const double r31; 
  // const double p31;  
 
 const double P9_18_1;// = (( (r31) ) * ( ((-1)*p31+1) )); 
  const double P9_18_2 ;// = (((-1)*r31+1));
  const double P9_18_3 ;// = (( (r31) ) * ( (p31) ));

module f9 
s : [18 .. 48] init 18; 
 
 [] s=18 -> (P9_18_1):(s'=18) + (P9_18_2):(s'=47) + (P9_18_3):(s'=48); 
 [] s=47 -> true; 
 [] s=48 -> true; 
 
endmodule
label " prob_f9_s47 "= (s = 47); 
 label " prob_f9_s48 " = (s = 48); 
 
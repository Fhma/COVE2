dtmc
  //const double r31; 
  // const double p31;  
 
 const double P6_18_1;// = (( (r31) ) * ( ((-1)*p31+1) )); 
  const double P6_18_2 ;// = (((-1)*r31+1));
  const double P6_18_3 ;// = (( (r31) ) * ( (p31) ));

module f6 
s : [18 .. 42] init 18; 
 
 [] s=18 -> (P6_18_1):(s'=18) + (P6_18_2):(s'=41) + (P6_18_3):(s'=42); 
 [] s=41 -> true; 
 [] s=42 -> true; 
 
endmodule
label " prob_f6_s41 "= (s = 41); 
 label " prob_f6_s42 " = (s = 42); 
 
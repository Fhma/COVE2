dtmc
 //const double p44; 
 
 const double P26_51_1;// = (((-1)*p44+1)); 
  const double P26_51_2 ;// = ((p44));

module f26 
s : [51 .. 140] init 51; 
 
 [] s=51 -> (P26_51_1):(s'=135) + (P26_51_2):(s'=140); 
 [] s=135 -> true; 
 [] s=140 -> true; 
 
endmodule
label " prob_f26_s135 "= (s = 135); 
 label " prob_f26_s140 " = (s = 140); 
 
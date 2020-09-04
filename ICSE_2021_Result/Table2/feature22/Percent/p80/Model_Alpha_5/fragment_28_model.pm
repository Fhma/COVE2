dtmc
 //const double p46; 
 
 const double P28_61_1;// = ((p46)); 
  const double P28_61_2 ;// = (((-1)*p46+1));

module f28 
s : [61 .. 135] init 61; 
 
 [] s=61 -> (P28_61_1):(s'=62) + (P28_61_2):(s'=135); 
 [] s=62 -> true; 
 [] s=135 -> true; 
 
endmodule
label " prob_f28_s62 "= (s = 62); 
 label " prob_f28_s135 " = (s = 135); 
 
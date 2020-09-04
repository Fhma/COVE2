dtmc
 //const double p35; 
 
 const double P21_42_1;// = ((p35)); 
  const double P21_42_2 ;// = (((-1)*p35+1));

module f21 
s : [42 .. 45] init 42; 
 
 [] s=42 -> (P21_42_1):(s'=43) + (P21_42_2):(s'=45); 
 [] s=43 -> true; 
 [] s=45 -> true; 
 
endmodule
label " prob_f21_s43 "= (s = 43); 
 label " prob_f21_s45 " = (s = 45); 
 
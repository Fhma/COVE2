dtmc
  //const double r43; 
  // const double p43;  
 
 const double P15_17_1;// = (((-1)*p43+1)); 
  const double P15_17_3 ;// = ((p43));
 const double P15_42_2;// = ((r43)); 
  const double P15_42_4 ;// = (((-1)*r43+1));

module f15 
s : [17 .. 83] init 17; 
 
 [] s=17 -> (P15_17_1):(s'=42) + (P15_17_3):(s'=82); 
 [] s=42 -> (P15_42_2):(s'=17) + (P15_42_4):(s'=83); 
 [] s=82 -> true; 
 [] s=83 -> true; 
 
endmodule
label " prob_f15_s82 "= (s = 82); 
 label " prob_f15_s83 " = (s = 83); 
 
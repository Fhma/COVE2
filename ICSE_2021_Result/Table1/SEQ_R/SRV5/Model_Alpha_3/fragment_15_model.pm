dtmc
   //const double p55; 
  // const double r55;  
  // const double p61;  
 
 const double P15_17_1;// = (((-1)*p55+1)); 
  const double P15_17_3 ;// = (( (p55) ) * ( (p61) ));
  const double P15_17_4 ;// = (( (p55) ) * ( ((-1)*p61+1) ));
 const double P15_48_2;// = ((r55)); 
  const double P15_48_5 ;// = (((-1)*r55+1));

module f15 
s : [17 .. 96] init 17; 
 
 [] s=17 -> (P15_17_1):(s'=48) + (P15_17_3):(s'=94) + (P15_17_4):(s'=95); 
 [] s=48 -> (P15_48_2):(s'=17) + (P15_48_5):(s'=96); 
 [] s=94 -> true; 
 [] s=95 -> true; 
 [] s=96 -> true; 
 
endmodule
label " prob_f15_s94 "= (s = 94); 
 label " prob_f15_s95 " = (s = 95); 
 label " prob_f15_s96 " = (s = 96); 
 
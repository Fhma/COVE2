dtmc
      //const double p14; 
  // const double p16;  
  // const double p15;  
  // const double p18;  
  // const double p17;  
  // const double p19;  
 
 const double P13_17_1;// = ((p14)); 
  const double P13_17_2 ;// = (((-1)*p14+1));
 const double P13_18_3;// = ((p15)); 
  const double P13_18_4 ;// = (((-1)*p15+1));
 const double P13_19_5;// = ((p16)); 
  const double P13_19_12 ;// = (((-1)*p16+1));
 const double P13_20_6;// = ((p17)); 
  const double P13_20_11 ;// = (((-1)*p17+1));
 const double P13_22_8;// = ((p18)); 
  const double P13_22_13 ;// = (((-1)*p18+1));
 const double P13_23_9;// = ((p19)); 
  const double P13_23_10 ;// = (((-1)*p19+1));

module f13 
s : [17 .. 109] init 17; 
 
 [] s=17 -> (P13_17_1):(s'=18) + (P13_17_2):(s'=22); 
 [] s=18 -> (P13_18_3):(s'=19) + (P13_18_4):(s'=24); 
 [] s=19 -> (P13_19_5):(s'=20) + (P13_19_12):(s'=108); 
 [] s=20 -> (P13_20_6):(s'=21) + (P13_20_11):(s'=105); 
 [] s=21 -> ((1)):(s'=18); 
 [] s=22 -> (P13_22_8):(s'=23) + (P13_22_13):(s'=109); 
 [] s=23 -> (P13_23_9):(s'=24) + (P13_23_10):(s'=99); 
 [] s=24 -> true; 
 [] s=99 -> true; 
 [] s=105 -> true; 
 [] s=108 -> true; 
 [] s=109 -> true; 
 
endmodule
label " prob_f13_s24 "= (s = 24); 
 label " prob_f13_s99 " = (s = 99); 
 label " prob_f13_s105 " = (s = 105); 
 label " prob_f13_s108 " = (s = 108); 
 label " prob_f13_s109 " = (s = 109); 
 
dtmc
    //const double p23; 
  // const double p25;  
  // const double p24;  
  // const double p26;  
 
 const double P16_33_1;// = ((p23)); 
  const double P16_33_2 ;// = (((-1)*p23+1));
 const double P16_34_3;// = ((p24)); 
  const double P16_34_4 ;// = (((-1)*p24+1));
 const double P16_35_5;// = ((p25)); 
  const double P16_35_9 ;// = (((-1)*p25+1));
 const double P16_36_6;// = ((p26)); 
  const double P16_36_8 ;// = (((-1)*p26+1));

module f16 
s : [33 .. 125] init 33; 
 
 [] s=33 -> (P16_33_1):(s'=34) + (P16_33_2):(s'=44); 
 [] s=34 -> (P16_34_3):(s'=35) + (P16_34_4):(s'=38); 
 [] s=35 -> (P16_35_5):(s'=36) + (P16_35_9):(s'=125); 
 [] s=36 -> (P16_36_6):(s'=37) + (P16_36_8):(s'=124); 
 [] s=37 -> ((1)):(s'=34); 
 [] s=38 -> true; 
 [] s=44 -> true; 
 [] s=124 -> true; 
 [] s=125 -> true; 
 
endmodule
label " prob_f16_s38 "= (s = 38); 
 label " prob_f16_s44 " = (s = 44); 
 label " prob_f16_s124 " = (s = 124); 
 label " prob_f16_s125 " = (s = 125); 
 
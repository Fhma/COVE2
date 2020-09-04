dtmc
   //const double p34; 
  // const double r34;  
  // const double p61;  
 
 const double P22_24_1;// = (((-1)*p34+1)); 
  const double P22_24_3 ;// = (( (p34) ) * ( (p61) ));
  const double P22_24_4 ;// = (( (p34) ) * ( ((-1)*p61+1) ));
 const double P22_55_2;// = ((r34)); 
  const double P22_55_5 ;// = (((-1)*r34+1));

module f22 
s : [24 .. 113] init 24; 
 
 [] s=24 -> (P22_24_1):(s'=55) + (P22_24_3):(s'=111) + (P22_24_4):(s'=112); 
 [] s=55 -> (P22_55_2):(s'=24) + (P22_55_5):(s'=113); 
 [] s=111 -> true; 
 [] s=112 -> true; 
 [] s=113 -> true; 
 
endmodule
label " prob_f22_s111 "= (s = 111); 
 label " prob_f22_s112 " = (s = 112); 
 label " prob_f22_s113 " = (s = 113); 
 
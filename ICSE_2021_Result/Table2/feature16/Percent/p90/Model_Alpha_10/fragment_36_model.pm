dtmc
   //const double p68; 
  // const double p74;  
  // const double p75;  
 
 const double P36_89_1;// = ((p68)); 
  const double P36_89_2 ;// = (((-1)*p68+1));
 const double P36_95_3;// = ((p74)); 
  const double P36_95_7 ;// = (((-1)*p74+1));
 const double P36_96_4;// = ((p75)); 
  const double P36_96_9 ;// = (((-1)*p75+1));

module f36 
s : [89 .. 153] init 89; 
 
 [] s=89 -> (P36_89_1):(s'=90) + (P36_89_2):(s'=95); 
 [] s=90 -> true; 
 [] s=95 -> (P36_95_3):(s'=96) + (P36_95_7):(s'=151); 
 [] s=96 -> (P36_96_4):(s'=97) + (P36_96_9):(s'=153); 
 [] s=97 -> ((1997/2000)):(s'=98) + ((3/2000)):(s'=152); 
 [] s=98 -> ((1)):(s'=95); 
 [] s=151 -> true; 
 [] s=152 -> true; 
 [] s=153 -> true; 
 
endmodule
label " prob_f36_s90 "= (s = 90); 
 label " prob_f36_s151 " = (s = 151); 
 label " prob_f36_s152 " = (s = 152); 
 label " prob_f36_s153 " = (s = 153); 
 
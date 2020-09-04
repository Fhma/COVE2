dtmc
        //const double p81; 
  // const double p80;  
  // const double p82;  
  // const double p76;  
  // const double p75;  
  // const double p78;  
  // const double p77;  
  // const double p79;  
 
 const double P43_98_1;// = ((p75)); 
  const double P43_98_12 ;// = (( ((-1)*p75+1) ) * ( (1) ));
 const double P43_99_2;// = ((p76)); 
  const double P43_99_3 ;// = (((-1)*p76+1));
 const double P43_100_4;// = ((p77)); 
  const double P43_100_18 ;// = (((-1)*p77+1));
 const double P43_101_5;// = ((p78)); 
  const double P43_101_16 ;// = (((-1)*p78+1));
 const double P43_102_6;// = ((p79)); 
  const double P43_102_17 ;// = (((-1)*p79+1));
 const double P43_103_7;// = ((p80)); 
  const double P43_103_15 ;// = (((-1)*p80+1));
 const double P43_104_8;// = ((p81)); 
  const double P43_104_14 ;// = (((-1)*p81+1));
 const double P43_105_9;// = ((p82)); 
  const double P43_105_13 ;// = (((-1)*p82+1));

module f43 
s : [98 .. 153] init 98; 
 
 [] s=98 -> (P43_98_1):(s'=99) + (P43_98_12):(s'=147); 
 [] s=99 -> (P43_99_2):(s'=100) + (P43_99_3):(s'=107); 
 [] s=100 -> (P43_100_4):(s'=101) + (P43_100_18):(s'=153); 
 [] s=101 -> (P43_101_5):(s'=102) + (P43_101_16):(s'=151); 
 [] s=102 -> (P43_102_6):(s'=103) + (P43_102_17):(s'=152); 
 [] s=103 -> (P43_103_7):(s'=104) + (P43_103_15):(s'=150); 
 [] s=104 -> (P43_104_8):(s'=105) + (P43_104_14):(s'=149); 
 [] s=105 -> (P43_105_9):(s'=106) + (P43_105_13):(s'=148); 
 [] s=106 -> ((1)):(s'=99); 
 [] s=107 -> ((1)):(s'=98); 
 [] s=147 -> true; 
 [] s=148 -> true; 
 [] s=149 -> true; 
 [] s=150 -> true; 
 [] s=151 -> true; 
 [] s=152 -> true; 
 [] s=153 -> true; 
 
endmodule
label " prob_f43_s147 "= (s = 147); 
 label " prob_f43_s148 " = (s = 148); 
 label " prob_f43_s149 " = (s = 149); 
 label " prob_f43_s150 " = (s = 150); 
 label " prob_f43_s151 " = (s = 151); 
 label " prob_f43_s152 " = (s = 152); 
 label " prob_f43_s153 " = (s = 153); 
 
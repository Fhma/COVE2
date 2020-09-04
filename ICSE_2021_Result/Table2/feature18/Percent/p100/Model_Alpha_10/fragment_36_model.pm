dtmc
         //const double p72; 
  // const double p71;  
  // const double p74;  
  // const double p73;  
  // const double p76;  
  // const double p75;  
  // const double p78;  
  // const double p77;  
  // const double p79;  
 
 const double P36_91_1;// = ((p71)); 
  const double P36_91_13 ;// = (((-1)*p71+1));
 const double P36_92_2;// = ((p72)); 
  const double P36_92_14 ;// = (((-1)*p72+1));
 const double P36_93_3;// = ((p73)); 
  const double P36_93_4 ;// = (((-1)*p73+1));
 const double P36_94_5;// = ((p74)); 
  const double P36_94_20 ;// = (((-1)*p74+1));
 const double P36_95_6;// = ((p75)); 
  const double P36_95_18 ;// = (((-1)*p75+1));
 const double P36_96_7;// = ((p76)); 
  const double P36_96_19 ;// = (((-1)*p76+1));
 const double P36_97_8;// = ((p77)); 
  const double P36_97_17 ;// = (((-1)*p77+1));
 const double P36_98_9;// = ((p78)); 
  const double P36_98_16 ;// = (((-1)*p78+1));
 const double P36_99_10;// = ((p79)); 
  const double P36_99_15 ;// = (((-1)*p79+1));

module f36 
s : [91 .. 150] init 91; 
 
 [] s=91 -> (P36_91_1):(s'=92) + (P36_91_13):(s'=143); 
 [] s=92 -> (P36_92_2):(s'=93) + (P36_92_14):(s'=144); 
 [] s=93 -> (P36_93_3):(s'=94) + (P36_93_4):(s'=101); 
 [] s=94 -> (P36_94_5):(s'=95) + (P36_94_20):(s'=150); 
 [] s=95 -> (P36_95_6):(s'=96) + (P36_95_18):(s'=148); 
 [] s=96 -> (P36_96_7):(s'=97) + (P36_96_19):(s'=149); 
 [] s=97 -> (P36_97_8):(s'=98) + (P36_97_17):(s'=147); 
 [] s=98 -> (P36_98_9):(s'=99) + (P36_98_16):(s'=146); 
 [] s=99 -> (P36_99_10):(s'=100) + (P36_99_15):(s'=145); 
 [] s=100 -> ((1)):(s'=93); 
 [] s=101 -> ((1)):(s'=92); 
 [] s=143 -> true; 
 [] s=144 -> true; 
 [] s=145 -> true; 
 [] s=146 -> true; 
 [] s=147 -> true; 
 [] s=148 -> true; 
 [] s=149 -> true; 
 [] s=150 -> true; 
 
endmodule
label " prob_f36_s143 "= (s = 143); 
 label " prob_f36_s144 " = (s = 144); 
 label " prob_f36_s145 " = (s = 145); 
 label " prob_f36_s146 " = (s = 146); 
 label " prob_f36_s147 " = (s = 147); 
 label " prob_f36_s148 " = (s = 148); 
 label " prob_f36_s149 " = (s = 149); 
 label " prob_f36_s150 " = (s = 150); 
 
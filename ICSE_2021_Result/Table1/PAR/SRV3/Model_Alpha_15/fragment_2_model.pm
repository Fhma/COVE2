dtmc
   //const double p61; 
  // const double p63;  
  // const double p62;  
 
 const double P2_6_1;// = ((p63*p62*p61)); 
  const double P2_6_2 ;// = (((-1)*p63*p62*p61+p62*p61));
  const double P2_6_3 ;// = (((-1)*p63*p62*p61+p63*p61));
  const double P2_6_4 ;// = ((p63*p62*p61-p62*p61-p63*p61+p61));
  const double P2_6_5 ;// = (((-1)*p63*p62*p61+p63*p62));
  const double P2_6_6 ;// = ((p63*p62*p61-p62*p61-p63*p62+p62));
  const double P2_6_7 ;// = ((p63*p62*p61-p63*p61-p63*p62+p63));
  const double P2_6_8 ;// = (((-1)*p63*p62*p61+p62*p61+p63*p61+p63*p62-p61-p62-p63+1));

module f2 
s : [6 .. 63] init 6; 
 
 [] s=6 -> (P2_6_1):(s'=56) + (P2_6_2):(s'=57) + (P2_6_3):(s'=58) + (P2_6_4):(s'=59) + (P2_6_5):(s'=60) + (P2_6_6):(s'=61) + (P2_6_7):(s'=62) + (P2_6_8):(s'=63); 
 [] s=56 -> true; 
 [] s=57 -> true; 
 [] s=58 -> true; 
 [] s=59 -> true; 
 [] s=60 -> true; 
 [] s=61 -> true; 
 [] s=62 -> true; 
 [] s=63 -> true; 
 
endmodule
label " prob_f2_s56 "= (s = 56); 
 label " prob_f2_s57 " = (s = 57); 
 label " prob_f2_s58 " = (s = 58); 
 label " prob_f2_s59 " = (s = 59); 
 label " prob_f2_s60 " = (s = 60); 
 label " prob_f2_s61 " = (s = 61); 
 label " prob_f2_s62 " = (s = 62); 
 label " prob_f2_s63 " = (s = 63); 
 
dtmc
  const double p61; 
  const double p63;  
  const double p62;  
  const double p64;  
 
 const double PX_6_1 = ((p64*p63*p62*p61)); 
  const double PX_6_2 = (((-1)*p64*p63*p62*p61+p63*p62*p61));
  const double PX_6_3 = (((-1)*p64*p63*p62*p61+p64*p62*p61));
  const double PX_6_4 = ((p64*p63*p62*p61-p63*p62*p61-p64*p62*p61+p62*p61));
  const double PX_6_5 = (((-1)*p64*p63*p62*p61+p64*p63*p61));
  const double PX_6_6 = ((p64*p63*p62*p61-p63*p62*p61-p64*p63*p61+p63*p61));
  const double PX_6_7 = ((p64*p63*p62*p61-p64*p62*p61-p64*p63*p61+p64*p61));
  const double PX_6_8 = (((-1)*p64*p63*p62*p61+p63*p62*p61+p64*p62*p61+p64*p63*p61-p62*p61-p63*p61-p64*p61+p61));
  const double PX_6_9 = (((-1)*p64*p63*p62*p61+p64*p63*p62));
  const double PX_6_10 = ((p64*p63*p62*p61-p63*p62*p61-p64*p63*p62+p63*p62));
  const double PX_6_11 = ((p64*p63*p62*p61-p64*p62*p61-p64*p63*p62+p64*p62));
  const double PX_6_12 = (((-1)*p64*p63*p62*p61+p63*p62*p61+p64*p62*p61+p64*p63*p62-p62*p61-p63*p62-p64*p62+p62));
  const double PX_6_13 = ((p64*p63*p62*p61-p64*p63*p61-p64*p63*p62+p64*p63));
  const double PX_6_14 = (((-1)*p64*p63*p62*p61+p63*p62*p61+p64*p63*p61+p64*p63*p62-p63*p61-p63*p62-p64*p63+p63));
  const double PX_6_15 = (((-1)*p64*p63*p62*p61+p64*p62*p61+p64*p63*p61+p64*p63*p62-p64*p61-p64*p62-p64*p63+p64));
  const double PX_6_16 = ((p64*p63*p62*p61-p63*p62*p61-p64*p62*p61-p64*p63*p61-p64*p63*p62+p62*p61+p63*p61+p64*p61+p63*p62+p64*p62+p64*p63-p61-p62-p63-p64+1));

module f2 
s : [6 .. 111] init 6; 
 
 [] s=6 -> (PX_6_1):(s'=96) + (PX_6_2):(s'=97) + (PX_6_3):(s'=98) + (PX_6_4):(s'=99) + (PX_6_5):(s'=100) + (PX_6_6):(s'=101) + (PX_6_7):(s'=102) + (PX_6_8):(s'=103) + (PX_6_9):(s'=104) + (PX_6_10):(s'=105) + (PX_6_11):(s'=106) + (PX_6_12):(s'=107) + (PX_6_13):(s'=108) + (PX_6_14):(s'=109) + (PX_6_15):(s'=110) + (PX_6_16):(s'=111); 
 [] s=96 -> true; 
 [] s=97 -> true; 
 [] s=98 -> true; 
 [] s=99 -> true; 
 [] s=100 -> true; 
 [] s=101 -> true; 
 [] s=102 -> true; 
 [] s=103 -> true; 
 [] s=104 -> true; 
 [] s=105 -> true; 
 [] s=106 -> true; 
 [] s=107 -> true; 
 [] s=108 -> true; 
 [] s=109 -> true; 
 [] s=110 -> true; 
 [] s=111 -> true; 
 
endmodule
label " prob_f2_s96 "= (s = 96); 
 label " prob_f2_s97 " = (s = 97); 
 label " prob_f2_s98 " = (s = 98); 
 label " prob_f2_s99 " = (s = 99); 
 label " prob_f2_s100 " = (s = 100); 
 label " prob_f2_s101 " = (s = 101); 
 label " prob_f2_s102 " = (s = 102); 
 label " prob_f2_s103 " = (s = 103); 
 label " prob_f2_s104 " = (s = 104); 
 label " prob_f2_s105 " = (s = 105); 
 label " prob_f2_s106 " = (s = 106); 
 label " prob_f2_s107 " = (s = 107); 
 label " prob_f2_s108 " = (s = 108); 
 label " prob_f2_s109 " = (s = 109); 
 label " prob_f2_s110 " = (s = 110); 
 label " prob_f2_s111 " = (s = 111); 
 
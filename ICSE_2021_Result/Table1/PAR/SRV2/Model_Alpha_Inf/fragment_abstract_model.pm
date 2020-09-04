dtmc
  const double prob_f2_s36; 
  const double prob_f2_s38; 
  const double prob_f2_s37; 
  const double p52; 
  const double p51; 
  const double p32; 
  const double p31; 
  const double prob_f1_s23; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f2_s39; 
  const double prob_f1_s19; 
  const double prob_f1_s31; 
 
 const double PX_0_1 ;// = (( (p32*p31) ) * ( prob_f1_s3 )); 
  const double PX_0_2 ;// = (( ((-1)*p32*p31+p31) ) * ( prob_f1_s3 ));
  const double PX_0_3 ;// = (( ((-1)*p32*p31+p32) ) * ( prob_f1_s3 ));
  const double PX_0_4 ;// = (( (p32*p31-p31-p32+1) ) * ( prob_f1_s3 ));
  const double PX_0_5 ;// = (( (p52*p51) ) * ( prob_f1_s5 ));
  const double PX_0_6 ;// = (( ((-1)*p52*p51+p51) ) * ( prob_f1_s5 ));
  const double PX_0_7 ;// = (( ((-1)*p52*p51+p52) ) * ( prob_f1_s5 ));
  const double PX_0_8 ;// = (( (p52*p51-p51-p52+1) ) * ( prob_f1_s5 ));
  const double PX_0_16 ;// = (( (1) ) * ( prob_f1_s19 ));
  const double PX_0_17 ;// = (( (1) ) * ( prob_f1_s23 ));
  const double PX_0_22 ;// = (( (1) ) * ( prob_f1_s31 ));
 const double PX_1_27 ;// = (  ( (1) ) * ( prob_f2_s36 ) + ( (1) ) * ( prob_f2_s37 )  + ( (1) ) * ( prob_f2_s38 ) ); 
  const double PX_1_28 ;// = (( (1) ) * ( prob_f2_s39 ));

module abstract 
s : [0 .. 16] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=2) + (PX_0_2):(s'=3) + (PX_0_3):(s'=4) + (PX_0_4):(s'=5) + (PX_0_5):(s'=6) + (PX_0_6):(s'=7) + (PX_0_7):(s'=8) + (PX_0_8):(s'=9) + (PX_0_16):(s'=15) + (PX_0_17):(s'=14) + (PX_0_22):(s'=12); 
 [] s=1 -> (PX_1_27):(s'=16) + (PX_1_28):(s'=10); 
 [] s=2 -> ((1)):(s'=1); 
 [] s=3 -> ((1)):(s'=1); 
 [] s=4 -> ((1)):(s'=1); 
 [] s=5 -> ((1)):(s'=13); 
 [] s=6 -> ((1)):(s'=1); 
 [] s=7 -> ((1)):(s'=1); 
 [] s=8 -> ((1)):(s'=1); 
 [] s=9 -> ((1)):(s'=11); 
 [] s=10 -> ((1)):(s'=10); 
 [] s=11 -> ((1)):(s'=11); 
 [] s=12 -> ((1)):(s'=12); 
 [] s=13 -> ((1)):(s'=13); 
 [] s=14 -> ((1)):(s'=14); 
 [] s=15 -> ((1)):(s'=15); 
 [] s=16 -> ((1)):(s'=0); 
 
endmodule
 
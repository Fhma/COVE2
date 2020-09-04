dtmc
  const double p52; 
  const double p51; 
  const double p53; 
  const double prob_f2_s58; 
  const double prob_f2_s57; 
  const double prob_f2_s59; 
  const double prob_f2_s56; 
  const double prob_f1_s47; 
  const double prob_f2_s61; 
  const double prob_f2_s60; 
  const double prob_f2_s63; 
  const double prob_f2_s62; 
  const double prob_f1_s31; 
  const double prob_f1_s23; 
  const double p32; 
  const double p31; 
  const double p33; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
 
 const double PX_0_1 ;// = (( (p33*p32*p31) ) * ( prob_f1_s3 )); 
  const double PX_0_2 ;// = (( ((-1)*p33*p32*p31+p32*p31) ) * ( prob_f1_s3 ));
  const double PX_0_3 ;// = (( ((-1)*p33*p32*p31+p33*p31) ) * ( prob_f1_s3 ));
  const double PX_0_4 ;// = (( (p33*p32*p31-p32*p31-p33*p31+p31) ) * ( prob_f1_s3 ));
  const double PX_0_5 ;// = (( ((-1)*p33*p32*p31+p33*p32) ) * ( prob_f1_s3 ));
  const double PX_0_6 ;// = (( (p33*p32*p31-p32*p31-p33*p32+p32) ) * ( prob_f1_s3 ));
  const double PX_0_7 ;// = (( (p33*p32*p31-p33*p31-p33*p32+p33) ) * ( prob_f1_s3 ));
  const double PX_0_8 ;// = (( ((-1)*p33*p32*p31+p32*p31+p33*p31+p33*p32-p31-p32-p33+1) ) * ( prob_f1_s3 ));
  const double PX_0_9 ;// = (( (p53*p52*p51) ) * ( prob_f1_s5 ));
  const double PX_0_10 ;// = (( ((-1)*p53*p52*p51+p52*p51) ) * ( prob_f1_s5 ));
  const double PX_0_11 ;// = (( ((-1)*p53*p52*p51+p53*p51) ) * ( prob_f1_s5 ));
  const double PX_0_12 ;// = (( (p53*p52*p51-p52*p51-p53*p51+p51) ) * ( prob_f1_s5 ));
  const double PX_0_13 ;// = (( ((-1)*p53*p52*p51+p53*p52) ) * ( prob_f1_s5 ));
  const double PX_0_14 ;// = (( (p53*p52*p51-p52*p51-p53*p52+p52) ) * ( prob_f1_s5 ));
  const double PX_0_15 ;// = (( (p53*p52*p51-p53*p51-p53*p52+p53) ) * ( prob_f1_s5 ));
  const double PX_0_16 ;// = (( ((-1)*p53*p52*p51+p52*p51+p53*p51+p53*p52-p51-p52-p53+1) ) * ( prob_f1_s5 ));
  const double PX_0_24 ;// = (( (1) ) * ( prob_f1_s23 ));
  const double PX_0_25 ;// = (( (1) ) * ( prob_f1_s31 ));
  const double PX_0_34 ;// = (( (1) ) * ( prob_f1_s47 ));
 const double PX_1_43 ;// = (      ( (1) ) * ( prob_f2_s56 ) + ( (1) ) * ( prob_f2_s57 )  + ( (1) ) * ( prob_f2_s58 )  + ( (1) ) * ( prob_f2_s59 )  + ( (1) ) * ( prob_f2_s60 )  + ( (1) ) * ( prob_f2_s61 )  + ( (1) ) * ( prob_f2_s62 ) ); 
  const double PX_1_44 ;// = (( (1) ) * ( prob_f2_s63 ));

module abstract 
s : [0 .. 24] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=2) + (PX_0_2):(s'=3) + (PX_0_3):(s'=4) + (PX_0_4):(s'=5) + (PX_0_5):(s'=6) + (PX_0_6):(s'=7) + (PX_0_7):(s'=8) + (PX_0_8):(s'=9) + (PX_0_9):(s'=10) + (PX_0_10):(s'=11) + (PX_0_11):(s'=12) + (PX_0_12):(s'=13) + (PX_0_13):(s'=14) + (PX_0_14):(s'=15) + (PX_0_15):(s'=16) + (PX_0_16):(s'=17) + (PX_0_24):(s'=23) + (PX_0_25):(s'=22) + (PX_0_34):(s'=20); 
 [] s=1 -> (PX_1_43):(s'=24) + (PX_1_44):(s'=18); 
 [] s=2 -> ((1)):(s'=1); 
 [] s=3 -> ((1)):(s'=1); 
 [] s=4 -> ((1)):(s'=1); 
 [] s=5 -> ((1)):(s'=1); 
 [] s=6 -> ((1)):(s'=1); 
 [] s=7 -> ((1)):(s'=1); 
 [] s=8 -> ((1)):(s'=1); 
 [] s=9 -> ((1)):(s'=21); 
 [] s=10 -> ((1)):(s'=1); 
 [] s=11 -> ((1)):(s'=1); 
 [] s=12 -> ((1)):(s'=1); 
 [] s=13 -> ((1)):(s'=1); 
 [] s=14 -> ((1)):(s'=1); 
 [] s=15 -> ((1)):(s'=1); 
 [] s=16 -> ((1)):(s'=1); 
 [] s=17 -> ((1)):(s'=19); 
 [] s=18 -> ((1)):(s'=18); 
 [] s=19 -> ((1)):(s'=19); 
 [] s=20 -> ((1)):(s'=20); 
 [] s=21 -> ((1)):(s'=21); 
 [] s=22 -> ((1)):(s'=22); 
 [] s=23 -> ((1)):(s'=23); 
 [] s=24 -> ((1)):(s'=0); 
 
endmodule
 
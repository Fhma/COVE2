dtmc
         //const double p52; 
  // const double p51;  
  // const double p54;  
  // const double p53;  
  // const double p56;  
  // const double p55;  
  // const double p58;  
  // const double p57;  
  // const double p49;  
 
 const double P30_59_1;// = ((p49)); 
  const double P30_59_2 ;// = (((-1)*p49+1));
 const double P30_63_3;// = ((p51)); 
  const double P30_63_4 ;// = (((-1)*p51+1));
 const double P30_64_5;// = ((p52)); 
  const double P30_64_33 ;// = (((-1)*p52+1));
 const double P30_67_8;// = ((p53)); 
  const double P30_67_9 ;// = (((-1)*p53+1));
 const double P30_68_10;// = ((p54)); 
  const double P30_68_34 ;// = (((-1)*p54+1));
 const double P30_69_11;// = ((p55)); 
  const double P30_69_27 ;// = (((-1)*p55+1));
 const double P30_70_12;// = ((p56)); 
  const double P30_70_13 ;// = (((-1)*p56+1));
 const double P30_71_14;// = ((p57)); 
  const double P30_71_35 ;// = (((-1)*p57+1));
 const double P30_72_15;// = ((p58)); 
  const double P30_72_28 ;// = (((-1)*p58+1));

module f30 
s : [59 .. 150] init 59; 
 
 [] s=59 -> (P30_59_1):(s'=60) + (P30_59_2):(s'=63); 
 [] s=60 -> true; 
 [] s=63 -> (P30_63_3):(s'=64) + (P30_63_4):(s'=67); 
 [] s=64 -> (P30_64_5):(s'=65) + (P30_64_33):(s'=148); 
 [] s=65 -> ((1)):(s'=66); 
 [] s=66 -> ((1)):(s'=63); 
 [] s=67 -> (P30_67_8):(s'=68) + (P30_67_9):(s'=82); 
 [] s=68 -> (P30_68_10):(s'=69) + (P30_68_34):(s'=149); 
 [] s=69 -> (P30_69_11):(s'=70) + (P30_69_27):(s'=142); 
 [] s=70 -> (P30_70_12):(s'=71) + (P30_70_13):(s'=74); 
 [] s=71 -> (P30_71_14):(s'=72) + (P30_71_35):(s'=150); 
 [] s=72 -> (P30_72_15):(s'=73) + (P30_72_28):(s'=143); 
 [] s=73 -> ((1)):(s'=70); 
 [] s=74 -> ((4/5)):(s'=75) + ((1/5)):(s'=81); 
 [] s=75 -> ((3/5)):(s'=76) + ((2/5)):(s'=78); 
 [] s=76 -> ((4979/5000)):(s'=77) + ((21/5000)):(s'=144); 
 [] s=77 -> ((9961/10000)):(s'=80) + ((39/10000)):(s'=145); 
 [] s=78 -> ((9981/10000)):(s'=79) + ((19/10000)):(s'=146); 
 [] s=79 -> ((1981/2000)):(s'=80) + ((19/2000)):(s'=147); 
 [] s=80 -> ((1)):(s'=74); 
 [] s=81 -> ((1)):(s'=67); 
 [] s=82 -> true; 
 [] s=142 -> true; 
 [] s=143 -> true; 
 [] s=144 -> true; 
 [] s=145 -> true; 
 [] s=146 -> true; 
 [] s=147 -> true; 
 [] s=148 -> true; 
 [] s=149 -> true; 
 [] s=150 -> true; 
 
endmodule
label " prob_f30_s60 "= (s = 60); 
 label " prob_f30_s82 " = (s = 82); 
 label " prob_f30_s142 " = (s = 142); 
 label " prob_f30_s143 " = (s = 143); 
 label " prob_f30_s144 " = (s = 144); 
 label " prob_f30_s145 " = (s = 145); 
 label " prob_f30_s146 " = (s = 146); 
 label " prob_f30_s147 " = (s = 147); 
 label " prob_f30_s148 " = (s = 148); 
 label " prob_f30_s149 " = (s = 149); 
 label " prob_f30_s150 " = (s = 150); 
 
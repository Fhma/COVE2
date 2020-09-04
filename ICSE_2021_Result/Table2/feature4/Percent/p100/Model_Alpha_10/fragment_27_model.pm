dtmc
      //const double p61; 
  // const double p60;  
  // const double p56;  
  // const double p58;  
  // const double p57;  
  // const double p59;  
 
 const double P27_68_1;// = ((p56)); 
  const double P27_68_9 ;// = (((-1)*p56+1));
 const double P27_69_2;// = ((p57)); 
  const double P27_69_3 ;// = (((-1)*p57+1));
 const double P27_70_4;// = ((p58)); 
  const double P27_70_13 ;// = (((-1)*p58+1));
 const double P27_71_5;// = ((p59)); 
  const double P27_71_12 ;// = (((-1)*p59+1));
 const double P27_72_6;// = ((p60)); 
  const double P27_72_11 ;// = (((-1)*p60+1));
 const double P27_73_7;// = ((p61)); 
  const double P27_73_10 ;// = (((-1)*p61+1));

module f27 
s : [68 .. 189] init 68; 
 
 [] s=68 -> (P27_68_1):(s'=69) + (P27_68_9):(s'=185); 
 [] s=69 -> (P27_69_2):(s'=70) + (P27_69_3):(s'=75); 
 [] s=70 -> (P27_70_4):(s'=71) + (P27_70_13):(s'=189); 
 [] s=71 -> (P27_71_5):(s'=72) + (P27_71_12):(s'=188); 
 [] s=72 -> (P27_72_6):(s'=73) + (P27_72_11):(s'=187); 
 [] s=73 -> (P27_73_7):(s'=74) + (P27_73_10):(s'=186); 
 [] s=74 -> ((1)):(s'=69); 
 [] s=75 -> true; 
 [] s=185 -> true; 
 [] s=186 -> true; 
 [] s=187 -> true; 
 [] s=188 -> true; 
 [] s=189 -> true; 
 
endmodule
label " prob_f27_s75 "= (s = 75); 
 label " prob_f27_s185 " = (s = 185); 
 label " prob_f27_s186 " = (s = 186); 
 label " prob_f27_s187 " = (s = 187); 
 label " prob_f27_s188 " = (s = 188); 
 label " prob_f27_s189 " = (s = 189); 
 
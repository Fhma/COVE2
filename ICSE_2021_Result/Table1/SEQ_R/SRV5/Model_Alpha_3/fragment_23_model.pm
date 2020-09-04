dtmc
   //const double p35; 
  // const double r35;  
  // const double p61;  
 
 const double P23_25_1;// = (((-1)*p35+1)); 
  const double P23_25_3 ;// = (( (p35) ) * ( (p61) ));
  const double P23_25_4 ;// = (( (p35) ) * ( ((-1)*p61+1) ));
 const double P23_56_2;// = ((r35)); 
  const double P23_56_5 ;// = (((-1)*r35+1));

module f23 
s : [25 .. 116] init 25; 
 
 [] s=25 -> (P23_25_1):(s'=56) + (P23_25_3):(s'=114) + (P23_25_4):(s'=115); 
 [] s=56 -> (P23_56_2):(s'=25) + (P23_56_5):(s'=116); 
 [] s=114 -> true; 
 [] s=115 -> true; 
 [] s=116 -> true; 
 
endmodule
label " prob_f23_s114 "= (s = 114); 
 label " prob_f23_s115 " = (s = 115); 
 label " prob_f23_s116 " = (s = 116); 
 
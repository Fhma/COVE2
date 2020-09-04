dtmc
  //const double r42; 
  // const double p42;  
 
 const double P10_12_1;// = (((-1)*p42+1)); 
  const double P10_12_3 ;// = ((p42));
 const double P10_25_2;// = ((r42)); 
  const double P10_25_4 ;// = (((-1)*r42+1));

module f10 
s : [12 .. 47] init 12; 
 
 [] s=12 -> (P10_12_1):(s'=25) + (P10_12_3):(s'=46); 
 [] s=25 -> (P10_25_2):(s'=12) + (P10_25_4):(s'=47); 
 [] s=46 -> true; 
 [] s=47 -> true; 
 
endmodule
label " prob_f10_s46 "= (s = 46); 
 label " prob_f10_s47 " = (s = 47); 
 
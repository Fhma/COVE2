dtmc
 //const double p70; 
 
 const double P32_84_1;// = ((p70)); 
  const double P32_84_2 ;// = (((-1)*p70+1));

module f32 
s : [84 .. 191] init 84; 
 
 [] s=84 -> (P32_84_1):(s'=85) + (P32_84_2):(s'=191); 
 [] s=85 -> true; 
 [] s=191 -> true; 
 
endmodule
label " prob_f32_s85 "= (s = 85); 
 label " prob_f32_s191 " = (s = 191); 
 
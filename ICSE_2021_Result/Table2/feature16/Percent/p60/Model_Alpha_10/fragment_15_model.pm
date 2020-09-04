dtmc
 //const double p24; 
 
 const double P15_31_1;// = ((p24)); 
  const double P15_31_2 ;// = (((-1)*p24+1));

module f15 
s : [31 .. 128] init 31; 
 
 [] s=31 -> (P15_31_1):(s'=32) + (P15_31_2):(s'=128); 
 [] s=32 -> true; 
 [] s=128 -> true; 
 
endmodule
label " prob_f15_s32 "= (s = 32); 
 label " prob_f15_s128 " = (s = 128); 
 
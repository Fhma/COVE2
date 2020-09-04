dtmc
 //const double p44; 
 
 const double P17_55_1;// = ((p44)); 
  const double P17_55_2 ;// = (((-1)*p44+1));

module f17 
s : [55 .. 59] init 55; 
 
 [] s=55 -> (P17_55_1):(s'=56) + (P17_55_2):(s'=59); 
 [] s=56 -> true; 
 [] s=59 -> true; 
 
endmodule
label " prob_f17_s56 "= (s = 56); 
 label " prob_f17_s59 " = (s = 59); 
 
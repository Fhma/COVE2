dtmc
 //const double p48; 
 
 const double P28_55_1;// = ((p48)); 
  const double P28_55_2 ;// = (((-1)*p48+1));

module f28 
s : [55 .. 58] init 55; 
 
 [] s=55 -> (P28_55_1):(s'=56) + (P28_55_2):(s'=58); 
 [] s=56 -> true; 
 [] s=58 -> true; 
 
endmodule
label " prob_f28_s56 "= (s = 56); 
 label " prob_f28_s58 " = (s = 58); 
 
dtmc
 //const double p63; 
 
 const double P28_76_1;// = ((p63)); 
  const double P28_76_2 ;// = (((-1)*p63+1));

module f28 
s : [76 .. 80] init 76; 
 
 [] s=76 -> (P28_76_1):(s'=77) + (P28_76_2):(s'=80); 
 [] s=77 -> true; 
 [] s=80 -> true; 
 
endmodule
label " prob_f28_s77 "= (s = 77); 
 label " prob_f28_s80 " = (s = 80); 
 
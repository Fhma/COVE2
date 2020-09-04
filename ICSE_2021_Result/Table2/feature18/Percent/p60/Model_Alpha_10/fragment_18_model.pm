dtmc
 //const double p46; 
 
 const double P18_57_1;// = ((p46)); 
  const double P18_57_2 ;// = (((-1)*p46+1));

module f18 
s : [57 .. 117] init 57; 
 
 [] s=57 -> (P18_57_1):(s'=58) + (P18_57_2):(s'=117); 
 [] s=58 -> true; 
 [] s=117 -> true; 
 
endmodule
label " prob_f18_s58 "= (s = 58); 
 label " prob_f18_s117 " = (s = 117); 
 
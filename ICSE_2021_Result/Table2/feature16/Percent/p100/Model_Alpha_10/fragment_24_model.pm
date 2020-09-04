dtmc
 //const double p37; 
 
 const double P24_44_1;// = (((-1)*p37+1)); 
  const double P24_44_2 ;// = ((p37));

module f24 
s : [44 .. 139] init 44; 
 
 [] s=44 -> (P24_44_1):(s'=134) + (P24_44_2):(s'=139); 
 [] s=134 -> true; 
 [] s=139 -> true; 
 
endmodule
label " prob_f24_s134 "= (s = 134); 
 label " prob_f24_s139 " = (s = 139); 
 
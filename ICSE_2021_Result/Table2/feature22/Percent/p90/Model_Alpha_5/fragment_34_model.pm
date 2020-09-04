dtmc
 //const double p58; 
 
 const double P34_79_1;// = ((p58)); 
  const double P34_79_2 ;// = (((-1)*p58+1));

module f34 
s : [79 .. 139] init 79; 
 
 [] s=79 -> (P34_79_1):(s'=80) + (P34_79_2):(s'=139); 
 [] s=80 -> true; 
 [] s=139 -> true; 
 
endmodule
label " prob_f34_s80 "= (s = 80); 
 label " prob_f34_s139 " = (s = 139); 
 
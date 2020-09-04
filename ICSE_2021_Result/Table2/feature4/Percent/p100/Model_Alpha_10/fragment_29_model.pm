dtmc
 //const double p65; 
 
 const double P29_78_1;// = ((p65)); 
  const double P29_78_2 ;// = (((-1)*p65+1));

module f29 
s : [78 .. 190] init 78; 
 
 [] s=78 -> (P29_78_1):(s'=79) + (P29_78_2):(s'=190); 
 [] s=79 -> true; 
 [] s=190 -> true; 
 
endmodule
label " prob_f29_s79 "= (s = 79); 
 label " prob_f29_s190 " = (s = 190); 
 
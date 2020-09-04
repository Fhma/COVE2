dtmc
 //const double p69; 
 
 const double P35_89_1;// = ((p69)); 
  const double P35_89_2 ;// = (((-1)*p69+1));

module f35 
s : [89 .. 142] init 89; 
 
 [] s=89 -> (P35_89_1):(s'=90) + (P35_89_2):(s'=142); 
 [] s=90 -> true; 
 [] s=142 -> true; 
 
endmodule
label " prob_f35_s90 "= (s = 90); 
 label " prob_f35_s142 " = (s = 142); 
 
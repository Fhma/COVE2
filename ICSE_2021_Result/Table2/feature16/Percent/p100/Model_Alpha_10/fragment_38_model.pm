dtmc
 //const double p72; 
 
 const double P38_93_1;// = ((p72)); 
  const double P38_93_2 ;// = (((-1)*p72+1));

module f38 
s : [93 .. 155] init 93; 
 
 [] s=93 -> (P38_93_1):(s'=94) + (P38_93_2):(s'=155); 
 [] s=94 -> true; 
 [] s=155 -> true; 
 
endmodule
label " prob_f38_s94 "= (s = 94); 
 label " prob_f38_s155 " = (s = 155); 
 
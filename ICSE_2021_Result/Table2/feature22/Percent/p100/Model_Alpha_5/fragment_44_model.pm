dtmc
 //const double p83; 
 
 const double P44_109_1;// = ((p83)); 
  const double P44_109_2 ;// = (((-1)*p83+1));

module f44 
s : [109 .. 112] init 109; 
 
 [] s=109 -> (P44_109_1):(s'=110) + (P44_109_2):(s'=112); 
 [] s=110 -> true; 
 [] s=112 -> true; 
 
endmodule
label " prob_f44_s110 "= (s = 110); 
 label " prob_f44_s112 " = (s = 112); 
 
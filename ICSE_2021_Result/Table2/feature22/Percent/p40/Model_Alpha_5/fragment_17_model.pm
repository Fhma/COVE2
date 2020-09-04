dtmc
  //const double p27; 
  // const double p28;  
 
 const double P17_39_1;// = ((p28)); 
  const double P17_39_2 ;// = (((-1)*p28+1));
 const double P17_43_3;// = (( (1) ) * ( (p27) )); 
  const double P17_43_4 ;// = (( (1) ) * ( ((-1)*p27+1) ));

module f17 
s : [39 .. 126] init 39; 
 
 [] s=39 -> (P17_39_1):(s'=40) + (P17_39_2):(s'=43); 
 [] s=40 -> true; 
 [] s=43 -> (P17_43_3):(s'=39) + (P17_43_4):(s'=126); 
 [] s=126 -> true; 
 
endmodule
label " prob_f17_s40 "= (s = 40); 
 label " prob_f17_s126 " = (s = 126); 
 
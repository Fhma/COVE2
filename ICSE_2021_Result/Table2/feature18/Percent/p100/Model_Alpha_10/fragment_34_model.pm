dtmc
  //const double p67; 
  // const double p66;  
 
 const double P34_82_1;// = ((p66)); 
  const double P34_82_7 ;// = (((-1)*p66+1));
 const double P34_83_2;// = ((p67)); 
  const double P34_83_3 ;// = (((-1)*p67+1));

module f34 
s : [82 .. 141] init 82; 
 
 [] s=82 -> (P34_82_1):(s'=83) + (P34_82_7):(s'=141); 
 [] s=83 -> (P34_83_2):(s'=84) + (P34_83_3):(s'=86); 
 [] s=84 -> ((1)):(s'=85); 
 [] s=85 -> ((1)):(s'=83); 
 [] s=86 -> ((1)):(s'=82); 
 [] s=141 -> true; 
 
endmodule
label " prob_f34_s141 "= (s = 141); 
 
dtmc

const double v1 =1;
const double v2 =1;
const double v3 =1;
const double v4 =1;
const double v5 =1;
const double v6 =1;
const double v7 =1;
const double v8 =1;
const double v9 =1;
const double v10 =1;
const double v11 =1;
const double v12 =1;
const double v13 =1;
const double v14 =1;
const double v15 =1;
const double v16 =1;
const double v17 =1;


const double p1;
const double p2;
const double p3;
const double p4;
const double p5;
const double p6;
const double p7;
const double p8;
const double p9;

const double p10;
const double p11;
const double p12;
const double p13;
const double p14;
const double p15;
const double p16;
const double p17;
const double p18;
const double p19;

const double p20;
const double p21;
const double p22;
const double p23 =0.9969;
const double p24 =0.998;
const double p25 =0.8;
const double p26 =0.9909;
const double p27 =0.9947;
const double p28 =0.9997;
const double p29 =0.9905;

const double p30 =0.6;
const double p31 =0.8;
const double p32 =0.9913;
const double p33 =0.9984;
const double p34 =0.8;
const double p35 =0.9987;
const double p36 =0.9967;
const double p37 =0.6;
const double p38 =0.8;
const double p39 =0.9946;

const double p40 =0.993;
const double p41 =0.8;
const double p42 =0.994;
const double p43 =0.996;
const double p44 =0.6;
const double p45 =0.9984;
const double p46 =0.9949;
const double p47 =0.9916;
const double p48 =0.9935;
const double p49 =0.9996;

const double p50 =0.9961;
const double p51 =0.9941;
const double p52 =0.9958;
const double p53 =0.9915;
const double p54 =0.9924;
const double p55 =0.9942;
const double p56 =0.9931;
const double p57 =0.8;
const double p58 =0.9997;
const double p59 =0.992;

const double p60 =0.9908;
const double p61 =0.9939;
const double p62 =0.6;
const double p63 =0.8;
const double p64 =0.9981;
const double p65 =0.9908;
const double p66 =0.9996;
const double p67 =0.9996;
const double p68 =0.6;
const double p69 =0.6;


const double p70 =0.9966;
const double p71 =0.9999;
const double p72 =0.9992;
const double p73 =0.9999;
const double p74 =0.9987;
const double p75 =0.9964;


module case 
state : [-1..92] init 0;
[] state =0 -> p1:(state'=1)+(1-p1):(state'=3);
[] state =1 -> v1:(state'=2);
[] state =2 -> v2:(state'=0);
[] state =3 -> p2:(state'=4)+(1-p2):(state'=7);
[] state =4 -> p3:(state'=5)+(1-p3):(state'=26);
[] state =5 -> v3:(state'=6);
[] state =6 -> v4:(state'=4);
[] state =7 -> p4:(state'=8)+(1-p4):(state'=10);
[] state =8 -> p5:(state'=9)+(1-p5):(state'=91);
[] state =9 -> p6:(state'=26)+(1-p6):(state'=91);
[] state =10 -> p7:(state'=11)+(1-p7):(state'=26);
[] state =11 -> p8:(state'=12)+(1-p8):(state'=14);
[] state =12 -> p9:(state'=13)+(1-p9):(state'=91);
[] state =13 -> p10:(state'=16)+(1-p10):(state'=91);
[] state =14 -> p11:(state'=15)+(1-p11):(state'=91);
[] state =15 -> p12:(state'=16)+(1-p12):(state'=91);
[] state =16 -> p13:(state'=17)+(1-p13):(state'=25);
[] state =17 -> p14:(state'=18)+(1-p14):(state'=22);
[] state =18 -> p15:(state'=19)+(1-p15):(state'=24);
[] state =19 -> p16:(state'=20)+(1-p16):(state'=91);
[] state =20 -> p17:(state'=21)+(1-p17):(state'=91);
[] state =21 -> v5:(state'=18);
[] state =22 -> p18:(state'=23)+(1-p18):(state'=91);
[] state =23 -> p19:(state'=24)+(1-p19):(state'=91);
[] state =24 -> v6:(state'=16);
[] state =25 -> v7:(state'=10);
[] state =26 -> p20:(state'=27)+(1-p20):(state'=47);
[] state =27 -> p21:(state'=28)+(1-p21):(state'=63);
[] state =28 -> p22:(state'=29)+(1-p22):(state'=35);
[] state =29 -> p23:(state'=30)+(1-p23):(state'=91);
[] state =30 -> p24:(state'=31)+(1-p24):(state'=91);
[] state =31 -> p25:(state'=32)+(1-p25):(state'=37);
[] state =32 -> p26:(state'=33)+(1-p26):(state'=91);
[] state =33 -> p27:(state'=34)+(1-p27):(state'=91);
[] state =34 -> v8:(state'=31);
[] state =35 -> p28:(state'=36)+(1-p28):(state'=91);
[] state =36 -> p29:(state'=37)+(1-p29):(state'=91);
[] state =37 -> p30:(state'=38)+(1-p30):(state'=42);
[] state =38 -> p31:(state'=39)+(1-p31):(state'=46);
[] state =39 -> p32:(state'=40)+(1-p32):(state'=91);
[] state =40 -> p33:(state'=41)+(1-p33):(state'=91);
[] state =41 -> v9:(state'=38);
[] state =42 -> p34:(state'=43)+(1-p34):(state'=46);
[] state =43 -> p35:(state'=44)+(1-p35):(state'=91);
[] state =44 -> p36:(state'=45)+(1-p36):(state'=91);
[] state =45 -> v10:(state'=42);
[] state =46 -> v11:(state'=27);
[] state =47 -> p37:(state'=48)+(1-p37):(state'=56);
[] state =48 -> p38:(state'=49)+(1-p38):(state'=61);
[] state =49 -> p39:(state'=50)+(1-p39):(state'=91);
[] state =50 -> p40:(state'=51)+(1-p40):(state'=91);
[] state =51 -> p41:(state'=52)+(1-p41):(state'=55);
[] state =52 -> p42:(state'=53)+(1-p42):(state'=91);
[] state =53 -> p43:(state'=54)+(1-p43):(state'=91);
[] state =54 -> v12:(state'=51);
[] state =55 -> v13:(state'=48);
[] state =56 -> p44:(state'=57)+(1-p44):(state'=59);
[] state =57 -> p45:(state'=58)+(1-p45):(state'=91);
[] state =58 -> p46:(state'=61)+(1-p46):(state'=91);
[] state =59 -> p47:(state'=60)+(1-p47):(state'=91);
[] state =60 -> p48:(state'=61)+(1-p48):(state'=91);
[] state =61 -> p49:(state'=62)+(1-p49):(state'=91);
[] state =62 -> p50:(state'=63)+(1-p50):(state'=91);
[] state =63 -> p51:(state'=64)+(1-p51):(state'=91);
[] state =64 -> p52:(state'=65)+(1-p52):(state'=91);
[] state =65 -> p53:(state'=66)+(1-p53):(state'=91);
[] state =66 -> p54:(state'=67)+(1-p54):(state'=91);
[] state =67 -> p55:(state'=68)+(1-p55):(state'=91);
[] state =68 -> p56:(state'=69)+(1-p56):(state'=91);
[] state =69 -> p57:(state'=70)+(1-p57):(state'=75);
[] state =70 -> p58:(state'=71)+(1-p58):(state'=91);
[] state =71 -> p59:(state'=72)+(1-p59):(state'=91);
[] state =72 -> p60:(state'=73)+(1-p60):(state'=91);
[] state =73 -> p61:(state'=74)+(1-p61):(state'=91);
[] state =74 -> v14:(state'=69);
[] state =75 -> p62:(state'=76)+(1-p62):(state'=82);
[] state =76 -> p63:(state'=77)+(1-p63):(state'=80);
[] state =77 -> p64:(state'=78)+(1-p64):(state'=91);
[] state =78 -> p65:(state'=79)+(1-p65):(state'=91);
[] state =79 -> v15:(state'=76);
[] state =80 -> p66:(state'=81)+(1-p66):(state'=91);
[] state =81 -> p67:(state'=90)+(1-p67):(state'=91);
[] state =82 -> p68:(state'=83)+(1-p68):(state'=88);
[] state =83 -> p69:(state'=84)+(1-p69):(state'=86);
[] state =84 -> p70:(state'=85)+(1-p70):(state'=91);
[] state =85 -> p71:(state'=90)+(1-p71):(state'=91);
[] state =86 -> p72:(state'=87)+(1-p72):(state'=91);
[] state =87 -> p73:(state'=90)+(1-p73):(state'=91);
[] state =88 -> p74:(state'=89)+(1-p74):(state'=91);
[] state =89 -> p75:(state'=90)+(1-p75):(state'=91);
[] state =90 -> v16:(state'=90);
[] state =91 -> v17:(state'=91);
endmodule 

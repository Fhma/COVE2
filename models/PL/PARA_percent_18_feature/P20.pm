dtmc
const double v0  =1;
const double v1  =1;
const double v2  =1;
const double v3  =1;
const double v4  =1;
const double v5  =1;
const double v6  =1;
const double v7  =1;
const double v8  =1;
const double v9  =1;
const double v10 =1;
const double v11 =1;
const double v12 =1;
const double v13 =1;
const double v14 =1;
const double v15 =1;
const double v16 =1;
const double v17 =1;
const double v18 =1;
const double v19 =1;
const double v20 =1;
const double v21 =1;
const double v22 =1;
const double v23 =1;
const double v24 =1;
const double v25 =1;
const double v26 =1;
const double v27 =1;
const double v28 =1;
const double v29 =1;
const double v30 =1;
const double v31 =1;
const double v32 =1;

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
const double p17 =0.7;
const double p18 =0.5;
const double p19 =0.7;

const double p20 =0.6;
const double p21 =0.8;
const double p22 =0.8;
const double p23 =0.8;
const double p24 =0.9975;
const double p25 =0.9986;
const double p26 =0.6;
const double p27 =0.8;
const double p28 =0.9913;
const double p29 =0.9908;

const double p30 =0.996;
const double p31 =0.9916;
const double p32 =0.9931;
const double p33 =0.9967;
const double p34 =0.9932;
const double p35 =0.9971;
const double p36 =0.6;
const double p37 =0.8;
const double p38 =0.6;
const double p39 =0.8;

const double p40 =0.9924;
const double p41 =0.9977;
const double p42 =0.9904;
const double p43 =0.9989;
const double p44 =0.8;
const double p45 =0.9947;
const double p46 =0.9924;
const double p47 =0.9942;
const double p48 =0.9931;
const double p49 =0.9907;

const double p50 =0.9906;
const double p51 =0.6;
const double p52 =0.6;
const double p53 =0.995;
const double p54 =0.9969;
const double p55 =0.9997;
const double p56 =0.9949;
const double p57 =0.9971;
const double p58 =0.9964;
const double p59 =0.6;

const double p60 =0.9934;
const double p61 =0.9932;
const double p62 =0.9947;
const double p63 =0.9971;
const double p64 =0.5;
const double p65 =0.5;
const double p66 =0.7;
const double p67 =0.7;
const double p68 =0.9902;
const double p69 =0.9968;


const double p70 =0.9951;
const double p71 =0.9972;
const double p72 =0.8;
const double p73 =0.8;
const double p74 =0.9914;
const double p75 = 0.997;
const double p76 =0.9975;
const double p77 =0.9929;
const double p78 =0.9974;
const double p79 = 0.9944;

module case 
state : [-1..104] init 0;
[] state =0 -> p1:(state'=1)+(1-p1):(state'=22);
[] state =1 -> p2:(state'=2)+(1-p2):(state'=3);
[] state =2 -> v1:(state'=78);
[] state =3 -> p3:(state'=4)+(1-p3):(state'=78);
[] state =4 -> v2:(state'=5);
[] state =5 -> p4:(state'=6)+(1-p4):(state'=16);
[] state =6 -> p5:(state'=7)+(1-p5):(state'=14);
[] state =7 -> p6:(state'=8)+(1-p6):(state'=10);
[] state =8 -> p7:(state'=9)+(1-p7):(state'=103);
[] state =9 -> p8:(state'=18)+(1-p8):(state'=103);
[] state =10 -> p9:(state'=11)+(1-p9):(state'=103);
[] state =11 -> p10:(state'=12)+(1-p10):(state'=103);
[] state =12 -> p11:(state'=13)+(1-p11):(state'=103);
[] state =13 -> p12:(state'=18)+(1-p12):(state'=103);
[] state =14 -> p13:(state'=15)+(1-p13):(state'=103);
[] state =15 -> p14:(state'=18)+(1-p14):(state'=103);
[] state =16 -> p15:(state'=17)+(1-p15):(state'=103);
[] state =17 -> p16:(state'=18)+(1-p16):(state'=103);
[] state =18 -> p17:(state'=19)+(1-p17):(state'=21);
[] state =19 -> v3:(state'=20);
[] state =20 -> v4:(state'=18);
[] state =21 -> v5:(state'=3);
[] state =22 -> p18:(state'=23)+(1-p18):(state'=45);
[] state =23 -> p19:(state'=24)+(1-p19):(state'=78);
[] state =24 -> p20:(state'=25)+(1-p20):(state'=33);
[] state =25 -> p21:(state'=26)+(1-p21):(state'=44);
[] state =26 -> p22:(state'=27)+(1-p22):(state'=32);
[] state =27 -> p23:(state'=28)+(1-p23):(state'=31);
[] state =28 -> p24:(state'=29)+(1-p24):(state'=103);
[] state =29 -> p25:(state'=30)+(1-p25):(state'=103);
[] state =30 -> v6:(state'=27);
[] state =31 -> v7:(state'=26);
[] state =32 -> v8:(state'=25);
[] state =33 -> p26:(state'=34)+(1-p26):(state'=38);
[] state =34 -> p27:(state'=35)+(1-p27):(state'=44);
[] state =35 -> p28:(state'=36)+(1-p28):(state'=103);
[] state =36 -> p29:(state'=37)+(1-p29):(state'=103);
[] state =37 -> v9:(state'=34);
[] state =38 -> p30:(state'=39)+(1-p30):(state'=103);
[] state =39 -> p31:(state'=40)+(1-p31):(state'=103);
[] state =40 -> p32:(state'=41)+(1-p32):(state'=103);
[] state =41 -> p33:(state'=42)+(1-p33):(state'=103);
[] state =42 -> p34:(state'=43)+(1-p34):(state'=103);
[] state =43 -> p35:(state'=44)+(1-p35):(state'=103);
[] state =44 -> v10:(state'=23);
[] state =45 -> p36:(state'=46)+(1-p36):(state'=61);
[] state =46 -> p37:(state'=47)+(1-p37):(state'=55);
[] state =47 -> p38:(state'=48)+(1-p38):(state'=52);
[] state =48 -> p39:(state'=49)+(1-p39):(state'=54);
[] state =49 -> p40:(state'=50)+(1-p40):(state'=103);
[] state =50 -> p41:(state'=51)+(1-p41):(state'=103);
[] state =51 -> v11:(state'=48);
[] state =52 -> p42:(state'=53)+(1-p42):(state'=103);
[] state =53 -> p43:(state'=54)+(1-p43):(state'=103);
[] state =54 -> v12:(state'=46);
[] state =55 -> p44:(state'=56)+(1-p44):(state'=59);
[] state =56 -> p45:(state'=57)+(1-p45):(state'=103);
[] state =57 -> p46:(state'=58)+(1-p46):(state'=103);
[] state =58 -> v13:(state'=55);
[] state =59 -> p47:(state'=60)+(1-p47):(state'=103);
[] state =60 -> p48:(state'=63)+(1-p48):(state'=103);
[] state =61 -> p49:(state'=62)+(1-p49):(state'=103);
[] state =62 -> p50:(state'=63)+(1-p50):(state'=103);
[] state =63 -> v14:(state'=64);
[] state =64 -> p51:(state'=65)+(1-p51):(state'=70);
[] state =65 -> p52:(state'=66)+(1-p52):(state'=68);
[] state =66 -> p53:(state'=67)+(1-p53):(state'=103);
[] state =67 -> p54:(state'=77)+(1-p54):(state'=103);
[] state =68 -> p55:(state'=69)+(1-p55):(state'=103);
[] state =69 -> p56:(state'=77)+(1-p56):(state'=103);
[] state =70 -> p57:(state'=71)+(1-p57):(state'=103);
[] state =71 -> p58:(state'=72)+(1-p58):(state'=103);
[] state =72 -> p59:(state'=73)+(1-p59):(state'=75);
[] state =73 -> p60:(state'=74)+(1-p60):(state'=103);
[] state =74 -> p61:(state'=77)+(1-p61):(state'=103);
[] state =75 -> p62:(state'=76)+(1-p62):(state'=103);
[] state =76 -> p63:(state'=77)+(1-p63):(state'=103);
[] state =77 -> v15:(state'=78);
[] state =78 -> p64:(state'=79)+(1-p64):(state'=80);
[] state =79 -> v16:(state'=81);
[] state =80 -> v17:(state'=81);
[] state =81 -> p65:(state'=82)+(1-p65):(state'=87);
[] state =82 -> p66:(state'=83)+(1-p66):(state'=88);
[] state =83 -> p67:(state'=84)+(1-p67):(state'=86);
[] state =84 -> v18:(state'=85);
[] state =85 -> v19:(state'=83);
[] state =86 -> v20:(state'=82);
[] state =87 -> v21:(state'=88);
[] state =88 -> p68:(state'=89)+(1-p68):(state'=103);
[] state =89 -> p69:(state'=90)+(1-p69):(state'=103);
[] state =90 -> p70:(state'=91)+(1-p70):(state'=103);
[] state =91 -> p71:(state'=92)+(1-p71):(state'=103);
[] state =92 -> p72:(state'=93)+(1-p72):(state'=102);
[] state =93 -> p73:(state'=94)+(1-p73):(state'=101);
[] state =94 -> p74:(state'=95)+(1-p74):(state'=103);
[] state =95 -> p75:(state'=96)+(1-p75):(state'=103);
[] state =96 -> p76:(state'=97)+(1-p76):(state'=103);
[] state =97 -> p77:(state'=98)+(1-p77):(state'=103);
[] state =98 -> p78:(state'=99)+(1-p78):(state'=103);
[] state =99 -> p79:(state'=100)+(1-p79):(state'=103);
[] state =100 -> v22:(state'=93);
[] state =101 -> v23:(state'=92);
[] state =102 -> v24:(state'=102);
[] state =103 -> v25:(state'=103);
endmodule 

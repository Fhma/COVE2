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
const double p23;
const double p24;
const double p25;
const double p26;
const double p27;
const double p28;
const double p29;

const double p30;
const double p31;
const double p32;
const double p33;
const double p34;
const double p35;
const double p36;
const double p37;
const double p38;
const double p39;

const double p40;
const double p41;
const double p42;
const double p43 =0.9934;
const double p44 =0.9932;
const double p45 =0.9947;
const double p46 =0.9971;
const double p47 =0.7;
const double p48 =0.7;
const double p49 =0.5;

const double p50 =0.5;
const double p51 =0.8;
const double p52 =0.9914;
const double p53 =0.8;
const double p54 =0.9945;
const double p55 =0.9969;
const double p56 =0.8;
const double p57 =0.9974;
const double p58 =0.997;
const double p59 =0.8;

const double p60 =0.6;
const double p61 =0.9958;
const double p62 =0.9961;
const double p63 =0.9981;
const double p64 =0.9905;
const double p65 =0.5;
const double p66 =0.7;
const double p67 =0.6;
const double p68 =0.6;
const double p69 =0.6;


const double p70 =0.9998;
const double p71 =0.9927;
const double p72 =0.9968;
const double p73 =0.9926;
const double p74 =0.8;
const double p75 =0.9979;
const double p76 =0.9985;
const double p77 =0.8;
const double p78 =0.8;
const double p79 =0.6;


const double p80 =0.9984;
const double p81 =0.9936;
const double p82 =0.9989;
const double p83 =0.9901;
module case 
state : [-1..110] init 0;
[] state =0 -> p1:(state'=1)+(1-p1):(state'=83);
[] state =1 -> p2:(state'=2)+(1-p2):(state'=27);
[] state =2 -> p3:(state'=3)+(1-p3):(state'=108);
[] state =3 -> p4:(state'=4)+(1-p4):(state'=26);
[] state =4 -> p5:(state'=5)+(1-p5):(state'=13);
[] state =5 -> p6:(state'=6)+(1-p6):(state'=24);
[] state =6 -> p7:(state'=7)+(1-p7):(state'=12);
[] state =7 -> p8:(state'=8)+(1-p8):(state'=11);
[] state =8 -> p9:(state'=9)+(1-p9):(state'=109);
[] state =9 -> p10:(state'=10)+(1-p10):(state'=109);
[] state =10 -> v1:(state'=7);
[] state =11 -> v2:(state'=6);
[] state =12 -> v3:(state'=5);
[] state =13 -> p11:(state'=14)+(1-p11):(state'=18);
[] state =14 -> p12:(state'=15)+(1-p12):(state'=24);
[] state =15 -> p13:(state'=16)+(1-p13):(state'=109);
[] state =16 -> p14:(state'=17)+(1-p14):(state'=109);
[] state =17 -> v4:(state'=14);
[] state =18 -> p15:(state'=19)+(1-p15):(state'=109);
[] state =19 -> p16:(state'=20)+(1-p16):(state'=109);
[] state =20 -> p17:(state'=21)+(1-p17):(state'=109);
[] state =21 -> p18:(state'=22)+(1-p18):(state'=109);
[] state =22 -> p19:(state'=23)+(1-p19):(state'=109);
[] state =23 -> p20:(state'=24)+(1-p20):(state'=109);
[] state =24 -> v5:(state'=25);
[] state =25 -> v6:(state'=3);
[] state =26 -> v7:(state'=2);
[] state =27 -> v8:(state'=28);
[] state =28 -> p21:(state'=29)+(1-p21):(state'=39);
[] state =29 -> p22:(state'=30)+(1-p22):(state'=37);
[] state =30 -> p23:(state'=31)+(1-p23):(state'=33);
[] state =31 -> p24:(state'=32)+(1-p24):(state'=109);
[] state =32 -> p25:(state'=41)+(1-p25):(state'=109);
[] state =33 -> p26:(state'=34)+(1-p26):(state'=109);
[] state =34 -> p27:(state'=35)+(1-p27):(state'=109);
[] state =35 -> p28:(state'=36)+(1-p28):(state'=109);
[] state =36 -> p29:(state'=41)+(1-p29):(state'=109);
[] state =37 -> p30:(state'=38)+(1-p30):(state'=109);
[] state =38 -> p31:(state'=41)+(1-p31):(state'=109);
[] state =39 -> p32:(state'=40)+(1-p32):(state'=109);
[] state =40 -> p33:(state'=41)+(1-p33):(state'=109);
[] state =41 -> p34:(state'=42)+(1-p34):(state'=47);
[] state =42 -> p35:(state'=43)+(1-p35):(state'=45);
[] state =43 -> p36:(state'=44)+(1-p36):(state'=109);
[] state =44 -> p37:(state'=54)+(1-p37):(state'=109);
[] state =45 -> p38:(state'=46)+(1-p38):(state'=109);
[] state =46 -> p39:(state'=54)+(1-p39):(state'=109);
[] state =47 -> p40:(state'=48)+(1-p40):(state'=109);
[] state =48 -> p41:(state'=49)+(1-p41):(state'=109);
[] state =49 -> p42:(state'=50)+(1-p42):(state'=52);
[] state =50 -> p43:(state'=51)+(1-p43):(state'=109);
[] state =51 -> p44:(state'=54)+(1-p44):(state'=109);
[] state =52 -> p45:(state'=53)+(1-p45):(state'=109);
[] state =53 -> p46:(state'=54)+(1-p46):(state'=109);
[] state =54 -> p47:(state'=55)+(1-p47):(state'=59);
[] state =55 -> p48:(state'=56)+(1-p48):(state'=58);
[] state =56 -> v9:(state'=57);
[] state =57 -> v10:(state'=55);
[] state =58 -> v11:(state'=54);
[] state =59 -> p49:(state'=60)+(1-p49):(state'=63);
[] state =60 -> p50:(state'=61)+(1-p50):(state'=62);
[] state =61 -> v12:(state'=82);
[] state =62 -> v13:(state'=82);
[] state =63 -> p51:(state'=64)+(1-p51):(state'=67);
[] state =64 -> p52:(state'=65)+(1-p52):(state'=109);
[] state =65 -> v14:(state'=66);
[] state =66 -> v15:(state'=63);
[] state =67 -> p53:(state'=68)+(1-p53):(state'=82);
[] state =68 -> p54:(state'=69)+(1-p54):(state'=109);
[] state =69 -> p55:(state'=70)+(1-p55):(state'=109);
[] state =70 -> p56:(state'=71)+(1-p56):(state'=74);
[] state =71 -> p57:(state'=72)+(1-p57):(state'=109);
[] state =72 -> p58:(state'=73)+(1-p58):(state'=109);
[] state =73 -> v16:(state'=70);
[] state =74 -> p59:(state'=75)+(1-p59):(state'=81);
[] state =75 -> p60:(state'=76)+(1-p60):(state'=78);
[] state =76 -> p61:(state'=77)+(1-p61):(state'=109);
[] state =77 -> p62:(state'=80)+(1-p62):(state'=109);
[] state =78 -> p63:(state'=79)+(1-p63):(state'=109);
[] state =79 -> p64:(state'=80)+(1-p64):(state'=109);
[] state =80 -> v17:(state'=74);
[] state =81 -> v18:(state'=67);
[] state =82 -> v19:(state'=108);
[] state =83 -> p65:(state'=84)+(1-p65):(state'=85);
[] state =84 -> v20:(state'=108);
[] state =85 -> p66:(state'=86)+(1-p66):(state'=88);
[] state =86 -> v21:(state'=87);
[] state =87 -> v22:(state'=85);
[] state =88 -> p67:(state'=89)+(1-p67):(state'=99);
[] state =89 -> p68:(state'=90)+(1-p68):(state'=95);
[] state =90 -> p69:(state'=91)+(1-p69):(state'=93);
[] state =91 -> p70:(state'=92)+(1-p70):(state'=109);
[] state =92 -> p71:(state'=108)+(1-p71):(state'=109);
[] state =93 -> p72:(state'=94)+(1-p72):(state'=109);
[] state =94 -> p73:(state'=108)+(1-p73):(state'=109);
[] state =95 -> p74:(state'=96)+(1-p74):(state'=108);
[] state =96 -> p75:(state'=97)+(1-p75):(state'=109);
[] state =97 -> p76:(state'=98)+(1-p76):(state'=109);
[] state =98 -> v23:(state'=95);
[] state =99 -> p77:(state'=100)+(1-p77):(state'=108);
[] state =100 -> p78:(state'=101)+(1-p78):(state'=107);
[] state =101 -> p79:(state'=102)+(1-p79):(state'=104);
[] state =102 -> p80:(state'=103)+(1-p80):(state'=109);
[] state =103 -> p81:(state'=106)+(1-p81):(state'=109);
[] state =104 -> p82:(state'=105)+(1-p82):(state'=109);
[] state =105 -> p83:(state'=106)+(1-p83):(state'=109);
[] state =106 -> v24:(state'=100);
[] state =107 -> v25:(state'=99);
[] state =108 -> v26:(state'=108);
[] state =109 -> v27:(state'=109);
endmodule 

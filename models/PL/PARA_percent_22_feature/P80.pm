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
const double p43;
const double p44;
const double p45;
const double p46;
const double p47;
const double p48;
const double p49;

const double p50;
const double p51;
const double p52;
const double p53;
const double p54;
const double p55;
const double p56;
const double p57;
const double p58;
const double p59;

const double p60;
const double p61;
const double p62;
const double p63;
const double p64;
const double p65;
const double p66;
const double p67 = 0.9973;
const double p68 = 0.9958;
const double p69 = 0.9906;


const double p70 = 0.7;
const double p71 = 0.9902;
const double p72 = 0.9968;
const double p73 = 0.9951;
const double p74 = 0.9972;
const double p75 = 0.8;
const double p76 = 0.8;
const double p77 = 0.9914;
const double p78 = 0.997;
const double p79 = 0.9975;


const double p80 = 0.9929;
const double p81 = 0.9974;
const double p82 = 0.9944;
const double p83 = 0.7;



module case 
state : [-1..115] init 0;
[] state =0 -> p1:(state'=1)+ (1-p1):(state'=30);
[] state =1 -> p2:(state'=2)+ (1-p2):(state'=5);
[] state =2 -> p3:(state'=3)+ (1-p3):(state'=113);
[] state =3 -> v1:(state'=4);
[] state =4 -> v2:(state'=2);
[] state =5 -> v3:(state'=6);
[] state =6 -> p4:(state'=7)+ (1-p4):(state'=113);
[] state =7 -> p5:(state'=8)+ (1-p5):(state'=13);
[] state =8 -> p6:(state'=9)+ (1-p6):(state'=11);
[] state =9 -> p7:(state'=10)+(1-p7):(state'=114);
[] state =10 -> p8:(state'=29)+ (1-p8):(state'=114);
[] state =11 -> p9:(state'=12)+ (1-p9):(state'=114);
[] state =12 -> p10:(state'=29)+ (1-p10):(state'=114);
[] state =13 -> p11:(state'=14)+ (1-p11):(state'=29);
[] state =14 -> p12:(state'=15)+ (1-p12):(state'=18);
[] state =15 -> p13:(state'=16)+ (1-p13):(state'=114);
[] state =16 -> p14:(state'=17)+ (1-p14):(state'=114);
[] state =17 -> v4:(state'=14);
[] state =18 -> p15:(state'=19)+ (1-p15):(state'=114);
[] state =19 -> p16:(state'=20)+ (1-p16):(state'=114);
[] state =20 -> p17:(state'=21)+ (1-p17):(state'=28);
[] state =21 -> p18:(state'=22)+ (1-p18):(state'=27);
[] state =22 -> p19:(state'=23)+ (1-p19):(state'=26);
[] state =23 -> p20:(state'=24)+ (1-p20):(state'=114);
[] state =24 -> p21:(state'=25)+ (1-p21):(state'=114);
[] state =25 -> v5:(state'=22);
[] state =26 -> v6:(state'=21);
[] state =27 -> v7:(state'=20);
[] state =28 -> v8:(state'=13);
[] state =29 -> v9:(state'=6);
[] state =30 -> p22:(state'=31)+ (1-p22):(state'=55);
[] state =31 -> v10:(state'=32);
[] state =32 -> v11:(state'=33);
[] state =33 -> p23:(state'=34)+ (1-p23):(state'=44);
[] state =34 -> p24:(state'=35)+ (1-p24):(state'=38);
[] state =35 -> p25:(state'=36)+ (1-p25):(state'=114);
[] state =36 -> p26:(state'=37)+ (1-p26):(state'=114);
[] state =37 -> v12:(state'=34);
[] state =38 -> p27:(state'=39)+ (1-p27):(state'=74);
[] state =39 -> p28:(state'=40)+ (1-p28):(state'=43);
[] state =40 -> p29:(state'=41)+ (1-p29):(state'=114);
[] state =41 -> p30:(state'=42)+ (1-p30):(state'=114);
[] state =42 -> v13:(state'=39);
[] state =43 -> v14:(state'=38);
[] state =44 -> p31:(state'=45)+ (1-p31):(state'=74);
[] state =45 -> p32:(state'=46)+ (1-p32):(state'=49);
[] state =46 -> p33:(state'=47)+ (1-p33):(state'=114);
[] state =47 -> p34:(state'=48)+ (1-p34):(state'=114);
[] state =48 -> v15:(state'=45);
[] state =49 -> p35:(state'=50)+ (1-p35):(state'=52);
[] state =50 -> p36:(state'=51)+ (1-p36):(state'=114);
[] state =51 -> p37:(state'=54)+ (1-p37):(state'=114);
[] state =52 -> p38:(state'=53)+ (1-p38):(state'=114);
[] state =53 -> p39:(state'=54)+ (1-p39):(state'=114);
[] state =54 -> v16:(state'=44);
[] state =55 -> p40:(state'=56)+ (1-p40):(state'=72);
[] state =56 -> p41:(state'=57)+ (1-p41):(state'=59);
[] state =57 -> p42:(state'=58)+ (1-p42):(state'=114);
[] state =58 -> p43:(state'=61)+ (1-p43):(state'=114);
[] state =59 -> p44:(state'=60)+ (1-p44):(state'=114);
[] state =60 -> p45:(state'=61)+ (1-p45):(state'=114);
[] state =61 -> p46:(state'=62)+ (1-p46):(state'=114);
[] state =62 -> p47:(state'=63)+ (1-p47):(state'=114);
[] state =63 -> p48:(state'=64)+ (1-p48):(state'=114);
[] state =64 -> p49:(state'=65)+ (1-p49):(state'=114);
[] state =65 -> p50:(state'=66)+ (1-p50):(state'=71);
[] state =66 -> p51:(state'=67)+ (1-p51):(state'=70);
[] state =67 -> p52:(state'=68)+ (1-p52):(state'=114);
[] state =68 -> p53:(state'=69)+ (1-p53):(state'=114);
[] state =69 -> v17:(state'=66);
[] state =70 -> v18:(state'=65);
[] state =71 -> v19:(state'=73);
[] state =72 -> v20:(state'=73);
[] state =73 -> v21:(state'=74);
[] state =74 -> p54:(state'=75)+ (1-p54):(state'=109);
[] state =75 -> v22:(state'=76);
[] state =76 -> p55:(state'=77)+ (1-p55):(state'=94);
[] state =77 -> p56:(state'=78)+ (1-p56):(state'=91);
[] state =78 -> p57:(state'=79)+ (1-p57):(state'=81);
[] state =79 -> p58:(state'=80)+ (1-p58):(state'=114);
[] state =80 -> p59:(state'=89)+ (1-p59):(state'=114);
[] state =81 -> p60:(state'=82)+ (1-p60):(state'=84);
[] state =82 -> p61:(state'=83)+ (1-p61):(state'=114);
[] state =83 -> p62:(state'=89)+ (1-p62):(state'=114);
[] state =84 -> p63:(state'=85)+ (1-p63):(state'=87);
[] state =85 -> p64:(state'=86)+ (1-p64):(state'=114);
[] state =86 -> p65:(state'=89)+ (1-p65):(state'=114);
[] state =87 -> p66:(state'=88)+ (1-p66):(state'=114);
[] state =88 -> p67:(state'=89)+ (1-p67):(state'=114);
[] state =89 -> p68:(state'=90)+ (1-p68):(state'=114);
[] state =90 -> p69:(state'=108)+ (1-p69):(state'=114);
[] state =91 -> p70:(state'=92)+ (1-p70):(state'=108);
[] state =92 -> v23:(state'=93);
[] state =93 -> v24:(state'=91);
[] state =94 -> p71:(state'=95)+ (1-p71):(state'=114);
[] state =95 -> p72:(state'=96)+ (1-p72):(state'=114);
[] state =96 -> p73:(state'=97)+ (1-p73):(state'=114);
[] state =97 -> p74:(state'=98)+ (1-p74):(state'=114);
[] state =98 -> p75:(state'=99)+ (1-p75):(state'=108);
[] state =99 -> p76:(state'=100)+ (1-p76):(state'=107);
[] state =100 -> p77:(state'=101)+ (1-p77):(state'=114);
[] state =101 -> p78:(state'=102)+ (1-p78):(state'=114);
[] state =102 -> p79:(state'=103)+ (1-p79):(state'=114);
[] state =103 -> p80:(state'=104)+ (1-p80):(state'=114);
[] state =104 -> p81:(state'=105)+ (1-p81):(state'=114);
[] state =105 -> p82:(state'=106)+ (1-p82):(state'=114);
[] state =106 -> v25:(state'=99);
[] state =107 -> v26:(state'=98);
[] state =108 -> v27:(state'=74);
[] state =109 -> p83:(state'=110)+ (1-p83):(state'=112);
[] state =110 -> v28:(state'=111);
[] state =111 -> v29:(state'=109);
[] state =112 -> v30:(state'=113);
[] state =113 -> v31:(state'=113);
[] state =114 -> v32:(state'=114);
endmodule 

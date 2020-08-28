//MonoGenerator Tool Version 1.0
//August 2017
//Annotated model for FXWorkflow.
//MODEL_PARAMETERS
//prob, cost, time
//MODEL_PATTERNS
//1:PAR-5;2:PAR-5;3:PAR-5;4:PAR-5;5:PAR-5;6:PAR-5
//MONOLITHIC
//1,2,9;2,7,9;3,6,9;4,8,9;5,6,9;6,10,9
dtmc
const int INITSTATE = 0;
const int OP1 = 1;
const int OP2 = 2;
const int OP3   = 3;
const int OP4   = 4;
const int OP5   = 5;
const int OP6   = 6;
const int TA_RESULT = 7;
const int FA_RESULT = 8;
const int WF_FAIL=9;
const int WF_SUCC=10;


//const double prob1;

//const double prob2;

//const double prob3;

//const double prob4;

//const double prob5;

//const double prob6;

//const double cost1;

//const double cost2;

//const double cost3;

//const double cost4;

//const double cost5;

//const double cost6;

//const double time1;

//const double time2;

//const double time3;

//const double time4;

//const double time5;

//const double time6;


const double x;
const double y1;
const double y2;
const double z1;
const double z2;

const double p11;
const double c11=0;
const double t11=0;
const double p12;
const double c12=0;
const double t12=0;
const double p13;
const double c13=0;
const double t13=0;
const double p14;
const double c14=0;
const double t14=0;
const double p15;
const double c15=0;
const double t15=0;

const double p21;
const double c21=0;
const double t21=0;
const double p22;
const double c22=0;
const double t22=0;
const double p23;
const double c23=0;
const double t23=0;
const double p24;
const double c24=0;
const double t24=0;
const double p25;
const double c25=0;
const double t25=0;

const double p31;
const double c31=0;
const double t31=0;
const double p32;
const double c32=0;
const double t32=0;
const double p33;
const double c33=0;
const double t33=0;
const double p34;
const double c34=0;
const double t34=0;
const double p35;
const double c35=0;
const double t35=0;

const double p41;
const double c41=0;
const double t41=0;
const double p42;
const double c42=0;
const double t42=0;
const double p43;
const double c43=0;
const double t43=0;
const double p44;
const double c44=0;
const double t44=0;
const double p45;
const double c45=0;
const double t45=0;

const double p51;
const double c51=0;
const double t51=0;
const double p52;
const double c52=0;
const double t52=0;
const double p53;
const double c53=0;
const double t53=0;
const double p54;
const double c54=0;
const double t54=0;
const double p55;
const double c55=0;
const double t55=0;

const double p61;
const double c61=0;
const double t61=0;
const double p62;
const double c62=0;
const double t62=0;
const double p63;
const double c63=0;
const double t63=0;
const double p64;
const double c64=0;
const double t64=0;
const double p65;
const double c65=0;
const double t65=0;

module fx
inter : [1..2] init 1;
state : [0..11] init 0;
//Init
[choice] state = INITSTATE -> x : (state'=OP1) + (1-x) : (state'=OP4);
//Technical analysis result
[taResult] state=TA_RESULT-> y2:(state'=OP1)+y1:(state'=OP5)+(1-y1-y2):(state'=OP3);
//Fundamental analysis result
[faresult] state=FA_RESULT->z2:(state'=INITSTATE)+z1:(state'=OP5)+(1-z1-z2):(state'=OP4);//succ op4
//success or failure of workflow.
[success] state = WF_SUCC -> 1.0:(state'=INITSTATE);
[failure] state=WF_FAIL->1.0:(state'=WF_FAIL);//failed fx


//Op1: Market watch

//[marketwatch] state = OP1->prob1:(state'=OP2)+(1-prob1):(state'=WF_FAIL);  //invoke op1
//Op2: Technical Analysis

//[techanalysis]state = OP2->prob2:(state'=TA_RESULT)+(1-prob2):(state'=WF_FAIL);//invoke op2
//Op3: Alarm

//[alarm] state=OP3->prob3:(state'=OP6)+(1-prob3):(state'=WF_FAIL);
//Op4: Fundamental Analysis

//[fundanalysis] state=OP4->prob4:(state'=FA_RESULT)+(1-prob4):(state'=WF_FAIL);
//Op5: Place Order

//[placeorder]state=OP5->prob5:(state'=OP6)+(1-prob5):(state'=WF_FAIL);
//Op6: Notify trader

//[notification]state=OP6->prob6:(state'=WF_SUCC)+(1-prob6):(state'=WF_FAIL);

[op1] (state=1) -> (inter'=2);
//if at least one service was successful go to the next operation.
[succ1]((s11=2)|(s12=2)|(s13=2)|(s14=2)|(s15=2))&(inter=2) -> (state'=2)&(inter'=1);
[fail1]((s11=3)&(s12=3)&(s13=3)&(s14=3)&(s15=3))&(inter=2) -> (state'=9)&(inter'=1);
[op2] (state=2) -> (inter'=2);
//if at least one service was successful go to the next operation.
[succ2]((s21=2)|(s22=2)|(s23=2)|(s24=2)|(s25=2))&(inter=2) -> (state'=7)&(inter'=1);
[fail2]((s21=3)&(s22=3)&(s23=3)&(s24=3)&(s25=3))&(inter=2) -> (state'=9)&(inter'=1);
[op3] (state=3) -> (inter'=2);
//if at least one service was successful go to the next operation.
[succ3]((s31=2)|(s32=2)|(s33=2)|(s34=2)|(s35=2))&(inter=2) -> (state'=6)&(inter'=1);
[fail3]((s31=3)&(s32=3)&(s33=3)&(s34=3)&(s35=3))&(inter=2) -> (state'=9)&(inter'=1);
[op4] (state=4) -> (inter'=2);
//if at least one service was successful go to the next operation.
[succ4]((s41=2)|(s42=2)|(s43=2)|(s44=2)|(s45=2))&(inter=2) -> (state'=8)&(inter'=1);
[fail4]((s41=3)&(s42=3)&(s43=3)&(s44=3)&(s45=3))&(inter=2) -> (state'=9)&(inter'=1);
[op5] (state=5) -> (inter'=2);
//if at least one service was successful go to the next operation.
[succ5]((s51=2)|(s52=2)|(s53=2)|(s54=2)|(s55=2))&(inter=2) -> (state'=6)&(inter'=1);
[fail5]((s51=3)&(s52=3)&(s53=3)&(s54=3)&(s55=3))&(inter=2) -> (state'=9)&(inter'=1);
[op6] (state=6) -> (inter'=2);
//if at least one service was successful go to the next operation.
[succ6]((s61=2)|(s62=2)|(s63=2)|(s64=2)|(s65=2))&(inter=2) -> (state'=10)&(inter'=1);
[fail6]((s61=3)&(s62=3)&(s63=3)&(s64=3)&(s65=3))&(inter=2) -> (state'=9)&(inter'=1);
endmodule



//rewards "time"

//     state=OP1 : time1;

//     state=OP2 : time2;

//     state=OP3 : time3;

//     state=OP4 : time4;

//     state=OP5 : time5;

//     state=OP6 : time6;

//endrewards


//rewards "cost"

//     state=OP1 : cost1;

//     state=OP2 : cost2;

//     state=OP3 : cost3;

//     state=OP4 : cost4;

//     state=OP5 : cost5;

//     state=OP6 : cost6;

//endrewards

//parallel invocation modules
module PAR11
s11 : [1..3] init 1;
[op1] (state= 1)&(s11=1)->p11:(s11'=2)+ (1 - p11):(s11'=3);
[succ1] true -> (s11'= 1);
endmodule
module PAR12
s12 : [1..3] init 1;
[op1] (state= 1)&(s12=1)->p12:(s12'=2)+ (1 - p12):(s12'=3);
[succ1] true -> (s12'= 1);
endmodule
module PAR13
s13 : [1..3] init 1;
[op1] (state= 1)&(s13=1)->p13:(s13'=2)+ (1 - p13):(s13'=3);
[succ1] true -> (s13'= 1);
endmodule
module PAR14
s14 : [1..3] init 1;
[op1] (state= 1)&(s14=1)->p14:(s14'=2)+ (1 - p14):(s14'=3);
[succ1] true -> (s14'= 1);
endmodule
module PAR15
s15 : [1..3] init 1;
[op1] (state= 1)&(s15=1)->p15:(s15'=2)+ (1 - p15):(s15'=3);
[succ1] true -> (s15'= 1);
endmodule

//parallel invocation modules
module PAR21
s21 : [1..3] init 1;
[op2] (state= 2)&(s21=1)->p21:(s21'=2)+ (1 - p21):(s21'=3);
[succ2] true -> (s21'= 1);
endmodule
module PAR22
s22 : [1..3] init 1;
[op2] (state= 2)&(s22=1)->p22:(s22'=2)+ (1 - p22):(s22'=3);
[succ2] true -> (s22'= 1);
endmodule
module PAR23
s23 : [1..3] init 1;
[op2] (state= 2)&(s23=1)->p23:(s23'=2)+ (1 - p23):(s23'=3);
[succ2] true -> (s23'= 1);
endmodule
module PAR24
s24 : [1..3] init 1;
[op2] (state= 2)&(s24=1)->p24:(s24'=2)+ (1 - p24):(s24'=3);
[succ2] true -> (s24'= 1);
endmodule
module PAR25
s25 : [1..3] init 1;
[op2] (state= 2)&(s25=1)->p25:(s25'=2)+ (1 - p25):(s25'=3);
[succ2] true -> (s25'= 1);
endmodule

//parallel invocation modules
module PAR31
s31 : [1..3] init 1;
[op3] (state= 3)&(s31=1)->p31:(s31'=2)+ (1 - p31):(s31'=3);
[succ3] true -> (s31'= 1);
endmodule
module PAR32
s32 : [1..3] init 1;
[op3] (state= 3)&(s32=1)->p32:(s32'=2)+ (1 - p32):(s32'=3);
[succ3] true -> (s32'= 1);
endmodule
module PAR33
s33 : [1..3] init 1;
[op3] (state= 3)&(s33=1)->p33:(s33'=2)+ (1 - p33):(s33'=3);
[succ3] true -> (s33'= 1);
endmodule
module PAR34
s34 : [1..3] init 1;
[op3] (state= 3)&(s34=1)->p34:(s34'=2)+ (1 - p34):(s34'=3);
[succ3] true -> (s34'= 1);
endmodule
module PAR35
s35 : [1..3] init 1;
[op3] (state= 3)&(s35=1)->p35:(s35'=2)+ (1 - p35):(s35'=3);
[succ3] true -> (s35'= 1);
endmodule

//parallel invocation modules
module PAR41
s41 : [1..3] init 1;
[op4] (state= 4)&(s41=1)->p41:(s41'=2)+ (1 - p41):(s41'=3);
[succ4] true -> (s41'= 1);
endmodule
module PAR42
s42 : [1..3] init 1;
[op4] (state= 4)&(s42=1)->p42:(s42'=2)+ (1 - p42):(s42'=3);
[succ4] true -> (s42'= 1);
endmodule
module PAR43
s43 : [1..3] init 1;
[op4] (state= 4)&(s43=1)->p43:(s43'=2)+ (1 - p43):(s43'=3);
[succ4] true -> (s43'= 1);
endmodule
module PAR44
s44 : [1..3] init 1;
[op4] (state= 4)&(s44=1)->p44:(s44'=2)+ (1 - p44):(s44'=3);
[succ4] true -> (s44'= 1);
endmodule
module PAR45
s45 : [1..3] init 1;
[op4] (state= 4)&(s45=1)->p45:(s45'=2)+ (1 - p45):(s45'=3);
[succ4] true -> (s45'= 1);
endmodule

//parallel invocation modules
module PAR51
s51 : [1..3] init 1;
[op5] (state= 5)&(s51=1)->p51:(s51'=2)+ (1 - p51):(s51'=3);
[succ5] true -> (s51'= 1);
endmodule
module PAR52
s52 : [1..3] init 1;
[op5] (state= 5)&(s52=1)->p52:(s52'=2)+ (1 - p52):(s52'=3);
[succ5] true -> (s52'= 1);
endmodule
module PAR53
s53 : [1..3] init 1;
[op5] (state= 5)&(s53=1)->p53:(s53'=2)+ (1 - p53):(s53'=3);
[succ5] true -> (s53'= 1);
endmodule
module PAR54
s54 : [1..3] init 1;
[op5] (state= 5)&(s54=1)->p54:(s54'=2)+ (1 - p54):(s54'=3);
[succ5] true -> (s54'= 1);
endmodule
module PAR55
s55 : [1..3] init 1;
[op5] (state= 5)&(s55=1)->p55:(s55'=2)+ (1 - p55):(s55'=3);
[succ5] true -> (s55'= 1);
endmodule

//parallel invocation modules
module PAR61
s61 : [1..3] init 1;
[op6] (state= 6)&(s61=1)->p61:(s61'=2)+ (1 - p61):(s61'=3);
[succ6] true -> (s61'= 1);
endmodule
module PAR62
s62 : [1..3] init 1;
[op6] (state= 6)&(s62=1)->p62:(s62'=2)+ (1 - p62):(s62'=3);
[succ6] true -> (s62'= 1);
endmodule
module PAR63
s63 : [1..3] init 1;
[op6] (state= 6)&(s63=1)->p63:(s63'=2)+ (1 - p63):(s63'=3);
[succ6] true -> (s63'= 1);
endmodule
module PAR64
s64 : [1..3] init 1;
[op6] (state= 6)&(s64=1)->p64:(s64'=2)+ (1 - p64):(s64'=3);
[succ6] true -> (s64'= 1);
endmodule
module PAR65
s65 : [1..3] init 1;
[op6] (state= 6)&(s65=1)->p65:(s65'=2)+ (1 - p65):(s65'=3);
[succ6] true -> (s65'= 1);
endmodule
rewards "time"

 (state=1)&(inter=1): p11*t11+p12*t12*(1-p11)+p13*t13*(1-p11)*(1-p12)+p14*t14*(1-p11)*(1-p12)*(1-p13)+p15*t15*(1-p11)*(1-p12)*(1-p13)*(1-p14);
 (state=2)&(inter=1): p21*t21+p22*t22*(1-p21)+p23*t23*(1-p21)*(1-p22)+p24*t24*(1-p21)*(1-p22)*(1-p23)+p25*t25*(1-p21)*(1-p22)*(1-p23)*(1-p24);
 (state=3)&(inter=1): p31*t31+p32*t32*(1-p31)+p33*t33*(1-p31)*(1-p32)+p34*t34*(1-p31)*(1-p32)*(1-p33)+p35*t35*(1-p31)*(1-p32)*(1-p33)*(1-p34);
 (state=4)&(inter=1): p41*t41+p42*t42*(1-p41)+p43*t43*(1-p41)*(1-p42)+p44*t44*(1-p41)*(1-p42)*(1-p43)+p45*t45*(1-p41)*(1-p42)*(1-p43)*(1-p44);
 (state=5)&(inter=1): p51*t51+p52*t52*(1-p51)+p53*t53*(1-p51)*(1-p52)+p54*t54*(1-p51)*(1-p52)*(1-p53)+p55*t55*(1-p51)*(1-p52)*(1-p53)*(1-p54);
 (state=6)&(inter=1): p61*t61+p62*t62*(1-p61)+p63*t63*(1-p61)*(1-p62)+p64*t64*(1-p61)*(1-p62)*(1-p63)+p65*t65*(1-p61)*(1-p62)*(1-p63)*(1-p64);
endrewards

rewards "cost"

 (state=1)&(s11=1):c11;
 (state=1)&(s12=1):c12;
 (state=1)&(s13=1):c13;
 (state=1)&(s14=1):c14;
 (state=1)&(s15=1):c15;
 (state=2)&(s21=1):c21;
 (state=2)&(s22=1):c22;
 (state=2)&(s23=1):c23;
 (state=2)&(s24=1):c24;
 (state=2)&(s25=1):c25;
 (state=3)&(s31=1):c31;
 (state=3)&(s32=1):c32;
 (state=3)&(s33=1):c33;
 (state=3)&(s34=1):c34;
 (state=3)&(s35=1):c35;
 (state=4)&(s41=1):c41;
 (state=4)&(s42=1):c42;
 (state=4)&(s43=1):c43;
 (state=4)&(s44=1):c44;
 (state=4)&(s45=1):c45;
 (state=5)&(s51=1):c51;
 (state=5)&(s52=1):c52;
 (state=5)&(s53=1):c53;
 (state=5)&(s54=1):c54;
 (state=5)&(s55=1):c55;
 (state=6)&(s61=1):c61;
 (state=6)&(s62=1):c62;
 (state=6)&(s63=1):c63;
 (state=6)&(s64=1):c64;
 (state=6)&(s65=1):c65;
endrewards



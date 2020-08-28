//MonoGenerator Tool Version 1.0
//August 2017
//Annotated model for FXWorkflow.
//MODEL_PARAMETERS
//prob, cost, time
//MODEL_PATTERNS
//1:PAR-2;2:PAR-2;3:PAR-2;4:PAR-2;5:PAR-2;6:PAR-2
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

const double p21;
const double c21=0;
const double t21=0;
const double p22;
const double c22=0;
const double t22=0;

const double p31;
const double c31=0;
const double t31=0;
const double p32;
const double c32=0;
const double t32=0;

const double p41;
const double c41=0;
const double t41=0;
const double p42;
const double c42=0;
const double t42=0;

const double p51;
const double c51=0;
const double t51=0;
const double p52;
const double c52=0;
const double t52=0;

const double p61;
const double c61=0;
const double t61=0;
const double p62;
const double c62=0;
const double t62=0;

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
[succ1]((s11=2)|(s12=2))&(inter=2) -> (state'=2)&(inter'=1);
[fail1]((s11=3)&(s12=3))&(inter=2) -> (state'=9)&(inter'=1);
[op2] (state=2) -> (inter'=2);
//if at least one service was successful go to the next operation.
[succ2]((s21=2)|(s22=2))&(inter=2) -> (state'=7)&(inter'=1);
[fail2]((s21=3)&(s22=3))&(inter=2) -> (state'=9)&(inter'=1);
[op3] (state=3) -> (inter'=2);
//if at least one service was successful go to the next operation.
[succ3]((s31=2)|(s32=2))&(inter=2) -> (state'=6)&(inter'=1);
[fail3]((s31=3)&(s32=3))&(inter=2) -> (state'=9)&(inter'=1);
[op4] (state=4) -> (inter'=2);
//if at least one service was successful go to the next operation.
[succ4]((s41=2)|(s42=2))&(inter=2) -> (state'=8)&(inter'=1);
[fail4]((s41=3)&(s42=3))&(inter=2) -> (state'=9)&(inter'=1);
[op5] (state=5) -> (inter'=2);
//if at least one service was successful go to the next operation.
[succ5]((s51=2)|(s52=2))&(inter=2) -> (state'=6)&(inter'=1);
[fail5]((s51=3)&(s52=3))&(inter=2) -> (state'=9)&(inter'=1);
[op6] (state=6) -> (inter'=2);
//if at least one service was successful go to the next operation.
[succ6]((s61=2)|(s62=2))&(inter=2) -> (state'=10)&(inter'=1);
[fail6]((s61=3)&(s62=3))&(inter=2) -> (state'=9)&(inter'=1);
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
rewards "time"

 (state=1)&(inter=1): p11*t11+p12*t12*(1-p11);
 (state=2)&(inter=1): p21*t21+p22*t22*(1-p21);
 (state=3)&(inter=1): p31*t31+p32*t32*(1-p31);
 (state=4)&(inter=1): p41*t41+p42*t42*(1-p41);
 (state=5)&(inter=1): p51*t51+p52*t52*(1-p51);
 (state=6)&(inter=1): p61*t61+p62*t62*(1-p61);
endrewards

rewards "cost"

 (state=1)&(s11=1):c11;
 (state=1)&(s12=1):c12;
 (state=2)&(s21=1):c21;
 (state=2)&(s22=1):c22;
 (state=3)&(s31=1):c31;
 (state=3)&(s32=1):c32;
 (state=4)&(s41=1):c41;
 (state=4)&(s42=1):c42;
 (state=5)&(s51=1):c51;
 (state=5)&(s52=1):c52;
 (state=6)&(s61=1):c61;
 (state=6)&(s62=1):c62;
endrewards



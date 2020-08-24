//MonoGenerator Tool Version 1.0
//August 2017
//Annotated model for FXWorkflow.
//MODEL_PARAMETERS
//prob, cost, time
//MODEL_PATTERNS
//1:PROB-2;2:PROB-2;3:PROB-2;4:PROB-2;5:PROB-2;6:PROB-2
//MONOLITHIC
//1,2,9;2,7,9;3,6,9;4,8,9;5,6,9;6,10,9
dtmc
const int INITs = 0;
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
const double z11 ;
const double z12 ;

const double p21;
const double c21=0;
const double t21=0;
const double p22;
const double c22=0;
const double t22=0;
const double z21 ;
const double z22 ;

const double p31;
const double c31=0;
const double t31=0;
const double p32;
const double c32=0;
const double t32=0;
const double z31 ;
const double z32 ;

const double p41;
const double c41=0;
const double t41=0;
const double p42;
const double c42=0;
const double t42=0;
const double z41 ;
const double z42 ;

const double p51;
const double c51=0;
const double t51=0;
const double p52;
const double c52=0;
const double t52=0;
const double z51 ;
const double z52 ;

const double p61;
const double c61=0;
const double t61=0;
const double p62;
const double c62=0;
const double t62=0;
const double z61 ;
const double z62 ;

module fx
inter : [1..2] init 1;
op1 : [0..2] init 0;
op2 : [0..2] init 0;
op3 : [0..2] init 0;
op4 : [0..2] init 0;
op5 : [0..2] init 0;
op6 : [0..2] init 0;
s : [0..11] init 0;
//Init
[choice] s = INITs -> x : (s'=OP1) + (1-x) : (s'=OP4);
//Technical analysis result
[taResult] s=TA_RESULT-> y2:(s'=OP1)+y1:(s'=OP5)+(1-y1-y2):(s'=OP3);
//Fundamental analysis result
[faresult] s=FA_RESULT->z2:(s'=INITs)+z1:(s'=OP5)+(1-z1-z2):(s'=OP4);//succ op4
//success or failure of workflow.
[success] s = WF_SUCC -> 1.0:(s'=INITs);
[failure] s=WF_FAIL->1.0:(s'=WF_FAIL);//failed fx


//Op1: Market watch

//[marketwatch] s = OP1->prob1:(s'=OP2)+(1-prob1):(s'=WF_FAIL);  //invoke op1
//Op2: Technical Analysis

//[techanalysis]s = OP2->prob2:(s'=TA_RESULT)+(1-prob2):(s'=WF_FAIL);//invoke op2
//Op3: Alarm

//[alarm] s=OP3->prob3:(s'=OP6)+(1-prob3):(s'=WF_FAIL);
//Op4: Fundamental Analysis

//[fundanalysis] s=OP4->prob4:(s'=FA_RESULT)+(1-prob4):(s'=WF_FAIL);
//Op5: Place Order

//[placeorder]s=OP5->prob5:(s'=OP6)+(1-prob5):(s'=WF_FAIL);
//Op6: Notify trader

//[notification]s=OP6->prob6:(s'=WF_SUCC)+(1-prob6):(s'=WF_FAIL);

[choice1] (s=1)&(op1=0) -> z11:(op1'=1)+z12:(op1'=2);
[op11](s=1)&(op1=1) -> p11:(s'=2)&(op1'=0) + (1-p11):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op12](s=1)&(op1=2) -> p12:(s'=2)&(op1'=0) + (1-p12):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[choice2] (s=2)&(op2=0) -> z21:(op2'=1)+z22:(op2'=2);
[op21](s=2)&(op2=1) -> p21:(s'=7)&(op2'=0) + (1-p21):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op22](s=2)&(op2=2) -> p22:(s'=7)&(op2'=0) + (1-p22):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[choice3] (s=3)&(op3=0) -> z31:(op3'=1)+z32:(op3'=2);
[op31](s=3)&(op3=1) -> p31:(s'=6)&(op3'=0) + (1-p31):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op32](s=3)&(op3=2) -> p32:(s'=6)&(op3'=0) + (1-p32):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[choice4] (s=4)&(op4=0) -> z41:(op4'=1)+z42:(op4'=2);
[op41](s=4)&(op4=1) -> p41:(s'=8)&(op4'=0) + (1-p41):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op42](s=4)&(op4=2) -> p42:(s'=8)&(op4'=0) + (1-p42):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[choice5] (s=5)&(op5=0) -> z51:(op5'=1)+z52:(op5'=2);
[op51](s=5)&(op5=1) -> p51:(s'=6)&(op5'=0) + (1-p51):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op52](s=5)&(op5=2) -> p52:(s'=6)&(op5'=0) + (1-p52):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[choice6] (s=6)&(op6=0) -> z61:(op6'=1)+z62:(op6'=2);
[op61](s=6)&(op6=1) -> p61:(s'=10)&(op6'=0) + (1-p61):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op62](s=6)&(op6=2) -> p62:(s'=10)&(op6'=0) + (1-p62):(s'=9)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
endmodule





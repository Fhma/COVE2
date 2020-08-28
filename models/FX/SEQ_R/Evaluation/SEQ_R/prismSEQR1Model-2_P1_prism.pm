//MonoGenerator Tool Version 1.0
//August 2017
//Annotated model for FXWorkflow.
//MODEL_PARAMETERS
//prob, cost, time
//MODEL_PATTERNS
//1:SEQR1-2;2:SEQR1-2;3:SEQR1-2;4:SEQR1-2;5:SEQR1-2;6:SEQR1-2
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


const double x=0.45;
const double y1=0.45;
const double y2=0.45;
const double z1=0.45;
const double z2=0.45;

const double p11=0.45;
const double c11=0;
const double t11=0;
const double p12=0.45;
const double c12=0;
const double t12=0;
const double r11 =0.45;
const double r12 =0.45;

const double p21=0.45;
const double c21=0;
const double t21=0;
const double p22=0.45;
const double c22=0;
const double t22=0;
const double r21 =0.45;
const double r22 =0.45;

const double p31=0.45;
const double c31=0;
const double t31=0;
const double p32=0.45;
const double c32=0;
const double t32=0;
const double r31 =0.45;
const double r32 =0.45;

const double p41=0.45;
const double c41=0;
const double t41=0;
const double p42=0.45;
const double c42=0;
const double t42=0;
const double r41 =0.45;
const double r42 =0.45;

const double p51=0.45;
const double c51=0;
const double t51=0;
const double p52=0.45;
const double c52=0;
const double t52=0;
const double r51 =0.45;
const double r52 =0.45;

const double p61=0.45;
const double c61=0;
const double t61=0;
const double p62=0.45;
const double c62=0;
const double t62=0;
const double r61 =0.45;
const double r62 =0.45;

module fx
inter : [1..2] init 1;
retry : [1..2] init 1;
op1 : [1..2] init 1;
op2 : [1..2] init 1;
op3 : [1..2] init 1;
op4 : [1..2] init 1;
op5 : [1..2] init 1;
op6 : [1..2] init 1;
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

[op11](state=1)&(retry=1)&(op1=1) -> p11:(state'=2)&(retry'=1)&(op1'=1) + (1-p11):(retry'=2);
[op11r] (state=1)&(op1=1)&(retry=2) -> r11:(state'=1)&(op1'=1)&(retry'=1) + (1-r11):(op1'=2)&(retry'=1);
[op12](state=1)&(retry=1)&(op1=2) -> p12:(state'=2)&(retry'=1)&(op1'=1) + (1-p12):(retry'=2);
[op12r] (state=1)&(op1=2)&(retry=2) -> r12:(state'=1)&(op1'=2)&(retry'=1) + (1-r12):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
[op21](state=2)&(retry=1)&(op2=1) -> p21:(state'=7)&(retry'=1)&(op2'=1) + (1-p21):(retry'=2);
[op21r] (state=2)&(op2=1)&(retry=2) -> r21:(state'=2)&(op2'=1)&(retry'=1) + (1-r21):(op2'=2)&(retry'=1);
[op22](state=2)&(retry=1)&(op2=2) -> p22:(state'=7)&(retry'=1)&(op2'=1) + (1-p22):(retry'=2);
[op22r] (state=2)&(op2=2)&(retry=2) -> r22:(state'=2)&(op2'=2)&(retry'=1) + (1-r22):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
[op31](state=3)&(retry=1)&(op3=1) -> p31:(state'=6)&(retry'=1)&(op3'=1) + (1-p31):(retry'=2);
[op31r] (state=3)&(op3=1)&(retry=2) -> r31:(state'=3)&(op3'=1)&(retry'=1) + (1-r31):(op3'=2)&(retry'=1);
[op32](state=3)&(retry=1)&(op3=2) -> p32:(state'=6)&(retry'=1)&(op3'=1) + (1-p32):(retry'=2);
[op32r] (state=3)&(op3=2)&(retry=2) -> r32:(state'=3)&(op3'=2)&(retry'=1) + (1-r32):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
[op41](state=4)&(retry=1)&(op4=1) -> p41:(state'=8)&(retry'=1)&(op4'=1) + (1-p41):(retry'=2);
[op41r] (state=4)&(op4=1)&(retry=2) -> r41:(state'=4)&(op4'=1)&(retry'=1) + (1-r41):(op4'=2)&(retry'=1);
[op42](state=4)&(retry=1)&(op4=2) -> p42:(state'=8)&(retry'=1)&(op4'=1) + (1-p42):(retry'=2);
[op42r] (state=4)&(op4=2)&(retry=2) -> r42:(state'=4)&(op4'=2)&(retry'=1) + (1-r42):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
[op51](state=5)&(retry=1)&(op5=1) -> p51:(state'=6)&(retry'=1)&(op5'=1) + (1-p51):(retry'=2);
[op51r] (state=5)&(op5=1)&(retry=2) -> r51:(state'=5)&(op5'=1)&(retry'=1) + (1-r51):(op5'=2)&(retry'=1);
[op52](state=5)&(retry=1)&(op5=2) -> p52:(state'=6)&(retry'=1)&(op5'=1) + (1-p52):(retry'=2);
[op52r] (state=5)&(op5=2)&(retry=2) -> r52:(state'=5)&(op5'=2)&(retry'=1) + (1-r52):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
[op61](state=6)&(retry=1)&(op6=1) -> p61:(state'=10)&(retry'=1)&(op6'=1) + (1-p61):(retry'=2);
[op61r] (state=6)&(op6=1)&(retry=2) -> r61:(state'=6)&(op6'=1)&(retry'=1) + (1-r61):(op6'=2)&(retry'=1);
[op62](state=6)&(retry=1)&(op6=2) -> p62:(state'=10)&(retry'=1)&(op6'=1) + (1-p62):(retry'=2);
[op62r] (state=6)&(op6=2)&(retry=2) -> r62:(state'=6)&(op6'=2)&(retry'=1) + (1-r62):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
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
rewards "time"

   (retry=1)&  state=1&(op1=1) : t11;
   (retry=1)&  state=1&(op1=2) : t12;
   (retry=1)&  state=2&(op2=1) : t21;
   (retry=1)&  state=2&(op2=2) : t22;
   (retry=1)&  state=3&(op3=1) : t31;
   (retry=1)&  state=3&(op3=2) : t32;
   (retry=1)&  state=4&(op4=1) : t41;
   (retry=1)&  state=4&(op4=2) : t42;
   (retry=1)&  state=5&(op5=1) : t51;
   (retry=1)&  state=5&(op5=2) : t52;
   (retry=1)&  state=6&(op6=1) : t61;
   (retry=1)&  state=6&(op6=2) : t62;
endrewards

rewards "cost"

   (retry=1)&  state=1&(op1=1) : c11;
   (retry=1)&  state=1&(op1=2) : c12;
   (retry=1)&  state=2&(op2=1) : c21;
   (retry=1)&  state=2&(op2=2) : c22;
   (retry=1)&  state=3&(op3=1) : c31;
   (retry=1)&  state=3&(op3=2) : c32;
   (retry=1)&  state=4&(op4=1) : c41;
   (retry=1)&  state=4&(op4=2) : c42;
   (retry=1)&  state=5&(op5=1) : c51;
   (retry=1)&  state=5&(op5=2) : c52;
   (retry=1)&  state=6&(op6=1) : c61;
   (retry=1)&  state=6&(op6=2) : c62;
endrewards



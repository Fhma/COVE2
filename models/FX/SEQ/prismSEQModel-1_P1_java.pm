//MonoGenerator Tool Version 1.0
//August 2017
//Annotated model for FXWorkflow.
//MODEL_PARAMETERS
//prob, cost, time
//MODEL_PATTERNS
//1:SEQ-1;2:SEQ-1;3:SEQ-1;4:SEQ-1;5:SEQ-1;6:SEQ-1
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

const double p21;
const double c21=0;
const double t21=0;

const double p31;
const double c31=0;
const double t31=0;

const double p41;
const double c41=0;
const double t41=0;

const double p51;
const double c51=0;
const double t51=0;

const double p61;
const double c61=0;
const double t61=0;

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

//Each operation in the workflow can be retried after a failure.
[op1] (state=1) -> p11:(state'=2) + (1- p11):(state'=9);
//Each operation in the workflow can be retried after a failure.
[op2] (state=2) -> p21:(state'=7) + (1- p21):(state'=9);
//Each operation in the workflow can be retried after a failure.
[op3] (state=3) -> p31:(state'=6) + (1- p31):(state'=9);
//Each operation in the workflow can be retried after a failure.
[op4] (state=4) -> p41:(state'=8) + (1- p41):(state'=9);
//Each operation in the workflow can be retried after a failure.
[op5] (state=5) -> p51:(state'=6) + (1- p51):(state'=9);
//Each operation in the workflow can be retried after a failure.
[op6] (state=6) -> p61:(state'=10) + (1- p61):(state'=9);
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

     state=1 : t11;
     state=2 : t21;
     state=3 : t31;
     state=4 : t41;
     state=5 : t51;
     state=6 : t61;
endrewards

rewards "cost"

  state=1 : c11;
  state=2 : c21;
  state=3 : c31;
  state=4 : c41;
  state=5 : c51;
  state=6 : c61;
endrewards



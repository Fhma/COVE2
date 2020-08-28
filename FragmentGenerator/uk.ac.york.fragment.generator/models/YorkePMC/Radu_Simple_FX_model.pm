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

const double x;
const double y1;
const double y2;
const double z1;
const double z2;

const double p11;
const double p21;
const double p31;
const double p41;
const double p51;
const double p61;

module fx
state : [0..11] init 0;
//Init
[choice] state = INITSTATE -> x : (state'=OP1) + (1-x) : (state'=OP4);
//Technical analysis result
[taResult] state=TA_RESULT-> y2:(state'=OP1)+y1:(state'=OP5)+(1-y1-y2):(state'=OP3);
//Fundamental analysis result
[faresult] state=FA_RESULT->z2:(state'=INITSTATE)+z1:(state'=OP5)+(1-z1-z2):(state'=OP4);//succ op4
//success or failure of workflow.
[success] state = WF_SUCC -> 1.0:(state'=WF_SUCC);
[failure] state=WF_FAIL->1.0:(state'=WF_FAIL);//failed fx

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

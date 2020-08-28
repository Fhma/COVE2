//MonoGenerator Tool Version 1.0
//August 2017
//Annotated model for FXWorkflow.
//MODEL_PARAMETERS
//prob, cost, time
//MODEL_PATTERNS
//1:PROBR2-5;2:PROBR2-5;3:PROBR2-5;4:PROBR2-5;5:PROBR2-5;6:PROBR2-5
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
const double z1=0.5;
const double z2=0.5;

const double p11=0.45;
const double c11=0;
const double t11=0;
const double p12=0.45;
const double c12=0;
const double t12=0;
const double p13=0.45;
const double c13=0;
const double t13=0;
const double p14=0.45;
const double c14=0;
const double t14=0;
const double p15=0.45;
const double c15=0;
const double t15=0;
const double r1=0.45;
const double z11 =0.2;
const double z12 =0.2 ;
const double z13  =0.2;
const double z14  =0.2;
const double z15  =0.2;

const double p21=0.45;
const double c21=0;
const double t21=0;
const double p22=0.45;
const double c22=0;
const double t22=0;
const double p23=0.45;
const double c23=0;
const double t23=0;
const double p24=0.45;
const double c24=0;
const double t24=0;
const double p25=0.45;
const double c25=0;
const double t25=0;
const double r2=0.45;
const double z21  =0.2;
const double z22  =0.2;
const double z23  =0.2;
const double z24  =0.2;
const double z25  =0.2;

const double p31=0.45;
const double c31=0;
const double t31=0;
const double p32=0.45;
const double c32=0;
const double t32=0;
const double p33=0.45;
const double c33=0;
const double t33=0;
const double p34=0.45;
const double c34=0;
const double t34=0;
const double p35=0.45;
const double c35=0;
const double t35=0;
const double r3=0.45;
const double z31  =0.2;
const double z32  =0.2;
const double z33  =0.2;
const double z34  =0.2;
const double z35  =0.2;

const double p41=0.45;
const double c41=0;
const double t41=0;
const double p42=0.45;
const double c42=0;
const double t42=0;
const double p43=0.45;
const double c43=0;
const double t43=0;
const double p44=0.45;
const double c44=0;
const double t44=0;
const double p45=0.45;
const double c45=0;
const double t45=0;
const double r4=0.45;
const double z41  =0.2;
const double z42  =0.2;
const double z43  =0.2;
const double z44  =0.2;
const double z45  =0.2;

const double p51=0.45;
const double c51=0;
const double t51=0;
const double p52=0.45;
const double c52=0;
const double t52=0;
const double p53=0.45;
const double c53=0;
const double t53=0;
const double p54=0.45;
const double c54=0;
const double t54=0;
const double p55=0.45;
const double c55=0;
const double t55=0;
const double r5=0.45;
const double z51  =0.2;
const double z52  =0.2;
const double z53  =0.2;
const double z54  =0.2;
const double z55  =0.2;

const double p61=0.45;
const double c61=0;
const double t61=0;
const double p62=0.45;
const double c62=0;
const double t62=0;
const double p63=0.45;
const double c63=0;
const double t63=0;
const double p64=0.45;
const double c64=0;
const double t64=0;
const double p65=0.45;
const double c65=0;
const double t65=0;
const double r6=0.45;
const double z61  =0.2;
const double z62  =0.2;
const double z63  =0.2;
const double z64  =0.2;
const double z65  =0.2;

module fx
inter : [1..2] init 1;
retry : [1..2] init 1;
op1 : [0..5] init 0;
op2 : [0..5] init 0;
op3 : [0..5] init 0;
op4 : [0..5] init 0;
op5 : [0..5] init 0;
op6 : [0..5] init 0;
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

[choice1] (state=1)&(op1=0)&(retry=1) -> z11:(op1'=1)+z12:(op1'=2)+z13:(op1'=3)+z14:(op1'=4)+z15:(op1'=5);
[op11](state=1)&(op1=1)&(retry=1) -> p11:(state'=2)&(op1'=0) + (1-p11):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op12](state=1)&(op1=2)&(retry=1) -> p12:(state'=2)&(op1'=0) + (1-p12):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op13](state=1)&(op1=3)&(retry=1) -> p13:(state'=2)&(op1'=0) + (1-p13):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op14](state=1)&(op1=4)&(retry=1) -> p14:(state'=2)&(op1'=0) + (1-p14):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op15](state=1)&(op1=5)&(retry=1) -> p15:(state'=2)&(op1'=0) + (1-p15):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
//Attempt a retry...
[op1r](state=1)&(retry=2) -> r1:(retry'=1) + (1-r1):(state'=9);
[choice2] (state=2)&(op2=0)&(retry=1) -> z21:(op2'=1)+z22:(op2'=2)+z23:(op2'=3)+z24:(op2'=4)+z25:(op2'=5);
[op21](state=2)&(op2=1)&(retry=1) -> p21:(state'=7)&(op2'=0) + (1-p21):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op22](state=2)&(op2=2)&(retry=1) -> p22:(state'=7)&(op2'=0) + (1-p22):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op23](state=2)&(op2=3)&(retry=1) -> p23:(state'=7)&(op2'=0) + (1-p23):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op24](state=2)&(op2=4)&(retry=1) -> p24:(state'=7)&(op2'=0) + (1-p24):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op25](state=2)&(op2=5)&(retry=1) -> p25:(state'=7)&(op2'=0) + (1-p25):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
//Attempt a retry...
[op2r](state=2)&(retry=2) -> r2:(retry'=1) + (1-r2):(state'=9);
[choice3] (state=3)&(op3=0)&(retry=1) -> z31:(op3'=1)+z32:(op3'=2)+z33:(op3'=3)+z34:(op3'=4)+z35:(op3'=5);
[op31](state=3)&(op3=1)&(retry=1) -> p31:(state'=6)&(op3'=0) + (1-p31):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op32](state=3)&(op3=2)&(retry=1) -> p32:(state'=6)&(op3'=0) + (1-p32):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op33](state=3)&(op3=3)&(retry=1) -> p33:(state'=6)&(op3'=0) + (1-p33):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op34](state=3)&(op3=4)&(retry=1) -> p34:(state'=6)&(op3'=0) + (1-p34):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op35](state=3)&(op3=5)&(retry=1) -> p35:(state'=6)&(op3'=0) + (1-p35):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
//Attempt a retry...
[op3r](state=3)&(retry=2) -> r3:(retry'=1) + (1-r3):(state'=9);
[choice4] (state=4)&(op4=0)&(retry=1) -> z41:(op4'=1)+z42:(op4'=2)+z43:(op4'=3)+z44:(op4'=4)+z45:(op4'=5);
[op41](state=4)&(op4=1)&(retry=1) -> p41:(state'=8)&(op4'=0) + (1-p41):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op42](state=4)&(op4=2)&(retry=1) -> p42:(state'=8)&(op4'=0) + (1-p42):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op43](state=4)&(op4=3)&(retry=1) -> p43:(state'=8)&(op4'=0) + (1-p43):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op44](state=4)&(op4=4)&(retry=1) -> p44:(state'=8)&(op4'=0) + (1-p44):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op45](state=4)&(op4=5)&(retry=1) -> p45:(state'=8)&(op4'=0) + (1-p45):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
//Attempt a retry...
[op4r](state=4)&(retry=2) -> r4:(retry'=1) + (1-r4):(state'=9);
[choice5] (state=5)&(op5=0)&(retry=1) -> z51:(op5'=1)+z52:(op5'=2)+z53:(op5'=3)+z54:(op5'=4)+z55:(op5'=5);
[op51](state=5)&(op5=1)&(retry=1) -> p51:(state'=6)&(op5'=0) + (1-p51):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op52](state=5)&(op5=2)&(retry=1) -> p52:(state'=6)&(op5'=0) + (1-p52):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op53](state=5)&(op5=3)&(retry=1) -> p53:(state'=6)&(op5'=0) + (1-p53):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op54](state=5)&(op5=4)&(retry=1) -> p54:(state'=6)&(op5'=0) + (1-p54):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op55](state=5)&(op5=5)&(retry=1) -> p55:(state'=6)&(op5'=0) + (1-p55):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
//Attempt a retry...
[op5r](state=5)&(retry=2) -> r5:(retry'=1) + (1-r5):(state'=9);
[choice6] (state=6)&(op6=0)&(retry=1) -> z61:(op6'=1)+z62:(op6'=2)+z63:(op6'=3)+z64:(op6'=4)+z65:(op6'=5);
[op61](state=6)&(op6=1)&(retry=1) -> p61:(state'=10)&(op6'=0) + (1-p61):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op62](state=6)&(op6=2)&(retry=1) -> p62:(state'=10)&(op6'=0) + (1-p62):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op63](state=6)&(op6=3)&(retry=1) -> p63:(state'=10)&(op6'=0) + (1-p63):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op64](state=6)&(op6=4)&(retry=1) -> p64:(state'=10)&(op6'=0) + (1-p64):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
[op65](state=6)&(op6=5)&(retry=1) -> p65:(state'=10)&(op6'=0) + (1-p65):(retry'=2)&(op1'=0)&(op2'=0)&(op3'=0)&(op4'=0)&(op5'=0)&(op6'=0);
//Attempt a retry...
[op6r](state=6)&(retry=2) -> r6:(retry'=1) + (1-r6):(state'=9);
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

     state=1&(op1=1)&(retry=1) : t11;
     state=1&(op1=2)&(retry=1) : t12;
     state=1&(op1=3)&(retry=1) : t13;
     state=1&(op1=4)&(retry=1) : t14;
     state=1&(op1=5)&(retry=1) : t15;
     state=2&(op2=1)&(retry=1) : t21;
     state=2&(op2=2)&(retry=1) : t22;
     state=2&(op2=3)&(retry=1) : t23;
     state=2&(op2=4)&(retry=1) : t24;
     state=2&(op2=5)&(retry=1) : t25;
     state=3&(op3=1)&(retry=1) : t31;
     state=3&(op3=2)&(retry=1) : t32;
     state=3&(op3=3)&(retry=1) : t33;
     state=3&(op3=4)&(retry=1) : t34;
     state=3&(op3=5)&(retry=1) : t35;
     state=4&(op4=1)&(retry=1) : t41;
     state=4&(op4=2)&(retry=1) : t42;
     state=4&(op4=3)&(retry=1) : t43;
     state=4&(op4=4)&(retry=1) : t44;
     state=4&(op4=5)&(retry=1) : t45;
     state=5&(op5=1)&(retry=1) : t51;
     state=5&(op5=2)&(retry=1) : t52;
     state=5&(op5=3)&(retry=1) : t53;
     state=5&(op5=4)&(retry=1) : t54;
     state=5&(op5=5)&(retry=1) : t55;
     state=6&(op6=1)&(retry=1) : t61;
     state=6&(op6=2)&(retry=1) : t62;
     state=6&(op6=3)&(retry=1) : t63;
     state=6&(op6=4)&(retry=1) : t64;
     state=6&(op6=5)&(retry=1) : t65;
endrewards

rewards "cost"

     state=1&(op1=1)&(retry=1) : c11;
     state=1&(op1=2)&(retry=1) : c12;
     state=1&(op1=3)&(retry=1) : c13;
     state=1&(op1=4)&(retry=1) : c14;
     state=1&(op1=5)&(retry=1) : c15;
     state=2&(op2=1)&(retry=1) : c21;
     state=2&(op2=2)&(retry=1) : c22;
     state=2&(op2=3)&(retry=1) : c23;
     state=2&(op2=4)&(retry=1) : c24;
     state=2&(op2=5)&(retry=1) : c25;
     state=3&(op3=1)&(retry=1) : c31;
     state=3&(op3=2)&(retry=1) : c32;
     state=3&(op3=3)&(retry=1) : c33;
     state=3&(op3=4)&(retry=1) : c34;
     state=3&(op3=5)&(retry=1) : c35;
     state=4&(op4=1)&(retry=1) : c41;
     state=4&(op4=2)&(retry=1) : c42;
     state=4&(op4=3)&(retry=1) : c43;
     state=4&(op4=4)&(retry=1) : c44;
     state=4&(op4=5)&(retry=1) : c45;
     state=5&(op5=1)&(retry=1) : c51;
     state=5&(op5=2)&(retry=1) : c52;
     state=5&(op5=3)&(retry=1) : c53;
     state=5&(op5=4)&(retry=1) : c54;
     state=5&(op5=5)&(retry=1) : c55;
     state=6&(op6=1)&(retry=1) : c61;
     state=6&(op6=2)&(retry=1) : c62;
     state=6&(op6=3)&(retry=1) : c63;
     state=6&(op6=4)&(retry=1) : c64;
     state=6&(op6=5)&(retry=1) : c65;
endrewards



//MonoGenerator Tool Version 1.0
//August 2017
//Annotated model for FXWorkflow.
//MODEL_PARAMETERS
//prob, cost, time
//MODEL_PATTERNS
//1:SEQR1-5;2:SEQR1-5;3:SEQR1-5;4:SEQR1-5;5:SEQR1-5;6:SEQR1-5
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
const double r11 ;
const double r12 ;
const double r13 ;
const double r14 ;
const double r15 ;

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
const double r21 ;
const double r22 ;
const double r23 ;
const double r24 ;
const double r25 ;

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
const double r31 ;
const double r32 ;
const double r33 ;
const double r34 ;
const double r35 ;

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
const double r41 ;
const double r42 ;
const double r43 ;
const double r44 ;
const double r45 ;

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
const double r51 ;
const double r52 ;
const double r53 ;
const double r54 ;
const double r55 ;

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
const double r61 ;
const double r62 ;
const double r63 ;
const double r64 ;
const double r65 ;

module fx
inter : [1..2] init 1;
retry : [1..2] init 1;
op1 : [1..5] init 1;
op2 : [1..5] init 1;
op3 : [1..5] init 1;
op4 : [1..5] init 1;
op5 : [1..5] init 1;
op6 : [1..5] init 1;
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
[op12r] (state=1)&(op1=2)&(retry=2) -> r12:(state'=1)&(op1'=2)&(retry'=1) + (1-r12):(op1'=3)&(retry'=1);
[op13](state=1)&(retry=1)&(op1=3) -> p13:(state'=2)&(retry'=1)&(op1'=1) + (1-p13):(retry'=2);
[op13r] (state=1)&(op1=3)&(retry=2) -> r13:(state'=1)&(op1'=3)&(retry'=1) + (1-r13):(op1'=4)&(retry'=1);
[op14](state=1)&(retry=1)&(op1=4) -> p14:(state'=2)&(retry'=1)&(op1'=1) + (1-p14):(retry'=2);
[op14r] (state=1)&(op1=4)&(retry=2) -> r14:(state'=1)&(op1'=4)&(retry'=1) + (1-r14):(op1'=5)&(retry'=1);
[op15](state=1)&(retry=1)&(op1=5) -> p15:(state'=2)&(retry'=1)&(op1'=1) + (1-p15):(retry'=2);
[op15r] (state=1)&(op1=5)&(retry=2) -> r15:(state'=1)&(op1'=5)&(retry'=1) + (1-r15):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
[op21](state=2)&(retry=1)&(op2=1) -> p21:(state'=7)&(retry'=1)&(op2'=1) + (1-p21):(retry'=2);
[op21r] (state=2)&(op2=1)&(retry=2) -> r21:(state'=2)&(op2'=1)&(retry'=1) + (1-r21):(op2'=2)&(retry'=1);
[op22](state=2)&(retry=1)&(op2=2) -> p22:(state'=7)&(retry'=1)&(op2'=1) + (1-p22):(retry'=2);
[op22r] (state=2)&(op2=2)&(retry=2) -> r22:(state'=2)&(op2'=2)&(retry'=1) + (1-r22):(op2'=3)&(retry'=1);
[op23](state=2)&(retry=1)&(op2=3) -> p23:(state'=7)&(retry'=1)&(op2'=1) + (1-p23):(retry'=2);
[op23r] (state=2)&(op2=3)&(retry=2) -> r23:(state'=2)&(op2'=3)&(retry'=1) + (1-r23):(op2'=4)&(retry'=1);
[op24](state=2)&(retry=1)&(op2=4) -> p24:(state'=7)&(retry'=1)&(op2'=1) + (1-p24):(retry'=2);
[op24r] (state=2)&(op2=4)&(retry=2) -> r24:(state'=2)&(op2'=4)&(retry'=1) + (1-r24):(op2'=5)&(retry'=1);
[op25](state=2)&(retry=1)&(op2=5) -> p25:(state'=7)&(retry'=1)&(op2'=1) + (1-p25):(retry'=2);
[op25r] (state=2)&(op2=5)&(retry=2) -> r25:(state'=2)&(op2'=5)&(retry'=1) + (1-r25):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
[op31](state=3)&(retry=1)&(op3=1) -> p31:(state'=6)&(retry'=1)&(op3'=1) + (1-p31):(retry'=2);
[op31r] (state=3)&(op3=1)&(retry=2) -> r31:(state'=3)&(op3'=1)&(retry'=1) + (1-r31):(op3'=2)&(retry'=1);
[op32](state=3)&(retry=1)&(op3=2) -> p32:(state'=6)&(retry'=1)&(op3'=1) + (1-p32):(retry'=2);
[op32r] (state=3)&(op3=2)&(retry=2) -> r32:(state'=3)&(op3'=2)&(retry'=1) + (1-r32):(op3'=3)&(retry'=1);
[op33](state=3)&(retry=1)&(op3=3) -> p33:(state'=6)&(retry'=1)&(op3'=1) + (1-p33):(retry'=2);
[op33r] (state=3)&(op3=3)&(retry=2) -> r33:(state'=3)&(op3'=3)&(retry'=1) + (1-r33):(op3'=4)&(retry'=1);
[op34](state=3)&(retry=1)&(op3=4) -> p34:(state'=6)&(retry'=1)&(op3'=1) + (1-p34):(retry'=2);
[op34r] (state=3)&(op3=4)&(retry=2) -> r34:(state'=3)&(op3'=4)&(retry'=1) + (1-r34):(op3'=5)&(retry'=1);
[op35](state=3)&(retry=1)&(op3=5) -> p35:(state'=6)&(retry'=1)&(op3'=1) + (1-p35):(retry'=2);
[op35r] (state=3)&(op3=5)&(retry=2) -> r35:(state'=3)&(op3'=5)&(retry'=1) + (1-r35):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
[op41](state=4)&(retry=1)&(op4=1) -> p41:(state'=8)&(retry'=1)&(op4'=1) + (1-p41):(retry'=2);
[op41r] (state=4)&(op4=1)&(retry=2) -> r41:(state'=4)&(op4'=1)&(retry'=1) + (1-r41):(op4'=2)&(retry'=1);
[op42](state=4)&(retry=1)&(op4=2) -> p42:(state'=8)&(retry'=1)&(op4'=1) + (1-p42):(retry'=2);
[op42r] (state=4)&(op4=2)&(retry=2) -> r42:(state'=4)&(op4'=2)&(retry'=1) + (1-r42):(op4'=3)&(retry'=1);
[op43](state=4)&(retry=1)&(op4=3) -> p43:(state'=8)&(retry'=1)&(op4'=1) + (1-p43):(retry'=2);
[op43r] (state=4)&(op4=3)&(retry=2) -> r43:(state'=4)&(op4'=3)&(retry'=1) + (1-r43):(op4'=4)&(retry'=1);
[op44](state=4)&(retry=1)&(op4=4) -> p44:(state'=8)&(retry'=1)&(op4'=1) + (1-p44):(retry'=2);
[op44r] (state=4)&(op4=4)&(retry=2) -> r44:(state'=4)&(op4'=4)&(retry'=1) + (1-r44):(op4'=5)&(retry'=1);
[op45](state=4)&(retry=1)&(op4=5) -> p45:(state'=8)&(retry'=1)&(op4'=1) + (1-p45):(retry'=2);
[op45r] (state=4)&(op4=5)&(retry=2) -> r45:(state'=4)&(op4'=5)&(retry'=1) + (1-r45):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
[op51](state=5)&(retry=1)&(op5=1) -> p51:(state'=6)&(retry'=1)&(op5'=1) + (1-p51):(retry'=2);
[op51r] (state=5)&(op5=1)&(retry=2) -> r51:(state'=5)&(op5'=1)&(retry'=1) + (1-r51):(op5'=2)&(retry'=1);
[op52](state=5)&(retry=1)&(op5=2) -> p52:(state'=6)&(retry'=1)&(op5'=1) + (1-p52):(retry'=2);
[op52r] (state=5)&(op5=2)&(retry=2) -> r52:(state'=5)&(op5'=2)&(retry'=1) + (1-r52):(op5'=3)&(retry'=1);
[op53](state=5)&(retry=1)&(op5=3) -> p53:(state'=6)&(retry'=1)&(op5'=1) + (1-p53):(retry'=2);
[op53r] (state=5)&(op5=3)&(retry=2) -> r53:(state'=5)&(op5'=3)&(retry'=1) + (1-r53):(op5'=4)&(retry'=1);
[op54](state=5)&(retry=1)&(op5=4) -> p54:(state'=6)&(retry'=1)&(op5'=1) + (1-p54):(retry'=2);
[op54r] (state=5)&(op5=4)&(retry=2) -> r54:(state'=5)&(op5'=4)&(retry'=1) + (1-r54):(op5'=5)&(retry'=1);
[op55](state=5)&(retry=1)&(op5=5) -> p55:(state'=6)&(retry'=1)&(op5'=1) + (1-p55):(retry'=2);
[op55r] (state=5)&(op5=5)&(retry=2) -> r55:(state'=5)&(op5'=5)&(retry'=1) + (1-r55):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
[op61](state=6)&(retry=1)&(op6=1) -> p61:(state'=10)&(retry'=1)&(op6'=1) + (1-p61):(retry'=2);
[op61r] (state=6)&(op6=1)&(retry=2) -> r61:(state'=6)&(op6'=1)&(retry'=1) + (1-r61):(op6'=2)&(retry'=1);
[op62](state=6)&(retry=1)&(op6=2) -> p62:(state'=10)&(retry'=1)&(op6'=1) + (1-p62):(retry'=2);
[op62r] (state=6)&(op6=2)&(retry=2) -> r62:(state'=6)&(op6'=2)&(retry'=1) + (1-r62):(op6'=3)&(retry'=1);
[op63](state=6)&(retry=1)&(op6=3) -> p63:(state'=10)&(retry'=1)&(op6'=1) + (1-p63):(retry'=2);
[op63r] (state=6)&(op6=3)&(retry=2) -> r63:(state'=6)&(op6'=3)&(retry'=1) + (1-r63):(op6'=4)&(retry'=1);
[op64](state=6)&(retry=1)&(op6=4) -> p64:(state'=10)&(retry'=1)&(op6'=1) + (1-p64):(retry'=2);
[op64r] (state=6)&(op6=4)&(retry=2) -> r64:(state'=6)&(op6'=4)&(retry'=1) + (1-r64):(op6'=5)&(retry'=1);
[op65](state=6)&(retry=1)&(op6=5) -> p65:(state'=10)&(retry'=1)&(op6'=1) + (1-p65):(retry'=2);
[op65r] (state=6)&(op6=5)&(retry=2) -> r65:(state'=6)&(op6'=5)&(retry'=1) + (1-r65):(state'=9)&(op1'=1)&(op2'=1)&(op3'=1)&(op4'=1)&(op5'=1)&(op6'=1);
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
   (retry=1)&  state=1&(op1=3) : t13;
   (retry=1)&  state=1&(op1=4) : t14;
   (retry=1)&  state=1&(op1=5) : t15;
   (retry=1)&  state=2&(op2=1) : t21;
   (retry=1)&  state=2&(op2=2) : t22;
   (retry=1)&  state=2&(op2=3) : t23;
   (retry=1)&  state=2&(op2=4) : t24;
   (retry=1)&  state=2&(op2=5) : t25;
   (retry=1)&  state=3&(op3=1) : t31;
   (retry=1)&  state=3&(op3=2) : t32;
   (retry=1)&  state=3&(op3=3) : t33;
   (retry=1)&  state=3&(op3=4) : t34;
   (retry=1)&  state=3&(op3=5) : t35;
   (retry=1)&  state=4&(op4=1) : t41;
   (retry=1)&  state=4&(op4=2) : t42;
   (retry=1)&  state=4&(op4=3) : t43;
   (retry=1)&  state=4&(op4=4) : t44;
   (retry=1)&  state=4&(op4=5) : t45;
   (retry=1)&  state=5&(op5=1) : t51;
   (retry=1)&  state=5&(op5=2) : t52;
   (retry=1)&  state=5&(op5=3) : t53;
   (retry=1)&  state=5&(op5=4) : t54;
   (retry=1)&  state=5&(op5=5) : t55;
   (retry=1)&  state=6&(op6=1) : t61;
   (retry=1)&  state=6&(op6=2) : t62;
   (retry=1)&  state=6&(op6=3) : t63;
   (retry=1)&  state=6&(op6=4) : t64;
   (retry=1)&  state=6&(op6=5) : t65;
endrewards

rewards "cost"

   (retry=1)&  state=1&(op1=1) : c11;
   (retry=1)&  state=1&(op1=2) : c12;
   (retry=1)&  state=1&(op1=3) : c13;
   (retry=1)&  state=1&(op1=4) : c14;
   (retry=1)&  state=1&(op1=5) : c15;
   (retry=1)&  state=2&(op2=1) : c21;
   (retry=1)&  state=2&(op2=2) : c22;
   (retry=1)&  state=2&(op2=3) : c23;
   (retry=1)&  state=2&(op2=4) : c24;
   (retry=1)&  state=2&(op2=5) : c25;
   (retry=1)&  state=3&(op3=1) : c31;
   (retry=1)&  state=3&(op3=2) : c32;
   (retry=1)&  state=3&(op3=3) : c33;
   (retry=1)&  state=3&(op3=4) : c34;
   (retry=1)&  state=3&(op3=5) : c35;
   (retry=1)&  state=4&(op4=1) : c41;
   (retry=1)&  state=4&(op4=2) : c42;
   (retry=1)&  state=4&(op4=3) : c43;
   (retry=1)&  state=4&(op4=4) : c44;
   (retry=1)&  state=4&(op4=5) : c45;
   (retry=1)&  state=5&(op5=1) : c51;
   (retry=1)&  state=5&(op5=2) : c52;
   (retry=1)&  state=5&(op5=3) : c53;
   (retry=1)&  state=5&(op5=4) : c54;
   (retry=1)&  state=5&(op5=5) : c55;
   (retry=1)&  state=6&(op6=1) : c61;
   (retry=1)&  state=6&(op6=2) : c62;
   (retry=1)&  state=6&(op6=3) : c63;
   (retry=1)&  state=6&(op6=4) : c64;
   (retry=1)&  state=6&(op6=5) : c65;
endrewards



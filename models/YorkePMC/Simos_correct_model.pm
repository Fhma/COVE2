dtmc

// Server A, running one instance of tier 1 and 1 instance of tier 2
// VIRTUALIZED-M_1_1
// - pA = probability that server does not fail
// - pdA = probability that a monitor detects server failure while VMs can still be migrated
// - pmA = probability that migration of a VM succeeds
// - rA =  probability that failed migration is retried
// - pVMA = probability that VM does not fail

const double pA;
const double pdA;
const double pmA;
const double rA;
const double pVMA;

const int N1A=1;
const int N2A=1;

module ServerA
  sA: [0..3] init 0;
  doneA: bool init false;

  [] sA=0 & stage=1 -> pA:(sA'=1) + (1-pA)*pdA:(sA'=2) + (1-pA)*(1-pdA):(sA'=3);

  // sA=1 server alive
  // sA=2 server failed, but failure was detected before it happened
  // sA=3 server failed and detection did not work

  [] sA>0 & !doneA & (i1A=N1A) & (i2A=N2A) -> 1:(doneA'=true);
  [] sA>0 & doneA -> true; 
endmodule 

module FirstTierA
  i1A: [0..N1A] init 0;   // index VM
  n1A: [0..N1A] init N1A;  // VMs left operational at the end of the period
  s1A: [0..3] init 0;

  // server alive, but VMs can fail independently
  [] i1A<N1A & sA=1 -> pVMA:(i1A'=i1A+1) + (1-pVMA):(i1A'=i1A+1)&(n1A'=n1A-1);

  // server failed and detection worked; VMs can fail, or their migration can fail 
  [] i1A<N1A & sA=2 & s1A=0 -> pmA:(s1A'=2) + (1-pmA):(s1A'=1);
  [] i1A<N1A & sA=2 & s1A=1 -> rA:(s1A'=0) + (1-rA):(i1A'=i1A+1)&(s1A'=0)&(n1A'=n1A-1);
  [] i1A<N1A & sA=2 & s1A=2 -> pVMA:(i1A'=i1A+1)&(s1A'=0) + (1-pVMA):(i1A'=i1A+1)&(s1A'=0)&(n1A'=n1A-1);

  // server failed
  [] i1A=0 & sA=3 -> 1:(i1A'=N1A)&(n1A'=0);

  // done
  [] i1A=N1A -> true;
endmodule

module SecondTierA
  i2A: [0..N2A] init 0;   // index VM
  n2A: [0..N2A] init N2A;  // VMs left operational at the end of the period
  s2A: [0..3] init 0;

  // server alive, but VMs can fail independently
  [] i2A<N2A & sA=1 -> pVMA:(i2A'=i2A+1) + (1-pVMA):(i2A'=i2A+1)&(n2A'=n2A-1);

  // server failed and detection worked; VMs can fail, or their migration can fail 
  [] i2A<N2A & sA=2 & s2A=0 -> pmA:(s2A'=2) + (1-pmA):(s2A'=1);
  [] i2A<N2A & sA=2 & s2A=1 -> rA:(s2A'=0) + (1-rA):(i2A'=i2A+1)&(s2A'=0)&(n2A'=n2A-1);
  [] i2A<N2A & sA=2 & s2A=2 -> pVMA:(i2A'=i2A+1)&(s2A'=0) + (1-pVMA):(i2A'=i2A+1)&(s2A'=0)&(n2A'=n2A-1);

  // server failed
  [] i2A=0 & sA=3 -> 1:(i2A'=N2A)&(n2A'=0);

  // done
  [] i2A=N2A -> true;
endmodule

// ==================================================

// Server B, running one instance of tier 1 and one instance of tier 2
// VIRTUALIZED-M_1_1
// - pB = probability that server does not fail
// - pdB = probability that a monitor detects server failure while VMs can still be migrated
// - pmB = probability that migration of a VM succeeds
// - rB =  probability that failed migration is retried
// - pVMB = probability that VM does not fail

const double pB;
const double pdB;
const double pmB;
const double rB;
const double pVMB;

const int N1B=1;
const int N2B=1;

module ServerB
  sB: [0..3] init 0;
  doneB: bool init false;

  [] sB=0 & stage=2 -> pB:(sB'=1) + (1-pB)*pdB:(sB'=2) + (1-pB)*(1-pdB):(sB'=3);

  // sB=1 server alive
  // sB=2 server failed, but failure was detected before it happened
  // sB=3 server failed and detection did not work

  [] sB>0 & !doneB & (i1B=N1B) & (i2B=N2B) -> 1:(doneB'=true);
  [] sB>0 & doneB -> true; 
endmodule 

module FirstTierB
  i1B: [0..N1B] init 0;   // index VM
  n1B: [0..N1B] init N1B;  // VMs left operational at the end of the period
  s1B: [0..3] init 0;

  // server alive, but VMs can fail independently
  [] i1B<N1B & sB=1 -> pVMB:(i1B'=i1B+1) + (1-pVMB):(i1B'=i1B+1)&(n1B'=n1B-1);

  // server failed and detection worked; VMs can fail, or their migration can fail 
  [] i1B<N1B & sB=2 & s1B=0 -> pmB:(s1B'=2) + (1-pmB):(s1B'=1);
  [] i1B<N1B & sB=2 & s1B=1 -> rB:(s1B'=0) + (1-rB):(i1B'=i1B+1)&(s1B'=0)&(n1B'=n1B-1);
  [] i1B<N1B & sB=2 & s1B=2 -> pVMB:(i1B'=i1B+1)&(s1B'=0) + (1-pVMB):(i1B'=i1B+1)&(s1B'=0)&(n1B'=n1B-1);

  // server failed
  [] i1B=0 & sB=3 -> 1:(i1B'=N1B)&(n1B'=0);

  // done
  [] i1B=N1B -> true;
endmodule

module SecondTierB
  i2B: [0..N2B] init 0;   // index VM
  n2B: [0..N2B] init N2B;  // VMs left operational at the end of the period
  s2B: [0..3] init 0;

  // server alive, but VMs can fail independently
  [] i2B<N2B & sB=1 -> pVMB:(i2B'=i2B+1) + (1-pVMB):(i2B'=i2B+1)&(n2B'=n2B-1);

  // server failed and detection worked; VMs can fail, or their migration can fail 
  [] i2B<N2B & sB=2 & s2B=0 -> pmB:(s2B'=2) + (1-pmB):(s2B'=1);
  [] i2B<N2B & sB=2 & s2B=1 -> rB:(s2B'=0) + (1-rB):(i2B'=i2B+1)&(s2B'=0)&(n2B'=n2B-1);
  [] i2B<N2B & sB=2 & s2B=2 -> pVMB:(i2B'=i2B+1)&(s2B'=0) + (1-pVMB):(i2B'=i2B+1)&(s2B'=0)&(n2B'=n2B-1);

  // server failed
  [] i2B=0 & sB=3 -> 1:(i2B'=N2B)&(n2B'=0);

  // done
  [] i2B=N2B -> true;
endmodule

// ==================================================

// Server C, running one instance of tier 3
// BASIC_1
// - pC = probability that server does not fail

const double pC;

const int N1C=1;

module ServerC
  sC: [0..1] init 0;
  doneC: bool init false;
  n1C: [0..N1C] init N1C;

  [] sC=0 & stage=3 -> pC:(sC'=1)&(doneC'=true) + (1-pC):(sC'=1)&(doneC'=true)&(n1C'=0);
  [] sC=1 -> true;
endmodule

// ==================================================

// Server D, running one instance of tier 3
// BASIC_1
// - pD = probability that server does not fail

const double pD;

const int N1D=1;

module ServerD
  sD: [0..1] init 0;
  doneD: bool init false;
  n1D: [0..N1D] init N1D;

  [] sD=0 & stage=4 -> pD:(sD'=1)&(doneD'=true) + (1-pD):(sD'=1)&(doneD'=true)&(n1D'=0);
  [] sD=1 -> true;
endmodule

// ==================================================

// System tier instances are as follows:
// - Tier1: n1=n1A+n1B
// - Tier2: n2=n2A+n2B
// - Tier3: n3=n1C+n1D
//
// Properties to verify: 
// - Pfail: P=?[F done & fail] 
// - Pspf:  P=?[F done & succ] 

module System
  stage :[1..5] init 1;
  done: bool init false; 
  fail: bool init false;
  spf: bool init false;

  [] stage=1 & doneA -> 1:(stage'=2);
  [] stage=2 & doneB -> 1:(stage'=3);
  [] stage=3 & doneC -> 1:(stage'=4);
  [] stage=4 & doneD -> 1:(stage'=5);
  [] stage=5 & !done -> 1:(done'=true)&
                          (fail'=(n1A+n1B=0|n2A+n2B=0|n1C+n1D=0))&
                          (spf'=(n1A+n1B>0&n2A+n2B>0&n1C+n1D>0&(n1A+n1B=1|n2A+n2B=1|n1C+n1D=1)));
  [] done -> true;
endmodule
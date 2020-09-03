## Fast Parametric Model Checking (fPMC) through Model Fragmentation (ICSE 2021 submission)

This README provides an instruction for running fPMC on the models used in the paper

#### -Prerequisites
1. Install Storm following the instructions from https://www.stormchecker.org/getting-started.html. (Storm version 1.5.1 was used in our experiment) and set STORM_PATH in config.proerties
2. Setup Java 11.
3. Link Java runtime libaray (in Eclipse)
   - Find the fPMC.java file in Eclipse Project Explorer (Left window in default setting)
   - Right click ->Run As ->Run Configurations
   - Click the Environment in main tab
   - Click add to include the libaray
   
      Name: DYLD_LIBRARY_PATH (OSX); LD_LIBRARY_PATH (Linux)
   
      Value: PATH/TO/WORKSPACE/libs/runtime
   - Save the setting
   
#### -Inputs, (config.properties)
1. The Parametric models. All the models used in the paper are stored in ~/models/
2. PCTL files for each model. All the PCTL files are stored in  ~/models/
3. State satisfying the PCTL property. (These states are provided in config.properties)
   - The process to determine such state is 
      
      1) load the model into PRISM using xprism (GUI); 
      
      2) Output the state.sta by clicking the tab (model -> Export -> States -> Plain text file); 
      
      3) Provide random transitions probabilies [0-1] that satisfy the requirement for the output states.sta; 
      
      4) Open the states.sta and manually check what state satisfies the PCTL property.
     
     Using the model of the running exmaple in the paper as an exnaple. The PCTL file specifies P=?[F state = WF_SUCC] and the model declares int WF_SUCC=10
     
     The state.sta looks as follow:
     
     (inter,retry,op1,op2,op3,op4,op5,op6,state)
     
      0:(1,1,1,1,1,1,1,1,0)
      
      1:(1,1,1,1,1,1,1,1,1)
      
      2:(1,1,1,1,1,1,1,1,2)
      
      3:(1,1,1,1,1,1,1,1,3)
      
      4:(1,1,1,1,1,1,1,1,4)
      
      5:(1,1,1,1,1,1,1,1,5)
      
      6:(1,1,1,1,1,1,1,1,6)
      
      7:(1,1,1,1,1,1,1,1,7)
      
      8:(1,1,1,1,1,1,1,1,8)
      
      __9:(1,1,1,1,1,1,1,1,10)__
      
      10:(1,1,1,1,1,1,1,2,6)
      
      11:(1,1,1,1,1,1,2,1,5)
      
      12:(1,1,1,1,1,2,1,1,4)
      
      13:(1,1,1,1,2,1,1,1,3)
      
      14:(1,1,1,2,1,1,1,1,2)
      
      15:(1,1,2,1,1,1,1,1,1)
      
      16:(1,2,1,1,1,1,1,1,1)
      
      17:(1,2,1,1,1,1,1,1,2)
      
      18:(1,2,1,1,1,1,1,1,3)
      
      19:(1,2,1,1,1,1,1,1,4)
      
      20:(1,2,1,1,1,1,1,1,5)
      
      21:(1,2,1,1,1,1,1,1,6)
      
      22:(1,2,1,1,1,1,1,1,9)
      
      23:(1,2,1,1,1,1,1,2,6)
      
      24:(1,2,1,1,1,1,2,1,5)
      
      25:(1,2,1,1,1,2,1,1,4)
      
      26:(1,2,1,1,2,1,1,1,3)
      
      27:(1,2,1,2,1,1,1,1,2)
      
      28:(1,2,2,1,1,1,1,1,1)
     
     From the example, we can idenfy that state 9 in graph satisfying the P=?[F state =10] as __9__:(1,1,1,1,1,1,1,1,__10__) 
   
   - It could end up with the multiple states in the graph satisfying the PCTL but only a single state is requried for the models that we tested.
   
   - We also developed an automatic tool to extract thses states but it is not included in this version of fPMC.   
   
 4. The Alpha value.  
 5. The Path that output files will be stored
 
 #### -Outputs
 1. PRISM models and PCTL properties for each fragment and the abstract model
 2. old_model.m is the structure of the input model (transition probability is random numbers).
 3. new_model.m is the structure of the model after fragmentation (transition probability is random numbers).
 4. Model_expression.txt stores the detailed information about the fragmentation process
    - Original Transition Matrix
    - New Tranistion Matrix after fragmentation
    - State property for each state in the model
    - Transition Matrix for each fragment 
    - __The algebraic expressions__
 
 
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   

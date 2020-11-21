# Fast Parametric Model Checking (fPMC) through Model Fragmentation (ICSE 2021 submission)

## fPMC Soundness
We developed a  proof of fPMC soundness that is available [here](paper/fPMCproof.pdf). We will include this proof in the final paper.

## Running fPMC

### Prerequisites
1. Install Storm following the instructions at https://www.stormchecker.org/getting-started.html. 
(Storm version 1.5.1 was used in our experiment)

2. Install Java 11

3. Set the Java runtime libary variable (DYLD_LIBRARY_PATH in OSX, LD_LIBRARY_PATH in Linux, PATH in Windows)
   - For instance, in Eclipse
      * Find the fPMC.java file in Eclipse Project Explorer (Left window in default setting)
      * Right click > Run As > Run Configurations
      * Click the Environment in main tab
      * Click Add to include the libary
   
         - Name: DYLD_LIBRARY_PATH (OSX); LD_LIBRARY_PATH (Linux); PATH (Windows)
         - Value: PATH/TO/WORKSPACE/libs/runtime
      * Save 
   
### Inputs
Running fPMC requires setting the following parameters in the [config.properties](config.properties) file

1. The STORM_PATH to the storm-pars location (e.g., STORM_PATH = /usr/local/bin/storm-pars)

2. The threshold α value

5. The path where output files will be stored

3. The pDTMC models (All models used in the paper are available in the [models](models) directory

4. PCTL property file for each pDTMC (All PCTL files are available in the [models](models) directory

5. State satisfying the PCTL property. These states for all the models are provided in the config.properties as #PCTL_STATE
   - The process to determine such state includes:
      
      1) Loading the model into PRISM (GUI); 
      
      2) Exporting the states into a file (e.g., state.sta) by selecting Model > Export -> States -> Plain text file 
      
      3) Providing random transitions probabilies [0-1] that satisfy the requirement for the output states 
      
      4) Opening the saved file (states.sta) and manually checking what state satisfies the PCTL property.
     
     For example, using the model of the FX service-based system running exmaple in the paper, the PCTL property is P=?[F state = WF_SUCC], where WF_SUCC=10
     
     The state.sta looks as follows:
     
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
     
     From the example, we can idenfy that state 9 satisfies the PCTL property P=?[F state =10] since state  __9__:(1,1,1,1,1,1,1,1,__10__) 
   
   * Note that multiple pDTMC states may satisfy the PCTL property.
   
   * We are also developing a prototype tool to automatically extract these which will be included in the next fPMC version.  
    
 ### Outputs
 Once fPMC finishes, it will generate the following outputs:

   1. PRISM models and PCTL properties for each fragment and the abstract model
 
   2. **old_model.m**: the structure of the input model (transition probabilities are randomly generated for illustration purposes)
 
   3. **new_model.m**: the structure of the model after fragmentation, i.e, once fPMC finishes (transition probabilities are randomly generated for illustration purposes)
 
   4. **Model_expression.txt**: detailed information about the fragmentation process, i.e., 
      - Original Transition Matrix
      - New Tranistion Matrix after fragmentation
      - State property for each state in the model
      - Transition Matrix for each fragment 
      - __The algebraic expressions__
 
 
## ICSE 2021 Evaluation Result in detail

   1. All the results that were used in the paper are stored in the ~/ICSE_2021_Result/.

   2. The results are presented in the same format as described in __Running fPMC / Outputs__.
   
   3. A matlab script(Structure_visualization.m) is provided for the visulization of the model structure.
      
      - The script was tested in MATLAB 2019b.
      
      - Copy everything in old_model.m or new_model.m (one at a time) into the highlighted areas in the Structure_visualization.m. 
      
      - Run the script. 
      
      - The colour in the output figure differenciates the fragments. 
      
  
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   

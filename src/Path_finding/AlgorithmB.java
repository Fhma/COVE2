package Path_finding;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.spg.PrismAPI.PrismParamAPI;
import org.spg.utils.PrismAPIUtilities;



public class AlgorithmB {
	public static void main(String[] args) throws Exception {
		
		long timeSpan = System.currentTimeMillis();

/* User setting*/		
		// set value for alpha
		int alpha = 5;

//Setting Storm Path in StormEvaluator.jave		
	
		
//Choose one model each time for testing
		
/*The use of FX models*/		

/*SEQ*/				
/*Service 1*/	
		String modelOutputPath = "Model_result/FX/SEQ/service1/";
		final String property_file = "models/FX/SEQ/prismSEQModel-1_P1_java_property.pctl";
		final String model_file = "models/FX/SEQ/prismSEQModel-1_P1_java.pm";
		int pctl_state =10;

///*Service 2*/	
//		String modelOutputPath = "Model_result/FX/SEQ/service2/";
//		final String property_file = "models/FX/SEQ/prismSEQModel-2_P1_java_property.pctl";
//		final String model_file = "models/FX/SEQ/prismSEQModel-2_P1_java.pm";
//		int pctl_state =10;		
		
///*Service 3*/	
//		String modelOutputPath = "Model_result/FX/SEQ/service3/";
//		final String property_file = "models/FX/SEQ/prismSEQModel-3_P1_java_property.pctl";
//		final String model_file = "models/FX/SEQ/prismSEQModel-3_P1_java.pm";
//		int pctl_state =10;		
		
///*Service 4*/	
//		String modelOutputPath = "Model_result/FX/SEQ/service4/";
//		final String property_file = "models/FX/SEQ/prismSEQModel-4_P1_java_property.pctl";
//		final String model_file = "models/FX/SEQ/prismSEQModel-4_P1_java.pm";
//		int pctl_state =10;		

		
///*Service 5*/	
//		String modelOutputPath = "Model_result/FX/SEQ/service5/";
//		final String property_file = "models/FX/SEQ/prismSEQModel-5_P1_java_property.pctl";
//		final String model_file = "models/FX/SEQ/prismSEQModel-5_P1_java.pm";
//		int pctl_state =10;		


/*PAR*/		
///*Service 2*/	
//		String modelOutputPath = "Model_result/FX/PAR/service2/";
//		final String property_file = "models/FX/PAR/prismPARModel-2_P1_java_property.pctl";
//		final String model_file = "models/FX/PAR/prismPARModel-2_P1_java.pm";
//		int pctl_state =15;	
		
///*Service 3*/	
//		String modelOutputPath = "Model_result/FX/PAR/service3/";
//		final String property_file = "models/FX/PAR/prismPARModel-3_P1_java_property.pctl";
//		final String model_file = "models/FX/PAR/prismPARModel-3_P1_java.pm";
//		int pctl_state =15;	
		
		
///*Service 4*/	
//		String modelOutputPath = "Model_result/FX/PAR/service4/";
//		final String property_file = "models/FX/PAR/prismPARModel-4_P1_java_property.pctl";
//		final String model_file = "models/FX/PAR/prismPARModel-4_P1_java.pm";
//		int pctl_state =15;	
		
		
///*Service 5*/	
//		String modelOutputPath = "Model_result/FX/PAR/service5/";
//		final String property_file = "models/FX/PAR/prismPARModel-5_P1_java_property.pctl";
//		final String model_file = "models/FX/PAR/prismPARModel-5_P1_java.pm";
//		int pctl_state =15;	
		

/*PROB*/		
///*Service 2*/	
//		String modelOutputPath = "Model_result/FX/PROB/service2/";
//		final String property_file = "models/FX/PROB/prismPROBModel-2_P1_java_property.pctl";
//		final String model_file = "models/FX/PROB/prismPROBModel-2_P1_java.pm";
//		int pctl_state =10;	
				
///*Service 3*/	
//		String modelOutputPath = "Model_result/FX/PROB/service3/";
//		final String property_file = "models/FX/PROB/prismPROBModel-3_P1_java_property.pctl";
//		final String model_file = "models/FX/PROB/prismPROBModel-3_P1_java.pm";
//		int pctl_state =10;	
				
///*Service 4*/	
//		String modelOutputPath = "Model_result/FX/PROB/service4/";
//		final String property_file = "models/FX/PROB/prismPROBModel-4_P1_java_property.pctl";
//		final String model_file = "models/FX/PROB/prismPROBModel-4_P1_java.pm";
//		int pctl_state =10;	
				
///*Service 5*/	
//		String modelOutputPath = "Model_result/FX/PROB/service5/";
//		final String property_file = "models/FX/PROB/prismPROBModel-5_P1_java_property.pctl";
//		final String model_file = "models/FX/PROB/prismPROBModel-5_P1_java.pm";
//		int pctl_state =10;			

		
/*SEQR1*/	
		
///*Service 2*/	
//		String modelOutputPath = "Model_result/FX/SEQ_R/service2/";
//		final String property_file = "models/FX/SEQ_R/prismSEQR1Model-2_P1_java_property.pctl";
//		final String model_file = "models/FX/SEQ_R/prismSEQR1Model-2_P1_java.pm";
//		int pctl_state =9;	
		
///*Service 3*/	
//		String modelOutputPath = "Model_result/FX/SEQ_R/service3/";
//		final String property_file = "models/FX/SEQ_R/prismSEQR1Model-3_P1_java_property.pctl";
//		final String model_file = "models/FX/SEQ_R/prismSEQR1Model-3_P1_java.pm";
//		int pctl_state =9;			
		
///*Service 4*/	
//		String modelOutputPath = "Model_result/FX/SEQ_R/service4/";
//		final String property_file = "models/FX/SEQ_R/prismSEQR1Model-4_P1_java_property.pctl";
//		final String model_file = "models/FX/SEQ_R/prismSEQR1Model-4_P1_java.pm";
//		int pctl_state =9;		

///*Service 5*/	
//		String modelOutputPath = "Model_result/FX/SEQ_R/service5/";
//		final String property_file = "models/FX/SEQ_R/prismSEQR1Model-5_P1_java_property.pctl";
//		final String model_file = "models/FX/SEQ_R/prismSEQR1Model-5_P1_java.pm";
//		int pctl_state =9;
		
	
/*PROBR1*/		
///*Service 2*/	
//		String modelOutputPath = "Model_result/FX/PROB2/service2/";
//		final String property_file = "models/FX/PROB2/prismPROBR2Model-2_P1_java_property.pctl";
//		final String model_file = "models/FX/PROB2/prismPROBR2Model-2_P1_java.pm";
//		int pctl_state =9;		

///*Service 3*/	
//		String modelOutputPath = "Model_result/FX/PROB2/service3/";
//		final String property_file = "models/FX/PROB2/prismPROBR2Model-3_P1_java_property.pctl";
//		final String model_file = "models/FX/PROB2/prismPROBR2Model-3_P1_java.pm";
//		int pctl_state =9;	
		
///*Service 4*/	
//		String modelOutputPath = "Model_result/FX/PROB2/service4/";
//		final String property_file = "models/FX/PROB2/prismPROBR2Model-4_P1_java_property.pctl";
//		final String model_file = "models/FX/PROB2/prismPROBR2Model-4_P1_java.pm";
//		int pctl_state =9;			
		
///*Service 5*/	
//		String modelOutputPath = "Model_result/FX/PROB2/service5/";
//		final String property_file = "models/FX/PROB2/prismPROBR2Model-5_P1_java_property.pctl";
//		final String model_file = "models/FX/PROB2/prismPROBR2Model-5_P1_java.pm";
//		int pctl_state =9;			
		

/*SPL model*/
///*4 Features*/	
//		/*P100 indicates 100 percentage of transition is parameter, change it to P01,P10...*/
//			String modelOutputPath = "Model_result/PL/4features/P100/";
//			final String model_file = "models/PL/PARA_percent_4_feature/P100.pm";
//		/*P100 indicates 100 percentage of transition is parameter, change it to P01,P10...*/
//		final String property_file = "models/PL/PARA_percent_4_feature/PL4.pctl";		
//		int pctl_state =91;
		
///*16 Features*/	
//	    /*P100 indicates 100 percentage of transition is parameter, change it to P01,P10...*/
//			String modelOutputPath = "Model_result/PL/16features/P100/";
//			final String model_file = "models/PL/PARA_percent_16_feature/P100.pm";
//		/*P100 indicates 100 percentage of transition is parameter, change it to P01,P10...*/
//		final String property_file = "models/PL/PARA_percent_16_feature/PL16.pctl";		
//		int pctl_state =109;	
		
		
///*18 Features*/	
//	    /*P100 indicates 100 percentage of transition is parameter, change it to P01,P10...*/
//			String modelOutputPath = "Model_result/PL/18features/P100/";
//			final String model_file = "models/PL/PARA_percent_18_feature/P100.pm";
//		/*P100 indicates 100 percentage of transition is parameter, change it to P01,P10...*/
//		final String property_file = "models/PL/PARA_percent_18_feature/PL18.pctl";		
//		int pctl_state =103;	

///*22 Features*/	
//	    /*P100 indicates 100 percentage of transition is parameter, change it to P01,P10...*/
//			String modelOutputPath = "Model_result/PL/22features/P100/";
//			final String model_file = "models/PL/PARA_percent_22_feature/P100.pm";
//		/*P100 indicates 100 percentage of transition is parameter, change it to P01,P10...*/
//		final String property_file = "models/PL/PARA_percent_22_feature/PL22.pctl";		
//		int pctl_state =114;		
		
		
///*COM model*/
//		final String model_file = "models/COM/multiparam_semisynchronous_parallel_20.pm";
//		String modelOutputPath = "Model_result/COM/property20";		
//		final String property_file = "models/COM/prop_20.pctl";		
//		/*The pctl_state set 2;4;6;8;10;12;14;16;18;20;22;24;26;28;30;32;34;36;38;40;42 for the 21 properties from 1 to 21*/
//		int pctl_state =22;

/*End of User setting****************************************************/



		

		int variable_min = 0;
		int variable_max = alpha;
		for (int min_state = variable_min; min_state <variable_min+1; min_state++) {
			for (int max_state = variable_max; max_state < variable_max+1; max_state++) {
	
				String ArrayListString_model_expression = "";

				int minimum_number_of_state_in_fragment = min_state;
				int Idea_maximum_number_of_state_in_fragment = max_state;

				String outputFolder = String.format(modelOutputPath + File.separatorChar + "Model_alpha(%d)", Idea_maximum_number_of_state_in_fragment);
				File location = new File(outputFolder);
				location.mkdirs();

				ArrayListString_model_expression = String.format("Min_number = ( %d ) ; Max_number = ( %d )\n",
						minimum_number_of_state_in_fragment, Idea_maximum_number_of_state_in_fragment);

				final TransitionMatrix tm = new TransitionMatrix(model_file, property_file);
				int number_of_states = tm.getNumberOfStates();
				int original_number_of_states = number_of_states;
				int number_of_transition = tm.getNumberOfTransitions();
				ArrayList<ArrayList<Integer>> transition_state = tm.getTransitionStates();
				ArrayList<String> model_parameter = tm.getModelParameters();

				
				ArrayListString_model_expression = String.format(
						"%sIn original model number_of_states = ( %d ); number_of_transition = ( %d ) \n\nOriginal Transition\n",
						ArrayListString_model_expression, number_of_states, number_of_transition);

				
				ArrayList<Integer> State_label_abstract = new ArrayList<>();

				
				ArrayList<ArrayList<Integer>> sparseMatrix = transition_state;

			
				for (int i = 0; i < transition_state.size(); i++) {
					ArrayListString_model_expression = String.format("%s%d --- %d  -> %s\n",
							ArrayListString_model_expression, transition_state.get(i).get(0),
							transition_state.get(i).get(1), model_parameter.get(i));
				}

				
				ArrayList<Integer> search_stack = new ArrayList<Integer>();
				
				
				ArrayList<Integer> ending_state_stack = new ArrayList<Integer>();


				Find_Fragment search_fragment = new Find_Fragment();
				Find_states search_state = new Find_states();

				
				ArrayList<Modelinfo> info_Array = new ArrayList<>();

				for (int i = 0; i < number_of_states; i++) {
					info_Array.add(new Modelinfo());
				}

				search_fragment.fragment_self_loop_states(number_of_states, info_Array, sparseMatrix,pctl_state);
				
		
				// Save matlab file
				Matlab_file_generator matlab_output = new Matlab_file_generator();
				String matlab_file_name = "Old_model.m";
				matlab_output.generator(info_Array, transition_state, location,matlab_file_name);


				/* Main function */
				int fragment_index = 0;
				
				int fragment_index_flag = 0;

				int fragment_review = -1;

				/* Loop all states */
				for (int i = 0; i < number_of_states; i++) {

					Growing_function fragment_growing = new Growing_function();
				
					stop_search ending_state_status = new stop_search();
					
					// This List indicates what states are in the fragment, to decide if a fragment should stop growing or not
					ArrayList<Integer> StateIndexFragment = new ArrayList<>();
					
					boolean growing_flag = false;

					if (fragment_review > 0) {
						i = fragment_review - 1;
						fragment_review = -1;
					}

					if (info_Array.get(i).visited == false) {
						
						if (fragment_index_flag == 0) {
							fragment_index++;
						}
						
						/* Process a node as the starting point of a fragment */
						info_Array.get(i).fragmentNumber = fragment_index;
						info_Array.get(i).visited = true;
						info_Array.get(i).startingPoint = true;

						//Adds the state 
						StateIndexFragment.add(i);

						// Expanding the fragment from the current states, this function could change the original model 
						fragment_growing.growth(i, sparseMatrix, info_Array, fragment_index, search_stack,
								number_of_states, model_parameter, ending_state_stack);
						
						// Updates the number_of_states
						number_of_states = fragment_growing.getNumberOfState();
						
						// Updates the transition matrix
						sparseMatrix = fragment_growing.getTransitionMatrix();
						
						// Updates the parameter
						model_parameter = fragment_growing.getParameter();

						// Adds more states
						StateIndexFragment.addAll(fragment_growing.getStateIndex());

						FragmentSizeCheck FSC = new FragmentSizeCheck();
						
						
						// If the size of a form fragment is smaller than a threshold (minimum value that was previous set), continue to grow
						FSC.min_size_check(minimum_number_of_state_in_fragment, search_stack, StateIndexFragment, growing_flag, info_Array, sparseMatrix);		

						FSC.max_size_check(Idea_maximum_number_of_state_in_fragment, search_stack, StateIndexFragment, ending_state_stack);
					
						Fragment_expanding Fe = new Fragment_expanding();
						
						/* Process a node at each time from the Search Stack until it's empty */
						int break_counter = 0;
						
						while (search_stack.size() != 0) {
							
							// Determine if this is the state that can be ending state according to the current condition
							Boolean valid_ending = ending_state_status.fragment_stop(sparseMatrix, search_stack.get(0),
									info_Array, fragment_index);
							
							// If the state is an invalid ending point
							if (valid_ending == false) {
								
								//Determine incoming and outgoing states for the given state
								ArrayList<Integer> outgoings_states_for_fragment_check = new ArrayList<>();
								ArrayList<Integer> incomings_states_for_fragment_check = new ArrayList<>();
								outgoings_states_for_fragment_check
										.addAll(search_state.outgoing(sparseMatrix, search_stack.get(0)));
								incomings_states_for_fragment_check
										.addAll(search_state.incoming(sparseMatrix, search_stack.get(0)));

								
								ArrayList<Integer> states_index_going_to_other_fragment = new ArrayList<>();
								Boolean stop_growing_flag = false;
								
								/*Check the status of the outgoing states*/
								stop_growing_flag = Fe.outgoing_states_status_check(outgoings_states_for_fragment_check, info_Array, fragment_index, stop_growing_flag, states_index_going_to_other_fragment);

								// If all the outgoing states are unvisited states
								if (stop_growing_flag == false) {
									// free growing from the current state
									info_Array.get(search_stack.get(0)).fragmentNumber = fragment_index;
									info_Array.get(search_stack.get(0)).visited = true;
									fragment_growing.growth(search_stack.get(0), sparseMatrix, info_Array,
											fragment_index, search_stack, number_of_states, model_parameter,
											ending_state_stack);

									number_of_states = fragment_growing.getNumberOfState();
									sparseMatrix = fragment_growing.getTransitionMatrix();
									model_parameter = fragment_growing.getParameter();

									StateIndexFragment.addAll(fragment_growing.getStateIndex());

								} else {// Modify the transition
									
									ArrayList<Integer> edited_transition_index = new ArrayList<>();
									
									edited_transition_index = Fe.transition_index_to_be_edited(states_index_going_to_other_fragment, sparseMatrix, edited_transition_index, search_stack);
																
									number_of_states = Fe.adding_states(states_index_going_to_other_fragment, search_stack, sparseMatrix, edited_transition_index, model_parameter, info_Array, number_of_states);
									


									
									// start free growing from the current state
									info_Array.get(search_stack.get(0)).fragmentNumber = fragment_index;
									info_Array.get(search_stack.get(0)).visited = true;
									fragment_growing.growth(search_stack.get(0), sparseMatrix, info_Array,
											fragment_index, search_stack, number_of_states, model_parameter,
											ending_state_stack);

									number_of_states = fragment_growing.getNumberOfState();
									sparseMatrix = fragment_growing.getTransitionMatrix();
									model_parameter = fragment_growing.getParameter();

									StateIndexFragment.addAll(fragment_growing.getStateIndex());

									number_of_transition = sparseMatrix.size();

								}
								
								search_stack.remove(0);

								/* This is the check for the lower bound of the number of states */
								if (search_stack.size() == 0
										&& StateIndexFragment.size() < minimum_number_of_state_in_fragment) {
						
									break_counter =Fe.min_break_stack(search_stack, StateIndexFragment, sparseMatrix, info_Array, break_counter);
									// This is to avoid infinite
									if (break_counter > StateIndexFragment.size()) {
										break;
									}
								}

								/* This is for the upper bound of the number of states */
								if (StateIndexFragment.size() >= Idea_maximum_number_of_state_in_fragment) {
									break;
								}
								
							} else {// If the state is a valid ending point
								// Mark the states as the mid-states as the number of states does not meet the minimum value
								if (growing_flag == false) {
									info_Array.get(search_stack.get(0)).fragmentNumber = fragment_index;
									info_Array.get(search_stack.get(0)).visited = true;
									search_stack.remove(0);
								} else { // Continue to grow
									fragment_growing.growth(search_stack.get(0), sparseMatrix, info_Array,
											fragment_index, search_stack, number_of_states, model_parameter,
											ending_state_stack);

									number_of_states = fragment_growing.getNumberOfState();
									sparseMatrix = fragment_growing.getTransitionMatrix();
									model_parameter = fragment_growing.getParameter();

									StateIndexFragment.addAll(fragment_growing.getStateIndex());

									search_stack.remove(0);
								}
							}
							
							// If the size of a form fragment is smaller than a threshold (minimum value that was previous set), continue to grow
							growing_flag = FSC.min_size_check(minimum_number_of_state_in_fragment, search_stack, StateIndexFragment, growing_flag, info_Array, sparseMatrix);
							
							


						}

						
						//This code is trying to stop a fragment, making states left in the Stack to be a valid ending point

						if (search_stack.size() != 0) {
							ending_state_stack.addAll(search_stack);
							search_stack.removeAll(search_stack);
						}

						int counter = 0;
						int previous_sum = 0;

						Fragment_stopping FS = new Fragment_stopping();
						
						while (ending_state_stack.size() != 0) {
							// The ending state here is not a starting state
							if (info_Array.get(ending_state_stack.get(0)).startingPoint != true) {
								//Checking if the state is a valid ending state
								Boolean valid_ending = ending_state_status.fragment_stop(sparseMatrix,
										ending_state_stack.get(0), info_Array, fragment_index);
								// The state is not a valid ending state
								if (valid_ending == false) {
									ending_state_status.fragment_stop(sparseMatrix, ending_state_stack.get(0),
											info_Array, fragment_index);
/* If the invalidity was due to incomings */
									if (ending_state_status.incoming_flag() == true
											&& ending_state_status.outgoing_flag() == false) {
										FS.DueToIncomings(ending_state_stack, sparseMatrix, info_Array, model_parameter, fragment_index);

										number_of_transition = sparseMatrix.size();

									}
/* 	If the invalidity was due to Outgoing */
									if (ending_state_status.outgoing_flag() == true
											&& ending_state_status.incoming_flag() == false) {

										number_of_states = FS.DueToOutgoing(ending_state_stack, sparseMatrix, info_Array, model_parameter, fragment_index, number_of_states);
										number_of_transition = sparseMatrix.size();
									}
/* If the validity was due to both incomings and outgoings*/									
									if (ending_state_status.outgoing_flag() == true
											&& ending_state_status.incoming_flag() == true) {

										int sum = 0;
										ArrayList<Integer> loop_state_index = new ArrayList<>();

										for (int k = 0; k < ending_state_stack.size(); k++) {
											sum += ending_state_stack.get(k);
										}

										// Continue to grow, the if states is to avoid potential loops
										if (previous_sum != sum) {
											fragment_growing.growth(ending_state_stack.get(0), sparseMatrix, info_Array,
													fragment_index, ending_state_stack, number_of_states,
													model_parameter, ending_state_stack);

											number_of_states = fragment_growing.getNumberOfState();
											sparseMatrix = fragment_growing.getTransitionMatrix();
											model_parameter = fragment_growing.getParameter();
											previous_sum = sum;
										} else {
											fragment_review = fragment_index;

											for (int k = 0; k < ending_state_stack.size(); k++) {
												if (!loop_state_index.contains(ending_state_stack.get(k))) {
													loop_state_index.add(ending_state_stack.get(k));
												}
											}
											for (int k = 0; k < loop_state_index.size(); k++) {
												info_Array.get(loop_state_index.get(k)).endingPoint = true;
												info_Array.get(loop_state_index.get(k)).fragmentNumber = fragment_index + number_of_states;
												info_Array.get(loop_state_index.get(k)).visited = true;
												info_Array.get(loop_state_index.get(k)).startingPoint = true;
											}
										}
									}
								} else { // If the state is valid ending point, assign them directly
									info_Array.get(ending_state_stack.get(0)).endingPoint = true;
									info_Array.get(ending_state_stack.get(0)).fragmentNumber = fragment_index;
									info_Array.get(ending_state_stack.get(0)).visited = true;
								}

								ending_state_stack.remove(0);

							} else { // If the state is also a starting state
								info_Array.get(ending_state_stack.get(0)).endingPoint = true;
								ending_state_stack.remove(0);
							}
						}

						Fragment_Review FR = new Fragment_Review();
						fragment_review = FR.fragment_validity(ending_state_stack, sparseMatrix, info_Array, model_parameter, fragment_index, number_of_states, fragment_review);
						number_of_states = info_Array.size();
					 
					}

				}

				Fragment_Review FR = new Fragment_Review();
				FR.DuplicationRemoval(sparseMatrix, model_parameter);

				number_of_transition = sparseMatrix.size();
				
				/*In case some states were missed from the previous process, to assign them as a single fragment*/
				for (int j=0; j<info_Array.size();j++) {
					if(info_Array.get(j).visited==false) {
						info_Array.get(j).visited = true;
						info_Array.get(j).startingPoint= true;
						info_Array.get(j).endingPoint = true;
						info_Array.get(j).fragmentNumber = fragment_index*5 +j;
					}
				}

				
				int Number_of_new_fragment = FR.Reordering(info_Array, fragment_index, original_number_of_states).size();

				//Update output content
				ArrayListString_model_expression = String.format(
						"%s\n\nIn New Model number of states = ( %d ); number of transition = ( %d ) \n\nNew transition\n",
						ArrayListString_model_expression, number_of_states, number_of_transition);
				for (int i = 0; i < transition_state.size(); i++) {
					ArrayListString_model_expression = String.format("%s%d --- %d  -> %s\n",
							ArrayListString_model_expression, transition_state.get(i).get(0),
							transition_state.get(i).get(1), model_parameter.get(i));
				}
				
				ArrayListString_model_expression = String.format(
						"%s\n\nState--Fragment Number--visited--startingPoint--endingPoint\n",
						ArrayListString_model_expression, number_of_states, number_of_transition);

				for (int i = 0; i < number_of_states; i++) {
					ArrayListString_model_expression = String.format(
							"%s   %d          %d          %s        %s          %s\n", ArrayListString_model_expression,
							i, info_Array.get(i).fragmentNumber, info_Array.get(i).visited,
							info_Array.get(i).startingPoint, info_Array.get(i).endingPoint);
				}


				String new_matlab_file_name = "new_model.m";
				matlab_output.generator(info_Array, transition_state, location,new_matlab_file_name);


				System.out.println("Construction Finished");
				long timeSpanConstruction = System.currentTimeMillis() -timeSpan;
				System.out.println(timeSpanConstruction);
				

				ArrayList<String> matlab_content = new ArrayList<>();
				matlab_content.add("****************************The expressions start from here; Copying following expressions to MATLAB; Providing values for the parameters needed; Checking the result of <Output_abstract_model> ******");
				
				Fragment_model_PCTL FMP = new Fragment_model_PCTL();
				
				matlab_content = FMP.Fragment_Model_PCTL_generator(matlab_content, Number_of_new_fragment, number_of_transition, number_of_states, info_Array, model_parameter, transition_state, location, ArrayListString_model_expression);
				ArrayListString_model_expression = FMP.getArrayListString_model_expression();


				PrismParamAPI api = new PrismParamAPI();

				
				matlab_content = FMP.Abstract_Model_PCTL_generator(matlab_content, property_file, Number_of_new_fragment, number_of_transition, number_of_states, info_Array, model_parameter, transition_state, location, ArrayListString_model_expression,pctl_state);
				ArrayListString_model_expression = FMP.getArrayListString_model_expression();
				String abstract_fragment_pctl = FMP.getAbstract_fragment_pctl();
				
				
				

				
/*Saving the output files in case original model fails*/				
				// Arraylist for the non-duplicated parameters.
				ArrayList<String> noDups_Param_declare_array = new ArrayList<>();

				// Add the Parameter and expression together
				noDups_Param_declare_array.addAll(matlab_content);
				String Model_expression = String.format(location.getPath() + File.separatorChar + "Model_expression");
				
				for (String s : noDups_Param_declare_array) {
					ArrayListString_model_expression += s + "\n";
				}

				
				if (abstract_fragment_pctl.length() > 1) {
					try {
						Files.writeString(Paths.get(Model_expression), ArrayListString_model_expression);
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				
				timeSpan = System.currentTimeMillis() - timeSpan;
				System.out.println(timeSpan);

			}
		}
		System.out.println("Finished");
		System.exit(0);
	}

}

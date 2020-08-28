package Path_finding;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;

import org.spg.PrismAPI.PrismParamAPI;
import org.spg.utils.PrismAPIUtilities;


@SuppressWarnings("unused")
public class AlgorithmB {
	public static void main(String[] args) throws Exception {

/*Start Use of Model and PCTL*/

		final String property_file = "models/YorkePMC/example2_pctl.pctl";
		final String model_file = "models/YorkePMC/example2_model.pm"
		
//		final String model_file = "models/ePMC/epmc_running_model_p.pm";
//		final String property_file = "models/ePMC/epmc_running_model_p.pctl";
		
/*End Use of Model and PCTL*/



/* This is used for generating a large number of testing suits*/
		// Determine maximum number of states and transitions
		final TransitionMatrix matrix = new TransitionMatrix(model_file, property_file);
		
      //Setting testing range
		for (int min_state = 2; min_state < matrix.getNumberOfStates() - 1; min_state++) {
			for (int max_state = min_state+1; max_state < matrix.getNumberOfStates(); max_state++) {
				
/* This is used for generating a large number of testing suits*/

		
///* This is used for generating a single testing case*/	
//		for (int min_state = 2; min_state <3; min_state++) {
//			for (int max_state = 3; max_state < 4; max_state++) {
///* This is used for generating a single testing case*/	
	
				
				// This variable is used as the content of the output file
				String ArrayListString_model_expression = "";

				// Ideal Minimum and Maximum number of states in each fragment
				int minimum_number_of_state_in_fragment = min_state;
				int Idea_maximum_number_of_state_in_fragment = max_state;

				// Create a directory to store the outputs, 
				String outputFolder = String.format("Results_Radu1" + File.separatorChar + "Model_min_%d_max_%d",
						minimum_number_of_state_in_fragment, Idea_maximum_number_of_state_in_fragment);
				File location = new File(outputFolder);
				location.mkdirs();

				ArrayListString_model_expression = String.format("Min_number = ( %d ) ; Max_number = ( %d )\n",
						minimum_number_of_state_in_fragment, Idea_maximum_number_of_state_in_fragment);

				// Load the input model and PCTL
				final TransitionMatrix tm = new TransitionMatrix(model_file, property_file);
				int number_of_states = tm.getNumberOfStates();
				int number_of_transition = tm.getNumberOfTransitions();
				ArrayList<ArrayList<Integer>> transition_state = tm.getTransitionStates();
				ArrayList<String> model_parameter = tm.getModelParameters();

				// Save information of the original model in the file
				ArrayListString_model_expression = String.format(
						"%sIn original model number_of_states = ( %d ); number_of_transition = ( %d ) \n\nOriginal Transition\n",
						ArrayListString_model_expression, number_of_states, number_of_transition);

				//This is used to indicate PCTL for abstract model, how a state in original model is transferred
				ArrayList<Integer> State_label_abstract = new ArrayList<>();

				// Convert the Arraylist into a matrix
				ArrayList<ArrayList<Integer>> sparseMatrix = transition_state;

				// Save the transitions and parameters of the original model
				for (int i = 0; i < transition_state.size(); i++) {
					ArrayListString_model_expression = String.format("%s%d --- %d  -> %s\n",
							ArrayListString_model_expression, transition_state.get(i).get(0),
							transition_state.get(i).get(1), model_parameter.get(i));
				}

				// Create a stack for expanding a fragment
				ArrayList<Integer> search_stack = new ArrayList<Integer>();
				
				// Create a stack for forcibly ending a fragment
				ArrayList<Integer> ending_state_stack = new ArrayList<Integer>();

				/* This function determines incoming or outgoing states for a given state */
				Find_states search_state = new Find_states(); // defined in Find_states.java

				/*
				 * info_Array stores [(Boolean) starting point of a fragment; (Boolean) visited
				 * states; (Boolean) Ending point of a fragment; (Integer) Fragment Number] for
				 * all the states
				 */
				ArrayList<Modelinfo> info_Array = new ArrayList<>();

				for (int i = 0; i < number_of_states; i++) {
					info_Array.add(new Modelinfo());
				}

				/* Marking self-loop vertices as visited and assign a fragment number */
				for (int i = 0; i < number_of_states; i++) {
					ArrayList<Integer> temp = search_state.outgoing(sparseMatrix, i);
					if (temp.size() == 1 && temp.get(0) == i) {
						info_Array.get(i).fragmentNumber = number_of_states + i;
						info_Array.get(i).visited = true;
						info_Array.get(i).endingPoint = true;
						info_Array.get(i).startingPoint = true;
					}

				}

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

						// If the size of a form fragment is smaller than a threshold (minimum value that was previous set), continue to grow
						if (search_stack.size() == 0&& StateIndexFragment.size() < minimum_number_of_state_in_fragment) {
							for (int j = 0; j < StateIndexFragment.size(); j++) {

								// Determine all outgoing states for a given state 
								ArrayList<Integer> ending_point_outgoings_2 = new ArrayList<>();
								ending_point_outgoings_2
										.addAll(search_state.outgoing(sparseMatrix, StateIndexFragment.get(j)));
								
								//temp_decision == true means that this ending point points to other existing fragment.
								Boolean temp_decision = false;
								if (ending_point_outgoings_2.size() != 0) {
									for (int k = 0; k < ending_point_outgoings_2.size(); k++) {
										if (info_Array.get(ending_point_outgoings_2.get(k)).fragmentNumber != 0) {
											temp_decision = true;
										}
									}
								}

								// Mark the current ending points as "mid-pint" and put them into Search Stack 
								if (info_Array.get(StateIndexFragment.get(j)).endingPoint == true
										&& temp_decision == false) {
									info_Array.get(StateIndexFragment.get(j)).endingPoint = false;
									search_stack.add(StateIndexFragment.get(j));
									growing_flag = true;
								}
							}
						}

						// If the number of states in fragment is excced the Max value that was previously set, Move all states in search stack into ending_state_stack
						if (StateIndexFragment.size() >= Idea_maximum_number_of_state_in_fragment) {
							ending_state_stack.addAll(search_stack);
							search_stack.removeAll(search_stack);
						}

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
								
								// If the given state has at least one outgoing state
								if (outgoings_states_for_fragment_check.size() != 0) {
									boolean to_grow = false;
									// to_grow == true  if there is at least one outgoing state are not assigned into a fragment
									for (int j = 0; j < outgoings_states_for_fragment_check.size(); j++) {
										if (info_Array
												.get(outgoings_states_for_fragment_check.get(j)).fragmentNumber == 0) {
											to_grow = true;
										}
									}
									
									// Determine the state number of the outgoing states that belong to other existing fragment and store in states_index_going_to_other_fragment
									for (int j = 0; j < outgoings_states_for_fragment_check.size(); j++) {
										if (to_grow == true) {
											if (info_Array.get(
													outgoings_states_for_fragment_check.get(j)).fragmentNumber != 0) {
												if (info_Array.get(outgoings_states_for_fragment_check
														.get(j)).fragmentNumber != fragment_index) {
													stop_growing_flag = true;
													states_index_going_to_other_fragment
															.add(outgoings_states_for_fragment_check.get(j));
												}
											}
										}
									}
								}

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

									// Determine what states and transitions need to be modified
									if (states_index_going_to_other_fragment.size() > 0) {
										for (int k = 0; k < states_index_going_to_other_fragment.size(); k++) {
											for (int j = 0; j < sparseMatrix.size(); j++) {
												if (sparseMatrix.get(j).get(0) == search_stack.get(0) && sparseMatrix
														.get(j).get(1) == states_index_going_to_other_fragment.get(k)) {
													edited_transition_index.add(j);
												}
											}
										}
									}

									// Create new states and transitions to ensure that all the outgoing states of the current state are unvisited states
									if (states_index_going_to_other_fragment.size() > 0) {
										for (int j = 0; j < states_index_going_to_other_fragment.size(); j++) {
											// Transition matrix
											/* From existing node to a new node */
											ArrayList<Integer> new_transition_to_new = new ArrayList<>();
											new_transition_to_new.add(search_stack.get(0));
											new_transition_to_new.add(number_of_states);

											sparseMatrix.add(new_transition_to_new);

											// updates parameters
											String new_parameter = model_parameter.get(edited_transition_index.get(j));
											model_parameter.add(new_parameter);

											/* From new node to other existing node */
											ArrayList<Integer> new_transition_from_new = new ArrayList<>();
											new_transition_from_new.add(number_of_states);
											new_transition_from_new.add(states_index_going_to_other_fragment.get(j));

											sparseMatrix.add(new_transition_from_new);

											number_of_states++;
											info_Array.add(new Modelinfo());
											
											// updates parameters
											String new_parameter_2 = "1";
											model_parameter.add(new_parameter_2);
										}

									}

									// Remove transitions that are no longer useful
									for (int k = edited_transition_index.size() - 1; k >= 0; k--) {
										int removal_index = edited_transition_index.get(k);
										sparseMatrix.remove(removal_index);
										model_parameter.remove(removal_index);
									}
									
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
									// Continue to grow
									for (int j = 0; j < StateIndexFragment.size(); j++) {
										ArrayList<Integer> ending_point_outgoings_1 = new ArrayList<>();
										ending_point_outgoings_1
												.addAll(search_state.outgoing(sparseMatrix, StateIndexFragment.get(j)));
										Boolean temp_decision = false;

										if (ending_point_outgoings_1.size() != 0) {
											for (int k = 0; k < ending_point_outgoings_1.size(); k++) {
												if (info_Array
														.get(ending_point_outgoings_1.get(k)).fragmentNumber != 0) {
													temp_decision = true;
												}
											}

										}

										if (info_Array.get(StateIndexFragment.get(j)).endingPoint == true
												&& temp_decision != true) {
											info_Array.get(StateIndexFragment.get(j)).endingPoint = false;
											search_stack.add(StateIndexFragment.get(j));
											break_counter++;
										}
									}
									
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
							
							// If the size of a form fragment is smaller than a threshold, continue to grow
							if (search_stack.size() == 0
									&& StateIndexFragment.size() < minimum_number_of_state_in_fragment) {
								for (int j = 0; j < StateIndexFragment.size(); j++) {

									ArrayList<Integer> ending_point_outgoings_2 = new ArrayList<>();
									ending_point_outgoings_2
											.addAll(search_state.outgoing(sparseMatrix, StateIndexFragment.get(j)));

									//temp_decision == true means that this ending point points to other existing fragment.
									Boolean temp_decision = false;
									if (ending_point_outgoings_2.size() != 0) {
										for (int k = 0; k < ending_point_outgoings_2.size(); k++) {
											if (info_Array.get(ending_point_outgoings_2.get(k)).fragmentNumber != 0) {
												temp_decision = true;
											}
										}
									}

									if (info_Array.get(StateIndexFragment.get(j)).endingPoint == true
											&& temp_decision == false) {
										info_Array.get(StateIndexFragment.get(j)).endingPoint = false;
										search_stack.add(StateIndexFragment.get(j));
										growing_flag = true;
									}
								}
							}

						}

						
						//This code is trying to stop a fragment, making states left in the Stack to be a valid ending point

						if (search_stack.size() != 0) {
							ending_state_stack.addAll(search_stack);
							search_stack.removeAll(search_stack);
						}

						int counter = 0;
						int previous_sum = 0;

						
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

//										System.out.println("incoming");
//										System.out.printf("(%s)", ending_state_stack.get(0));
//										System.out.println("\n");
										ArrayList<Integer> ending_point_incomings = new ArrayList<>();
										ArrayList<Integer> ending_point_outgoings = new ArrayList<>();

										ending_point_incomings
												.addAll(search_state.incoming(sparseMatrix, ending_state_stack.get(0)));
										ending_point_outgoings
												.addAll(search_state.outgoing(sparseMatrix, ending_state_stack.get(0)));
										ArrayList<Integer> transition_remover_index = new ArrayList<>();

										// Modify transitions of the original model
										for (int k = 0; k < ending_point_incomings.size(); k++) {
											if (info_Array.get(
													ending_point_incomings.get(k)).fragmentNumber != fragment_index) {
												for (int incoming_transition_index = 0; incoming_transition_index < sparseMatrix
														.size(); incoming_transition_index++) {
													if (sparseMatrix.get(incoming_transition_index)
															.get(0) == ending_point_incomings.get(k)
															&& sparseMatrix.get(incoming_transition_index)
																	.get(1) == ending_state_stack.get(0)) {

														transition_remover_index.add(incoming_transition_index);
														for (int t = 0; t < ending_point_outgoings.size(); t++) {
															if (info_Array.get(ending_point_outgoings
																	.get(t)).fragmentNumber != fragment_index | (info_Array.get(ending_point_outgoings
																			.get(t)).fragmentNumber == fragment_index && info_Array.get(ending_point_outgoings
																					.get(t)).startingPoint==true)) {
																for (int outgoing_transition_index = 0; outgoing_transition_index < sparseMatrix
																		.size(); outgoing_transition_index++) {
																	if (sparseMatrix.get(outgoing_transition_index)
																			.get(0) == ending_state_stack.get(0)
																			&& sparseMatrix
																					.get(outgoing_transition_index)
																					.get(1) == ending_point_outgoings
																							.get(t)) {

																		// Transition matrix
																		ArrayList<Integer> new_transition = new ArrayList<>();
																		new_transition
																				.add(ending_point_incomings.get(k));
																		new_transition
																				.add(ending_point_outgoings.get(t));
																		sparseMatrix.add(new_transition);

																		// Parameter
																		String new_parameter = String.format(
																				"( %s ) * ( %s )",
																				model_parameter
																						.get(incoming_transition_index),
																				model_parameter.get(
																						outgoing_transition_index));
																		model_parameter.add(new_parameter);
																	}
																}

															}
														}

													}
												}
											}
										}
										
										// Remove transitions that are no longer use
										for (int k = transition_remover_index.size() - 1; k >= 0; k--) {
											int remove_index = transition_remover_index.get(k);
											sparseMatrix.remove(remove_index);
											model_parameter.remove(remove_index);
										}
										
										// The state becomes a valid ending state
										info_Array.get(ending_state_stack.get(0)).endingPoint = true;
										info_Array.get(ending_state_stack.get(0)).fragmentNumber = fragment_index;
										info_Array.get(ending_state_stack.get(0)).visited = true;

										number_of_transition = sparseMatrix.size();

									}
/* 	If the invalidity was due to Outgoing */
									if (ending_state_status.outgoing_flag() == true
											&& ending_state_status.incoming_flag() == false) {
//										System.out.println("outgoing");
//										System.out.printf("(%s)", ending_state_stack.get(0));
//										System.out.println("\n");

										ArrayList<Integer> ending_point_incomings_states = new ArrayList<>();
										ArrayList<Integer> ending_point_outgoings_states = new ArrayList<>();

										ending_point_incomings_states
												.addAll(search_state.incoming(sparseMatrix, ending_state_stack.get(0)));
										ending_point_outgoings_states
												.addAll(search_state.outgoing(sparseMatrix, ending_state_stack.get(0)));
										ArrayList<Integer> edited_transition_index = new ArrayList<>();

										// Determine what transition and states need to be modified
										for (int k = 0; k < ending_point_outgoings_states.size(); k++) {
											if (info_Array.get(ending_point_outgoings_states
													.get(k)).fragmentNumber != fragment_index) {
												for (int outgoing_transition_index = 0; outgoing_transition_index < sparseMatrix
														.size(); outgoing_transition_index++) {
													if (sparseMatrix.get(outgoing_transition_index)
															.get(0) == ending_state_stack.get(0)
															&& sparseMatrix.get(outgoing_transition_index)
																	.get(1) == ending_point_outgoings_states.get(k)) {
														edited_transition_index.add(outgoing_transition_index);
													}
												}
											}
										}

										
										/* Create new states*/
										//From existing node to a new node 
										// Just one state needs to be modified
										if (edited_transition_index.size() == 1) {
											// Transition matrix
											ArrayList<Integer> new_transition = new ArrayList<>();
											new_transition.add(sparseMatrix.get(edited_transition_index.get(0)).get(0));
											new_transition.add(number_of_states);

											sparseMatrix.add(new_transition);

											// parameters
											String new_parameter = model_parameter.get(edited_transition_index.get(0));
											model_parameter.add(new_parameter);
										}
										
										// More than one states need to be modified
										if (edited_transition_index.size() > 1) {
											// Transition matrix
											ArrayList<Integer> new_transition = new ArrayList<>();
											new_transition.add(sparseMatrix.get(edited_transition_index.get(0)).get(0));
											new_transition.add(number_of_states);

											sparseMatrix.add(new_transition);
											// parameters
											String new_parameter = "";

											for (int k = 0; k < edited_transition_index.size(); k++) {
												if (new_parameter == "") {
													new_parameter = model_parameter.get(edited_transition_index.get(k));
												} else {
													new_parameter = String.format("( %s ) + ( %s )", new_parameter,
															model_parameter.get(edited_transition_index.get(k)));
												}
											}
											model_parameter.add(new_parameter);
										}

										// From new node to other existing node 
										// The last model_parameter is always be the newly constructed
										int parameter_index = model_parameter.size() - 1;
										
										// Just one state needs to be modified
										if (edited_transition_index.size() == 1) {
											// Transition matrix
											ArrayList<Integer> new_transition = new ArrayList<>();
											new_transition.add(number_of_states);
											new_transition.add(sparseMatrix.get(edited_transition_index.get(0)).get(1));

											sparseMatrix.add(new_transition);

											// parameters
											String new_parameter = "1";
											model_parameter.add(new_parameter);
										}
										
										// More than one states need to be modified
										if (edited_transition_index.size() > 1) {
											// Transition matrix & parameters
											for (int k = 0; k < edited_transition_index.size(); k++) {
												ArrayList<Integer> new_transition = new ArrayList<>();
												new_transition.add(number_of_states);
												new_transition
														.add(sparseMatrix.get(edited_transition_index.get(k)).get(1));

												sparseMatrix.add(new_transition);

												String new_parameter = "";
												new_parameter = String.format("( %s ) / ( %s )",
														model_parameter.get(edited_transition_index.get(k)),
														model_parameter.get(parameter_index));

												model_parameter.add(new_parameter);
											}

										}
										
										// Updates Info-array
										if (edited_transition_index.size() >= 1) {
											ending_state_stack.add(number_of_states);
											number_of_states++;
											info_Array.add(new Modelinfo());
										}

										// Remove transitions and states that are no longer use
										for (int k = edited_transition_index.size() - 1; k >= 0; k--) {
											int removal_index = edited_transition_index.get(k);
											sparseMatrix.remove(removal_index);
											model_parameter.remove(removal_index);
										}

										number_of_transition = sparseMatrix.size();
									}
/* If the validity was due to both incomings and outgoings*/									
									if (ending_state_status.outgoing_flag() == true
											&& ending_state_status.incoming_flag() == true) {
//										System.out.println("both");
//										System.out.printf("(%s)", ending_state_stack.get(0));
//										System.out.println("\n");
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
												fragment_index++;
												info_Array.get(loop_state_index.get(k)).endingPoint = true;
												info_Array.get(loop_state_index.get(k)).fragmentNumber = fragment_index;
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

						ArrayList<Integer> Look_up_stack = new ArrayList<Integer>();

						/* Determines all states that has the same fragment number */
						for (int j = 0; j < number_of_states; j++) {
							if (info_Array.get(j).fragmentNumber == fragment_index) {
								Look_up_stack.add(j);
							}
						}

						ArrayList<Integer> Mid_state_to_expand_index = new ArrayList<>();

						// Review the validity of all states in the fragment 
						if (Look_up_stack.size() != 0) {
							for (int j = 0; j < Look_up_stack.size(); j++) {
								ArrayList<Integer> Look_up_stack_outgoing = search_state.outgoing(sparseMatrix,
										Look_up_stack.get(j));
								for (int k = 0; k < Look_up_stack_outgoing.size(); k++) {
									// A state points to another fragment but it is not an ending point
									if (info_Array.get(Look_up_stack_outgoing.get(k)).fragmentNumber != fragment_index
											&& info_Array.get(Look_up_stack.get(j)).endingPoint == false) {
										fragment_review = fragment_index;
										break;
									}

									// A state points to the inside of the fragment but it is an ending point
									if (info_Array.get(Look_up_stack_outgoing.get(k)).fragmentNumber == fragment_index
											&& info_Array.get(Look_up_stack.get(j)).endingPoint == true) {
										Mid_state_to_expand_index.add(Look_up_stack.get(j));
									}

								}
							}
						}

						// If an invalid ending state determined, Modify the transition to make it valid
						if (Mid_state_to_expand_index.size() > 0) {
							for (int j = 0; j < Mid_state_to_expand_index.size(); j++) {
								ArrayList<Integer> Look_up_stack_outgoing = search_state.outgoing(sparseMatrix,
										Mid_state_to_expand_index.get(j));
								for (int k = 0; k < Look_up_stack_outgoing.size(); k++) {
									if (info_Array
											.get(Look_up_stack_outgoing.get(k)).fragmentNumber != fragment_index) {
										// add a new states
										ArrayList<Integer> edited_transition_index = new ArrayList<>();

										// locate transition index
										for (int t = 0; t < sparseMatrix.size(); t++) {
											if (sparseMatrix.get(t).get(0) == Mid_state_to_expand_index.get(j)
													&& sparseMatrix.get(t).get(1) == Look_up_stack_outgoing.get(k)) {
												edited_transition_index.add(t);
											}
										}

										if (edited_transition_index.size() > 0) {
											// Transition matrix
											/* From existing node to a new node */
											ArrayList<Integer> new_transition_to_new = new ArrayList<>();
											new_transition_to_new.add(Mid_state_to_expand_index.get(j));
											new_transition_to_new.add(number_of_states);

											sparseMatrix.add(new_transition_to_new);

											// parameters
											String new_parameter = model_parameter.get(edited_transition_index.get(0));
											model_parameter.add(new_parameter);

											/* From new node to other existing node */
											ArrayList<Integer> new_transition_from_new = new ArrayList<>();
											new_transition_from_new.add(number_of_states);
											new_transition_from_new.add(Look_up_stack_outgoing.get(k));

											sparseMatrix.add(new_transition_from_new);

											info_Array.add(new Modelinfo());

											info_Array.get(number_of_states).visited = true;
											info_Array.get(number_of_states).fragmentNumber = fragment_index;
											info_Array.get(number_of_states).endingPoint = true;
											info_Array.get(number_of_states).startingPoint = false;

											number_of_states++;

											// parameters
											String new_parameter_2 = "1";
											model_parameter.add(new_parameter_2);

											int removal_index = edited_transition_index.get(0);
											sparseMatrix.remove(removal_index);
											model_parameter.remove(removal_index);

											info_Array.get(Mid_state_to_expand_index.get(j)).endingPoint = false;
										}

									} else {// If the state is already a mid-state but with ending state label
										info_Array.get(Mid_state_to_expand_index.get(j)).endingPoint = false;
									}

								}

							}

						}

						// The fragment is invalid, all states in this fragment need to be revisited
						if (fragment_review > 0) {
							for (int j = 0; j < info_Array.size(); j++) {
								if (info_Array.get(j).fragmentNumber == fragment_review) {
									info_Array.get(j).fragmentNumber = 0;
									info_Array.get(j).visited = false;
									info_Array.get(j).endingPoint = false;
									info_Array.get(j).startingPoint = false;
								}
							}
						}

					}

				}

				/* Removing duplication of transition and combine their transitions */

				// Hashset for the non-duplicated transition.
				Collection<ArrayList<Integer>> noDups_transition_mixedorder = new HashSet<ArrayList<Integer>>(
						sparseMatrix);

				// Arraylist for the non-duplicated transition.
				ArrayList<ArrayList<Integer>> noDups_transition_mixedorder_array = new ArrayList<ArrayList<Integer>>(
						noDups_transition_mixedorder);

				// Find the index for duplication, and combine their model parameters
				for (int i = 0; i < noDups_transition_mixedorder.size(); i++) {
					ArrayList<Integer> Dup_index = new ArrayList<Integer>();
					for (int j = 0; j < sparseMatrix.size(); j++) {
						if (sparseMatrix.get(j).equals(noDups_transition_mixedorder_array.get(i))) {
							Dup_index.add(j);
						}
					}

					if (Dup_index.size() > 1) {
						String string = null;
						// Combination of model parameter
						for (int j = 0; j < Dup_index.size() - 1; j++) {
							if (j == 0) {
								string = model_parameter.get(Dup_index.get(j));
								string = String.format(" %s + %s ", string, model_parameter.get(Dup_index.get(j + 1)));
							} else
								string = String.format(" %s + %s ", string, model_parameter.get(Dup_index.get(j + 1)));
						}
						// Updates of model parameter
						for (int j = 0; j < Dup_index.size(); j++) {
							model_parameter.set(Dup_index.get(j), string);
						}
						// Duplication removal
						for (int j = Dup_index.size() - 1; j > 0; j--) {
							int removing_index = Dup_index.get(j);
							model_parameter.remove(removing_index);
							sparseMatrix.remove(removing_index);
						}
					}
				}

				number_of_transition = sparseMatrix.size();

				/* Re-ordering fragment number using consecutive number and starting from 1 */
				number_of_states = info_Array.size();
				for (int i = 0; i < number_of_states; i++) {
					if (info_Array.get(i).fragmentNumber > number_of_states) {
						fragment_index++;
						info_Array.get(i).fragmentNumber = fragment_index;
					}
				}

				ArrayList<Integer> frag_n = new ArrayList<Integer>();
				for (int i = 0; i < number_of_states; i++) {
					if (!frag_n.contains(info_Array.get(i).fragmentNumber)) {
						frag_n.add(info_Array.get(i).fragmentNumber);
					}
				}

				int Number_of_new_fragment = frag_n.size();

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

				// Save matlab file
				Matlab_file_generator matlab_output = new Matlab_file_generator();
				matlab_output.generator(info_Array, transition_state, location);

/*
 * The following code does function C that determine the transition matrix and
 * parameter for each fragment
 */

				ArrayList<String> matlab_content = new ArrayList<>();

				PrismParamAPI api = new PrismParamAPI();
				for (int i = 1; i <= Number_of_new_fragment; i++) {

					ArrayList<ArrayList<Integer>> inFragment_transition = new ArrayList<ArrayList<Integer>>(
							transition_state);
					ArrayList<String> inFragment_model_parameter = new ArrayList<String>(model_parameter);
					ArrayList<Integer> frag_non_ending_state = new ArrayList<Integer>();
					ArrayList<Integer> frag_ending_state = new ArrayList<Integer>();
					ArrayList<Integer> frag_state_index_remover = new ArrayList<Integer>();
					ArrayList<Integer> frag_transition_index = new ArrayList<Integer>();

					/* Determine non-ending state and ending states in each fragment */
					for (int j = 0; j < number_of_states; j++) {
						if (info_Array.get(j).fragmentNumber == i && info_Array.get(j).endingPoint == false) {
							frag_non_ending_state.add(j);
						}
						if (info_Array.get(j).fragmentNumber == i && info_Array.get(j).endingPoint == true) {
							frag_ending_state.add(j);
						}
					}

					/* Determine the index of transition matrix that will remain */
					for (int j = 0; j < number_of_transition; j++) {
						frag_state_index_remover.add(j);
						for (int k = 0; k < frag_non_ending_state.size(); k++) {
							if (inFragment_transition.get(j).get(0) == frag_non_ending_state.get(k)) {
								frag_transition_index.add(j);
							}
						}
					}

					/* Determine the index of transition matrix that will be removed */
					frag_state_index_remover.removeAll(frag_transition_index);

					/*
					 * removing transitions from the matrix, and parameters from the model
					 * parameter, according to the index
					 */
					for (int j = frag_state_index_remover.size() - 1; j >= 0; j--) {
						int index = frag_state_index_remover.get(j);
						// remove transition
						inFragment_transition.remove(index);
						// remove model parameter
						inFragment_model_parameter.remove(index);
					}

					/* Assign output states as self-loops and with the probability of 1. */
					for (int j = 0; j < frag_ending_state.size(); j++) {
						ArrayList<Integer> temp1 = new ArrayList<Integer>();
						// Self-loops
						temp1.add(frag_ending_state.get(j));
						temp1.add(frag_ending_state.get(j));
						inFragment_transition.add(temp1);
						// Probability of one
						inFragment_model_parameter.add("1");
					}

//					/* Print out the in-fragment transition matrix and parameter */
//					String string = String.format("This is Fragment %d", i);
//					System.out.print(string);
//					System.out.print("\n");
//					System.out.print("---------------------");
//					for (int j = 0; j < inFragment_transition.size(); j++) {
//						System.out.print("\n");
//						System.out.print(inFragment_transition.get(j));
//						System.out.print(" ");
//						System.out.print(inFragment_model_parameter.get(j));
//						System.out.print("\n");
//					}
//					System.out.print("----------------------------------------------------------");
//					System.out.print("\n");

					ArrayListString_model_expression = String.format("%s\nThis is transition in Fragment (%d) \n",
							ArrayListString_model_expression, i);
					for (int j = 0; j < inFragment_transition.size(); j++) {
						ArrayListString_model_expression = String.format("%s    %s  %s\n",
								ArrayListString_model_expression, inFragment_transition.get(j),
								inFragment_model_parameter.get(j));
					}

					/* generating of pctl file */
					pctl_generation pctl = new pctl_generation();
					Prism_model_generator prism_model = new Prism_model_generator();

					if (inFragment_transition.size() > 1) {

						pctl.generator(info_Array, inFragment_transition, i, location);
						ArrayList<String> outputStateIndex = new ArrayList<>();
						outputStateIndex = prism_model.generator(info_Array, inFragment_transition,
								inFragment_model_parameter, i, location);

						location.mkdirs();

						String model_file_name = String
								.format(location.getPath() + File.separatorChar + "fragment_%d_model.pm", i);
						String model_property_name = String
								.format(location.getPath() + File.separatorChar + "fragment_%d_property.pctl", i);

						/* Call API load Model and PCTL */
						api.loadParamModel(PrismAPIUtilities.readModelFile(model_file_name));
						api.setPropertiesFile(model_property_name);
						List<String> GetExpression = api.getPrismParamExpression();

						for (int k = 0; k < GetExpression.size(); k++) {

							String temp_expression = String.format("%s = %s; ", outputStateIndex.get(k),
									GetExpression.get(k));
							// Trimer the expression that can be directly read by matlab
							temp_expression = temp_expression.replace("{", "").replace("}", "")
									.replace("( -1 )", "(-1)*").replace("|", ") / (").replace("=", "=(")
									.replace(";", ");");

							matlab_content.add(temp_expression);
						}
					}
				}

				/*
				 * The following code does function E, that obtains the abstract model
				 */
				Prism_model_generator prism_model = new Prism_model_generator();
				ArrayList<ArrayList<Integer>> abstract_transition = new ArrayList<ArrayList<Integer>>(transition_state);
				ArrayList<String> abstract_model_parameter = new ArrayList<String>(model_parameter);
				ArrayList<Integer> abstract_ending_state = new ArrayList<Integer>();
				ArrayList<Integer> abstract_state_index_remover = new ArrayList<Integer>();
				ArrayList<Integer> abstract_transition_index_remover = new ArrayList<Integer>();

				/* Determine non-ending state and ending states in each fragment */
				for (int j = 0; j < number_of_states; j++) {
					abstract_state_index_remover.add(j);
					if (info_Array.get(j).endingPoint == true) {
						abstract_ending_state.add(j);
					}
				}

				abstract_state_index_remover.removeAll(abstract_ending_state);

				/* Determine the index of transition matrix that will be removed */
				for (int j = 0; j < number_of_transition; j++) {
					for (int k = 0; k < abstract_state_index_remover.size(); k++) {
						if (abstract_transition.get(j).get(0) == abstract_state_index_remover.get(k)) {
							abstract_transition_index_remover.add(j);
						}
					}
				}

				/* Remove the transitions and parameters */
				for (int j = abstract_transition_index_remover.size() - 1; j >= 0; j--) {
					int index = abstract_transition_index_remover.get(j);
					// obtain the transition
					abstract_transition.remove(index);
					// obtain the parameter
					abstract_model_parameter.remove(index);
				}

				/*
				 * Naming the PCTL which will be used for determining the parameters in abstract
				 * model
				 */
				for (int i = 1; i <= Number_of_new_fragment; i++) {
					for (int j = 0; j < abstract_transition.size(); j++) {
						// The construction will only apply to fragment that has more than one state.
						if (info_Array.get(abstract_transition.get(j).get(0)).endingPoint != info_Array
								.get(abstract_transition.get(j).get(0)).startingPoint) {
							if (info_Array.get(abstract_transition.get(j).get(0)).fragmentNumber == i) {
								String string_cptl = String.format("prob_f%d_s%d", i,
										abstract_transition.get(j).get(0));
								String string = String.format("( %s ) * ( %s )", abstract_model_parameter.get(j),
										string_cptl);
								abstract_model_parameter.set(j, string);
							}
						}
					}
				}

//				/* Print out the abstract transition matrix and parameter */
//				String string_abstract = "This is abstract model";
//				System.out.print(string_abstract);
//				System.out.print("\n");
//				System.out.print("---------------------");
//				for (int j = 0; j < abstract_transition.size(); j++) {
//					System.out.print("\n");
//					System.out.print(abstract_transition.get(j));
//					System.out.print(" ");
//					System.out.print(abstract_model_parameter.get(j));
//					System.out.print("\n");
//				}
//				System.out.print("----------------------------------------------------------");
//				System.out.print("\n");

				ArrayListString_model_expression = String.format("%s\nThis is transition for abstract model \n",
						ArrayListString_model_expression);
				for (int j = 0; j < abstract_transition.size(); j++) {
					ArrayListString_model_expression = String.format("%s    %s  %s\n", ArrayListString_model_expression,
							abstract_transition.get(j), abstract_model_parameter.get(j));
				}

				/*
				 * Replacing state with fragment number, this time fragment numbers were all
				 * minus 1, enabling the state of the model starts from the number 0
				 */
				for (int j = 0; j < abstract_transition.size(); j++) {
					abstract_transition.get(j).set(0,
							info_Array.get(abstract_transition.get(j).get(0)).fragmentNumber - 1);
					abstract_transition.get(j).set(1,
							info_Array.get(abstract_transition.get(j).get(1)).fragmentNumber - 1);
				}

				/* Find the duplication of the states after the previous process */
				ArrayList<String> abstract_model_parameter_updated = new ArrayList<String>(abstract_model_parameter);

				// Hashset for the non-duplicated transition.
				Collection<ArrayList<Integer>> noDups_abstract_transition_mixedorder = new HashSet<ArrayList<Integer>>(
						abstract_transition);

				// Arraylist for the non-duplicated transition.
				ArrayList<ArrayList<Integer>> noDups_abstract_transition_mixedorder_array = new ArrayList<ArrayList<Integer>>(
						noDups_abstract_transition_mixedorder);

				// Find the index for duplication, and combine their model parameters
				for (int i = 0; i < noDups_abstract_transition_mixedorder.size(); i++) {
					ArrayList<Integer> Dup_index = new ArrayList<Integer>();
					for (int j = 0; j < abstract_transition.size(); j++) {
						if (abstract_transition.get(j).equals(noDups_abstract_transition_mixedorder_array.get(i))) {
							Dup_index.add(j);
						}
					}

					if (Dup_index.size() > 1) {
						String string = null;
						// Combination of model parameter
						for (int j = 0; j < Dup_index.size() - 1; j++) {
							if (j == 0) {
								string = abstract_model_parameter_updated.get(Dup_index.get(j));
								string = String.format(" %s + %s ", string,
										abstract_model_parameter_updated.get(Dup_index.get(j + 1)));
							} else
								string = String.format(" %s + %s ", string,
										abstract_model_parameter_updated.get(Dup_index.get(j + 1)));
						}
						// Updates of model parameter
						for (int j = 0; j < Dup_index.size(); j++) {
							abstract_model_parameter_updated.set(Dup_index.get(j), string);
						}
						// Duplication removal
						for (int j = Dup_index.size() - 1; j > 0; j--) {
							int removing_index = Dup_index.get(j);
							abstract_model_parameter_updated.remove(removing_index);
							abstract_transition.remove(removing_index);
						}
					}
				}

				// Obtaining abstract model. Note that -1 indicate the abstract.
				prism_model.generator(info_Array, abstract_transition, abstract_model_parameter_updated, -1, location);

				// Obtaining PCTL for abstract model
				String abstract_fragment_pctl = "";
				try {
					File myObj = new File(property_file);
					Scanner myReader = new Scanner(myObj);
					while (myReader.hasNextLine()) {
						ArrayList<Integer> Orignal_model_state_pctl = new ArrayList<>();
						ArrayList<Integer> abstract_model_state_pctl = new ArrayList<>();
						String data = myReader.nextLine();
						String[] tempSplit = data.split("=");

						for (int i = 0; i < tempSplit.length; i++) {
							String temp_state_numner = "";
							for (int j = 0; j < tempSplit[i].length(); j++) {
								if ('0' <= tempSplit[i].charAt(j) && tempSplit[i].charAt(j) <= '9') {
									temp_state_numner += tempSplit[i].charAt(j);
								}
							}
							if (temp_state_numner != "") {
								Orignal_model_state_pctl.add(Integer.parseInt(temp_state_numner));
							}
						}

						for (int i = 0; i < Orignal_model_state_pctl.size(); i++) {
							// As the fragment Number starts from 1, it needs to minus 1 to find the state.
							abstract_model_state_pctl
									.add(info_Array.get(Orignal_model_state_pctl.get(i)).fragmentNumber - 1);
						}
						for (int i = 0; i < Orignal_model_state_pctl.size(); i++) {
							data = data.replace(Integer.toString(Orignal_model_state_pctl.get(i)),
									Integer.toString(abstract_model_state_pctl.get(i))).replace("state", "s");
						}

						abstract_fragment_pctl = String.format("%s\n%s", abstract_fragment_pctl, data);
					}
					myReader.close();
				} catch (FileNotFoundException e) {
					System.out.println("An error occurred.");
					e.printStackTrace();
				}

				// Getting file name for abstract model pctl
				location.mkdirs();
				String model_property_abstract = String
						.format(location.getPath() + File.separatorChar + "fragment_abstract_model.pctl");

				try {

					Files.writeString(Paths.get(model_property_abstract), abstract_fragment_pctl);

				} catch (IOException e) {
					e.printStackTrace();
				}

				// Getting file name for the abstract model
				String model_file_abstract = String
						.format(location.getPath() + File.separatorChar + "fragment_abstract_model.pm");

				// API to obtain expression
				api.loadParamModel(PrismAPIUtilities.readModelFile(model_file_abstract));
				api.setPropertiesFile(model_property_abstract);
				List<String> GetExpression = api.getPrismParamExpression();

				String temp_expression = String.format("Output_abstract_model = %s; ", GetExpression.get(0));
				// Trimmer the expression
				temp_expression = temp_expression.replace("{", "").replace("}", "").replace("( -1 )", "(-1)*")
						.replace("|", ") / (").replace("=", "=(").replace(";", ");");

				matlab_content.add(temp_expression);

				/* This is to obtain expression for original model */

				api.loadParamModel(PrismAPIUtilities.readModelFile(model_file)); // OLD:
				api.setPropertiesFile(property_file);// OLD: api.setPropertiesFile(model_property_name,
				List<String> GetExpression_orginal = api.getPrismParamExpression();

				String expression_orginal = String.format("Original_model = %s; ", GetExpression_orginal.get(0));

				expression_orginal = expression_orginal.replace("{", "").replace("}", "").replace("( -1 )", "(-1)*")
						.replace("|", ") / (").replace("=", "=(").replace(";", ");");

				matlab_content.add(expression_orginal);

				/* find what parameters used in the model */
				ArrayList<String> Param_declare = new ArrayList<String>();
				String stringPara = GetExpression_orginal.get(0);
				String[] arrOfStr = stringPara.split(" ");

				for (int j = 0; j < arrOfStr.length; j++) {
					String s = arrOfStr[j];
					if (s.matches("[a-zA-Z]+.*")) {
						Param_declare.add(s);
					}
				}

				// Hashset for the non-duplicated parameters.
				Collection<String> noDups_Param_declare = new HashSet<String>(Param_declare);
				// Arraylist for the non-duplicated parameters.
				ArrayList<String> noDups_Param_declare_array = new ArrayList<>(noDups_Param_declare);

				// Add the Parameter and expression together
				noDups_Param_declare_array.addAll(matlab_content);

				String Model_expression = String.format(
						location.getPath() + File.separatorChar + "Model_expression_%d_%d.txt",
						minimum_number_of_state_in_fragment, Idea_maximum_number_of_state_in_fragment);

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
				

				
//		System.out.println(ArrayListString);
				String print_string = String.format("File Min = %d Max= %d printed", min_state, max_state);
				System.out.println(print_string);
			}
		}
		System.out.println("Finished");
		System.exit(0);
	}

}

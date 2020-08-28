package Path_finding;

import java.util.ArrayList;

public class Growing_function {

	Find_states search_state = new Find_states();
	stop_search ending_function = new stop_search();
	private ArrayList<Integer> state_index_fragment = new ArrayList<>();
	private int number_of_states_return = 0;
	private ArrayList<String> parameter_matrix_return = new ArrayList<>();
	private ArrayList<ArrayList<Integer>> Matrix_return = new ArrayList<>();

	/* This function adds states into a fragment */
	public void growth(int index, ArrayList<ArrayList<Integer>> Matrix, ArrayList<Modelinfo> info_Array,
			int fragment_index, ArrayList<Integer> search_stack, int number_states, ArrayList<String> parameter_matrix,
			ArrayList<Integer> ending_state_stack) {
		state_index_fragment.removeAll(state_index_fragment);

		Matrix_return = Matrix;
		parameter_matrix_return = parameter_matrix;
		number_of_states_return = number_states;

		if (info_Array.get(index).startingPoint == true) {// This applies to the state that is the starting point of a
															// fragment

			boolean temp_flag = false;
			ArrayList<Boolean> Stop = new ArrayList<Boolean>();
			ArrayList<Integer> outgoing_state = search_state.outgoing(Matrix, index);
			ArrayList<Integer> new_outgoing = new ArrayList<Integer>();

			/* Determining outgoing states */
			for (int i = 0; i < outgoing_state.size(); i++) {
				if (info_Array.get(outgoing_state.get(i)).visited != true) {
					info_Array.get(outgoing_state.get(i)).visited = true;
					info_Array.get(outgoing_state.get(i)).fragmentNumber = fragment_index;
					state_index_fragment.add(outgoing_state.get(i));
					new_outgoing.add(outgoing_state.get(i));
				}
			}

			/* If all outgoing states have been visited, stop growing */
			if (new_outgoing.size() == 0) {
				ending_state_stack.add(index);
				return;
			}

			/*
			 * Check if a outgoing state belongs to a different fragment, add an
			 * intermediate state
			 */
			ArrayList<Integer> edited_transition_index = new ArrayList<>();
			for (int i = 0; i < outgoing_state.size(); i++) {
				// at least one of outgoing is to non-visited one to avoid infinite loop
				if (info_Array.get(outgoing_state.get(i)).fragmentNumber == fragment_index) {
					temp_flag = true;
				}
				if (info_Array.get(outgoing_state.get(i)).fragmentNumber != fragment_index) {
					for (int j = 0; j < Matrix.size(); j++) {
						if (Matrix.get(j).get(0) == index && Matrix.get(j).get(1) == outgoing_state.get(i)) {
							edited_transition_index.add(j);
						}
					}
				}

			}

			if (temp_flag == true) {
				for (int j = 0; j < edited_transition_index.size(); j++) {
					// Transition matrix
					/* From existing node to a new node */
					ArrayList<Integer> new_transition_to_new = new ArrayList<>();
					new_transition_to_new.add(index);
					new_transition_to_new.add(number_states);

					Matrix.add(new_transition_to_new);

					// parameters
					String new_parameter = parameter_matrix.get(edited_transition_index.get(j));
					parameter_matrix.add(new_parameter);

					/* From new node to other existing node */
					ArrayList<Integer> new_transition_from_new = new ArrayList<>();
					new_transition_from_new.add(number_states);
					new_transition_from_new.add(Matrix.get(edited_transition_index.get(j)).get(1));

					Matrix.add(new_transition_from_new);

					search_stack.add(number_states);

					number_states++;
					info_Array.add(new Modelinfo());
					// parameters
					String new_parameter_2 = "1";
					parameter_matrix.add(new_parameter_2);
				}

				for (int k = edited_transition_index.size() - 1; k >= 0; k--) {
					int removal_index = edited_transition_index.get(k);
					Matrix.remove(removal_index);
					parameter_matrix.remove(removal_index);
				}
			}

			Matrix_return = Matrix;
			parameter_matrix_return = parameter_matrix;
			number_of_states_return = number_states;

			if (new_outgoing.size() > 0) {
				for (int i = 0; i < new_outgoing.size(); i++) {
					ending_function.fragment_stop(Matrix, new_outgoing.get(i), info_Array, fragment_index);
					Boolean decision = ending_function.fragment_stop(Matrix, new_outgoing.get(i), info_Array,
							fragment_index);
					Stop.add(decision);
				}

				/*
				 * This functions loops the Arraylist Stop, checking if all states can be an
				 * ending point of a fragment, stop_decision = false means not all states can be
				 * the ending points; stop_decision = true means all states can be an ending
				 * points
				 */
				boolean stop_decision = false;
				for (int i = 0; i < Stop.size(); i++) {
					if (Stop.get(i) != true) {
						stop_decision = false;
						break;
					} else {
						stop_decision = true;
					}
				}

				/*
				 * If stop_decision == true, All outgoing states of a given state can be an
				 * ending point of a fragment
				 */
				if (stop_decision == true) {
					ending_function.fragment_stop(Matrix, index, info_Array, fragment_index);
					return;
				} else { /*
							 * Otherwise add the states that can not be an ending point to the Search_stack
							 */
					for (int i = 0; i < Stop.size(); i++) {
						if (Stop.get(i) != true) {
							search_stack.add(new_outgoing.get(i));
						}
					}
				}
			}

		} else { // This applies to the state that is NOT the starting point of a fragment

			/* For incoming states */
			ArrayList<Integer> incoming_state_2 = search_state.incoming(Matrix, index);
			ArrayList<Integer> new_incoming_2 = new ArrayList<Integer>();
			ArrayList<Boolean> Stop_2_incoming = new ArrayList<Boolean>();

			/* Determining incoming states */
			for (int i = 0; i < incoming_state_2.size(); i++) {
				if (info_Array.get(incoming_state_2.get(i)).visited != true) {
					info_Array.get(incoming_state_2.get(i)).visited = true;
					info_Array.get(incoming_state_2.get(i)).fragmentNumber = fragment_index;
					state_index_fragment.add(incoming_state_2.get(i));
					new_incoming_2.add(incoming_state_2.get(i));
				}
				if (info_Array.get(incoming_state_2.get(i)).fragmentNumber != 0 && info_Array.get(incoming_state_2.get(i)).fragmentNumber != fragment_index) {
					info_Array.get(index).fragmentNumber = fragment_index + number_states;
					info_Array.get(index).visited = true;
					info_Array.get(index).startingPoint = true;
					info_Array.get(index).endingPoint = true;
					return;
						
				} 
			}

			/*
			 * Check if the incoming states satisfy the policy of being an ending point of a
			 * fragment
			 */
			if (new_incoming_2.size() > 0) {
				for (int i = 0; i < new_incoming_2.size(); i++) {
					Stop_2_incoming.add(
							ending_function.fragment_stop(Matrix, new_incoming_2.get(i), info_Array, fragment_index));
				}
				/* add the states that can not be an ending point to the Search_stack */
				for (int i = 0; i < Stop_2_incoming.size(); i++) {
					if (Stop_2_incoming.get(i) != true) {
						search_stack.add(new_incoming_2.get(i));
					}
				}
			}

			/* For outgoing states */
			ArrayList<Boolean> Stop_3_outgoing = new ArrayList<Boolean>();
			ArrayList<Integer> outgoing_state_3 = search_state.outgoing(Matrix, index);
			ArrayList<Integer> new_outgoing_3 = new ArrayList<Integer>();

			boolean temp_flag = false;

			/* Determining outgoing states */
			for (int i = 0; i < outgoing_state_3.size(); i++) {
				if (info_Array.get(outgoing_state_3.get(i)).visited != true) {
					info_Array.get(outgoing_state_3.get(i)).visited = true;
					info_Array.get(outgoing_state_3.get(i)).fragmentNumber = fragment_index;
					state_index_fragment.add(outgoing_state_3.get(i));
					new_outgoing_3.add(outgoing_state_3.get(i));
				}
			}

			/* If all outgoing states have been visited, stop growing */
			if (new_outgoing_3.size() == 0) {
				ending_state_stack.add(index);
				return;
			}

			/*
			 * Check if a outgoing state belongs to a different fragment, add an
			 * intermediate state
			 */
			ArrayList<Integer> edited_transition_index = new ArrayList<>();
			for (int i = 0; i < outgoing_state_3.size(); i++) {
				if (info_Array.get(outgoing_state_3.get(i)).fragmentNumber == fragment_index) {
					temp_flag = true;
				}
				if (info_Array.get(outgoing_state_3.get(i)).fragmentNumber != fragment_index) {
					for (int j = 0; j < Matrix.size(); j++) {
						if (Matrix.get(j).get(0).equals(index) && Matrix.get(j).get(1).equals(outgoing_state_3.get(i))) {
							edited_transition_index.add(j);
						}
					}
				}

			}

			if (temp_flag == true) {
				for (int i = 0; i < outgoing_state_3.size(); i++) {
					if (info_Array.get(outgoing_state_3.get(i)).fragmentNumber != fragment_index) {

						for (int j = 0; j < edited_transition_index.size(); j++) {
							// Transition matrix
							/* From existing node to a new node */
							ArrayList<Integer> new_transition_to_new = new ArrayList<>();
							new_transition_to_new.add(index);
							new_transition_to_new.add(number_states);

							Matrix.add(new_transition_to_new);

							// parameters
							String new_parameter = parameter_matrix.get(edited_transition_index.get(j));
							parameter_matrix.add(new_parameter);

							/* From new node to other existing node */
							ArrayList<Integer> new_transition_from_new = new ArrayList<>();
							new_transition_from_new.add(number_states);
							new_transition_from_new.add(outgoing_state_3.get(i));

							Matrix.add(new_transition_from_new);

							search_stack.add(number_states);

							number_states++;
							info_Array.add(new Modelinfo());

							// parameters
							String new_parameter_2 = "1";
							parameter_matrix.add(new_parameter_2);
						}

					}
				}

				for (int k = edited_transition_index.size() - 1; k >= 0; k--) {
					int removal_index = edited_transition_index.get(k);
					Matrix.remove(removal_index);
					parameter_matrix.remove(removal_index);
				}
			}

			Matrix_return = Matrix;
			parameter_matrix_return = parameter_matrix;
			number_of_states_return = number_states;

			if (new_outgoing_3.size() > 0) {
//				/* If the previous comment was true, then unmark the visited states */
//				if (temp_flag_3 == true) {
//					for (int i = 0; i < new_outgoing_3.size(); i++) {
//						info_Array.get(new_outgoing_3.get(i)).fragmentNumber = 0;
//						info_Array.get(new_outgoing_3.get(i)).visited = false;
//						for (int j = 0; j < state_index_fragment.size(); j++) {
//							if (state_index_fragment.get(j) == new_outgoing_3.get(i)) {
//								state_index_fragment.remove(j);
//							}
//						}
//					}
//				}

				/* Otherwise check if the fragment can stop after adding the outgoing states */
				for (int i = 0; i < new_outgoing_3.size(); i++) {
					Stop_3_outgoing.add(
							ending_function.fragment_stop(Matrix, new_outgoing_3.get(i), info_Array, fragment_index));
				}

				boolean stop_decision = false;
				for (int i = 0; i < Stop_3_outgoing.size(); i++) {
					if (Stop_3_outgoing.get(i) != true) {
						stop_decision = false;
						break;
					} else {
						stop_decision = true;
					}
				}

				if (stop_decision == true) {
					ending_function.fragment_stop(Matrix, index, info_Array, fragment_index);
					return;
				} else {
					for (int i = 0; i < Stop_3_outgoing.size(); i++) {
						if (Stop_3_outgoing.get(i) != true) {
							search_stack.add(new_outgoing_3.get(i));
						}
					}
				}
			}
		}

	}

	public int getNumberOfState() {

		return number_of_states_return;
	}

	public ArrayList<Integer> getStateIndex() {
		return state_index_fragment;
	}

	public ArrayList<ArrayList<Integer>> getTransitionMatrix() {
		return Matrix_return;
	}

	public ArrayList<String> getParameter() {
		return parameter_matrix_return;
	}

}

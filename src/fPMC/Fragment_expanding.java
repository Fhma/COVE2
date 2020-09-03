package fPMC;

import java.util.ArrayList;

public class Fragment_expanding {

	public Boolean outgoing_states_status_check(ArrayList<Integer> outgoings_states_for_fragment_check,
			ArrayList<Modelinfo> info_Array, int fragment_index, boolean stop_growing_flag,
			ArrayList<Integer> states_index_going_to_other_fragment) {
		// If the given state has at least one outgoing state
		if (outgoings_states_for_fragment_check.size() != 0) {
			boolean to_grow = false;
			// to_grow == true if there is at least one outgoing state are not assigned into
			// a fragment
			for (int j = 0; j < outgoings_states_for_fragment_check.size(); j++) {
				if (info_Array.get(outgoings_states_for_fragment_check.get(j)).fragmentNumber == 0) {
					to_grow = true;
				}
			}

			// Determine the state number of the outgoing states that belong to other
			// existing fragment and store in states_index_going_to_other_fragment
			for (int j = 0; j < outgoings_states_for_fragment_check.size(); j++) {
				if (to_grow == true) {
					if (info_Array.get(outgoings_states_for_fragment_check.get(j)).fragmentNumber != 0) {
						if (info_Array
								.get(outgoings_states_for_fragment_check.get(j)).fragmentNumber != fragment_index) {
							stop_growing_flag = true;
							states_index_going_to_other_fragment.add(outgoings_states_for_fragment_check.get(j));
						}
					}
				}
			}
		}
		return stop_growing_flag;
	}

	public ArrayList<Integer> transition_index_to_be_edited(ArrayList<Integer> states_index_going_to_other_fragment,
			ArrayList<ArrayList<Integer>> sparseMatrix, ArrayList<Integer> edited_transition_index,
			ArrayList<Integer> search_stack) {
		// Determine what states and transitions need to be modified
		if (states_index_going_to_other_fragment.size() > 0) {
			for (int k = 0; k < states_index_going_to_other_fragment.size(); k++) {
				for (int j = 0; j < sparseMatrix.size(); j++) {
					if (sparseMatrix.get(j).get(0).equals(search_stack.get(0))
							&& sparseMatrix.get(j).get(1).equals(states_index_going_to_other_fragment.get(k))) {
						edited_transition_index.add(j);
					}
				}
			}
		}
		return edited_transition_index;
	}

	public int adding_states(ArrayList<Integer> states_index_going_to_other_fragment, ArrayList<Integer> search_stack,
			ArrayList<ArrayList<Integer>> sparseMatrix, ArrayList<Integer> edited_transition_index,
			ArrayList<String> model_parameter, ArrayList<Modelinfo> info_Array, int number_of_states) {
		// Create new states and transitions to ensure that all the outgoing states of
		// the current state are unvisited states
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

		return number_of_states;
	}
	
	public int min_break_stack(ArrayList<Integer> search_stack,ArrayList<Integer> StateIndexFragment,ArrayList<ArrayList<Integer>> sparseMatrix,ArrayList<Modelinfo> info_Array,int break_counter) {
		Find_states search_state = new Find_states();
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
	return break_counter;	
	}


}

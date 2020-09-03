package fPMC;

import java.util.ArrayList;

public class FragmentSizeCheck {
	Find_states search_state = new Find_states();

	public boolean min_size_check(int minimum_number_of_state_in_fragment, ArrayList<Integer> search_stack,
			ArrayList<Integer> StateIndexFragment, boolean growing_flag, ArrayList<Modelinfo> info_Array,
			ArrayList<ArrayList<Integer>> sparseMatrix) {
		// If the size of a form fragment is smaller than a threshold (minimum value
		// that was previous set), continue to grow
		if (search_stack.size() == 0 && StateIndexFragment.size() < minimum_number_of_state_in_fragment) {
			for (int j = 0; j < StateIndexFragment.size(); j++) {

				// Determine all outgoing states for a given state
				ArrayList<Integer> ending_point_outgoings_2 = new ArrayList<>();
				ending_point_outgoings_2.addAll(search_state.outgoing(sparseMatrix, StateIndexFragment.get(j)));

				// temp_decision == true means that this ending point points to other existing
				// fragment.
				Boolean temp_decision = false;
				if (ending_point_outgoings_2.size() != 0) {
					for (int k = 0; k < ending_point_outgoings_2.size(); k++) {
						if (info_Array.get(ending_point_outgoings_2.get(k)).fragmentNumber != 0) {
							temp_decision = true;
						}
					}
				}

				// Mark the current ending points as "mid-pint" and put them into Search Stack
				if (info_Array.get(StateIndexFragment.get(j)).endingPoint == true && temp_decision == false) {
					info_Array.get(StateIndexFragment.get(j)).endingPoint = false;
					search_stack.add(StateIndexFragment.get(j));
					growing_flag = true;
				}
			}
		}
		return growing_flag;
	}
	
	
	public void max_size_check(int Idea_maximum_number_of_state_in_fragment, ArrayList<Integer> search_stack,
			ArrayList<Integer> StateIndexFragment, ArrayList<Integer> ending_state_stack)  {
		if (StateIndexFragment.size() >= Idea_maximum_number_of_state_in_fragment) {
			ending_state_stack.addAll(search_stack);
			search_stack.removeAll(search_stack);
		}
	}
}

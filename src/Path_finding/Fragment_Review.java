package Path_finding;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;

public class Fragment_Review {
	
	Find_states search_state = new Find_states();
	
	public int fragment_validity(ArrayList<Integer> ending_state_stack, ArrayList<ArrayList<Integer>> sparseMatrix,
			ArrayList<Modelinfo> info_Array, ArrayList<String> model_parameter, int fragment_index, int number_of_states, int fragment_review) {
		ArrayList<Integer> Mid_state_to_expand_index = new ArrayList<>();

		ArrayList<Integer> Look_up_stack = new ArrayList<Integer>();

		/* Determines all states that has the same fragment number */
		for (int j = 0; j < number_of_states; j++) {
			if (info_Array.get(j).fragmentNumber == fragment_index) {
				Look_up_stack.add(j);
			}
		}
		
		// Review the validity of all states in the fragment 
		if (Look_up_stack.size() != 0) {
			for (int j = 0; j < Look_up_stack.size(); j++) {
				ArrayList<Integer> Look_up_stack_outgoing = search_state.outgoing(sparseMatrix,
						Look_up_stack.get(j));
				ArrayList<Integer> Look_up_stack_incoming= search_state.incoming(sparseMatrix,
						Look_up_stack.get(j));
				//check incoming state
				for (int k = 0; k < Look_up_stack_incoming.size(); k++) {
					if (info_Array.get(Look_up_stack_incoming.get(k)).fragmentNumber != fragment_index
							&& info_Array.get(Look_up_stack.get(j)).startingPoint == false) {
						fragment_review = fragment_index;
						break;
					}
					
				}
				//check outgoing state
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
							if (sparseMatrix.get(t).get(0).equals(Mid_state_to_expand_index.get(j))
									&& sparseMatrix.get(t).get(1).equals(Look_up_stack_outgoing.get(k))) {
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
		return fragment_review;
	}
	
	public void DuplicationRemoval( ArrayList<ArrayList<Integer>> sparseMatrix,	ArrayList<String> model_parameter) {
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
		
	}
	
	public ArrayList<Integer> Reordering(ArrayList<Modelinfo> info_Array, int fragment_index, int original_number_of_states) {
		/* Re-ordering fragment number using consecutive number and starting from 1 */
		int number_of_states = info_Array.size();
		for (int i = 0; i < number_of_states; i++) {
			if (info_Array.get(i).fragmentNumber > original_number_of_states) {
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
		
		return frag_n;
	}
	
}

package Path_finding;

import java.util.ArrayList;

public class Fragment_stopping {

	Find_states search_state = new Find_states();

	public void DueToIncomings(ArrayList<Integer> ending_state_stack, ArrayList<ArrayList<Integer>> sparseMatrix,
			ArrayList<Modelinfo> info_Array, ArrayList<String> model_parameter, int fragment_index) {

		ArrayList<Integer> ending_point_incomings = new ArrayList<>();
		ArrayList<Integer> ending_point_outgoings = new ArrayList<>();

		ending_point_incomings.addAll(search_state.incoming(sparseMatrix, ending_state_stack.get(0)));
		ending_point_outgoings.addAll(search_state.outgoing(sparseMatrix, ending_state_stack.get(0)));
		ArrayList<Integer> transition_remover_index = new ArrayList<>();

		// Modify transitions of the original model
		for (int k = 0; k < ending_point_incomings.size(); k++) {
			if (info_Array.get(ending_point_incomings.get(k)).fragmentNumber != fragment_index) {
				for (int incoming_transition_index = 0; incoming_transition_index < sparseMatrix
						.size(); incoming_transition_index++) {
					if (sparseMatrix.get(incoming_transition_index).get(0).equals(ending_point_incomings.get(k))
							&& sparseMatrix.get(incoming_transition_index).get(1).equals(ending_state_stack.get(0))) {

						transition_remover_index.add(incoming_transition_index);
						for (int t = 0; t < ending_point_outgoings.size(); t++) {
							if (info_Array.get(ending_point_outgoings.get(t)).fragmentNumber != fragment_index
									| (info_Array.get(ending_point_outgoings.get(t)).fragmentNumber == fragment_index
											&& info_Array.get(ending_point_outgoings.get(t)).startingPoint == true)) {
								for (int outgoing_transition_index = 0; outgoing_transition_index < sparseMatrix
										.size(); outgoing_transition_index++) {
									if (sparseMatrix.get(outgoing_transition_index).get(0).equals(ending_state_stack.get(0))
											&& sparseMatrix.get(outgoing_transition_index)
													.get(1).equals(ending_point_outgoings.get(t))) {

										// Transition matrix
										ArrayList<Integer> new_transition = new ArrayList<>();
										new_transition.add(ending_point_incomings.get(k));
										new_transition.add(ending_point_outgoings.get(t));
										sparseMatrix.add(new_transition);

										// Parameter
										String new_parameter = String.format("( %s ) * ( %s )",
												model_parameter.get(incoming_transition_index),
												model_parameter.get(outgoing_transition_index));
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

	}
	
	public int DueToOutgoing(ArrayList<Integer> ending_state_stack, ArrayList<ArrayList<Integer>> sparseMatrix,
			ArrayList<Modelinfo> info_Array, ArrayList<String> model_parameter, int fragment_index,int number_of_states) {


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
							.get(0).equals(ending_state_stack.get(0))
							&& sparseMatrix.get(outgoing_transition_index)
									.get(1).equals(ending_point_outgoings_states.get(k))) {
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
		return number_of_states;
		
	}
	
	
}

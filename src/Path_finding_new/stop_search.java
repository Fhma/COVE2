package Path_finding_new;

import java.util.ArrayList;

public class stop_search {

	Find_states search_state = new Find_states();
	private Boolean issue_with_incomings = false;
	private Boolean issue_with_outgoings = false;

	/*
	 * This function returns a boolean decision for a given states, True means the
	 * state can be the ending point of a fragment, False - otherwise
	 */
	public boolean fragment_stop(ArrayList<ArrayList<Integer>>  Matrix, int state, ArrayList<Modelinfo> info_Array, int fragment_index) {

		issue_with_incomings = false;
		issue_with_outgoings = false;
		
		int flag_1 = 0;
		int flag_2 = 0;

		ArrayList<Integer> incoming_state = search_state.incoming(Matrix, state);
		ArrayList<Integer> outgoing_state = search_state.outgoing(Matrix, state);
		ArrayList<Integer> temp1 = new ArrayList<Integer>(); // This stores fragmentNUmber for incoming states

		/*
		 * Checking if all incoming states satisfy the policy of being an ending state
		 */
		if (incoming_state.size() > 0) { // avoid warning if there isn't an incoming state
			for (int i = 0; i < incoming_state.size(); i++) {
				temp1.add(info_Array.get(incoming_state.get(i)).fragmentNumber);
			}
			if (policy_one(temp1, info_Array, fragment_index) == false) {
				flag_1 = 1;
				issue_with_incomings = true;
			}
		}

		ArrayList<Integer> temp2 = new ArrayList<Integer>(); // This stores fragmentNUmber for outgoing states
		ArrayList<Boolean> temp3 = new ArrayList<Boolean>(); // This stores boolean variable indicating if a node is a
																// starting of a fragment for outgoing states

		/*
		 * Checking if all outgoing states satisfy the policy of being an ending states
		 */
		for (int i = 0; i < outgoing_state.size(); i++) {
			temp2.add(info_Array.get(outgoing_state.get(i)).fragmentNumber);
			temp3.add(info_Array.get(outgoing_state.get(i)).startingPoint);
		}

		flag_2 = policy_two(temp2, temp3, fragment_index);

		if (flag_2==1) {
			issue_with_outgoings = true;
		}
		
		
		/* Returning the decision */
		if (flag_1 == 0 && flag_2 == 0) {
			info_Array.get(state).endingPoint = true;
			issue_with_incomings = false;
			issue_with_outgoings = false;
			return true;
		} else {
			return false;
		}
	}

	/*
	 * This policy returns True if 1) all fragment numbers are identical and 2) the
	 * number equals to the current fragment number
	 */
	public boolean policy_one(ArrayList<Integer> array, ArrayList<Modelinfo> info_Array, int fragment_index) {
		boolean policy1 = false;

		/* This checks if all fragment numbers are identical */
		for (int i = 0; i < array.size(); i++) {
			if (array.get(i) != array.get(0)) {
				policy1 = false;
				break;
			} else {
				policy1 = true;
			}
		}

		/* This checks if the number equals to the current fragment number */
		if (policy1 == true) {
			for (int i = 0; i < array.size(); i++) {
				if (array.get(i) != fragment_index) {
					policy1 = false;
					break;
				}
			}
		}

		return policy1;
	}

	/*
	 * As an ending state of a fragment, the state needs to 1) point to other
	 * fragments or 2) the starting point of the current fragment This policy
	 * returns -1 if it satisfies the above -0 otherwise
	 */
	public int policy_two(ArrayList<Integer> array2, ArrayList<Boolean> array3, int fragment_index) {
		int flag = 0;
		for (int i = 0; i < array2.size(); i++) {
			if (array2.get(i) == fragment_index) {
				flag = 1;
				if (array3.get(i) == true) {
					flag = 0;
				}
			}
		}
		return flag;
	}
	
	/*Returns 1 if exist incomings from the outside of the fragment*/
	public Boolean incoming_flag() {
		return issue_with_incomings;
	}
	
	/*Returns 1 if the outgoings points to states in the current fragment*/
	public Boolean outgoing_flag() {
		return issue_with_outgoings;
	}

}

package Path_finding;

import java.util.ArrayList;

public class Find_Fragment {

	/* Returns the outgoing states of a given node */
	public void fragment_self_loop_states(int number_of_states, ArrayList<Modelinfo> info_Array,
			ArrayList<ArrayList<Integer>> sparseMatrix, int pctl_state) {
		/* Marking self-loop vertices as visited and assign a fragment number */
		Find_states search_state = new Find_states();
		for (int i = 0; i < number_of_states; i++) {
			ArrayList<Integer> temp = search_state.outgoing(sparseMatrix, i);
			if (pctl_state >= 0) {
				if (i == pctl_state) {
					info_Array.get(i).fragmentNumber = number_of_states + i;
					info_Array.get(i).visited = true;
					info_Array.get(i).endingPoint = true;
					info_Array.get(i).startingPoint = true;
				}
			}
			if (temp.size() == 1 && temp.get(0) == i) {
				info_Array.get(i).fragmentNumber = number_of_states + i;
				info_Array.get(i).visited = true;
				info_Array.get(i).endingPoint = true;
				info_Array.get(i).startingPoint = true;
			}

		}
	}

}

package fPMC;

import java.util.ArrayList;

public class Find_states {

	/* Returns the outgoing states of a given node */
	public ArrayList<Integer> outgoing(ArrayList<ArrayList<Integer>> Matrix, int vertex) {
		int size = Matrix.size();
		ArrayList<Integer> arr = new ArrayList<Integer>();

		for (int i = 0; i < size; i++) {
			if (Matrix.get(i).get(0) == vertex) {
				arr.add(Matrix.get(i).get(1));
			}
		}
		return arr;
	}

	/* Returns the incoming states of a given node */
	public ArrayList<Integer> incoming(ArrayList<ArrayList<Integer>> Matrix, int vertex) {

		int size =Matrix.size();
		ArrayList<Integer> arr = new ArrayList<Integer>();

		for (int i = 0; i < size; i++) {
			if (Matrix.get(i).get(1) == vertex) {
				arr.add(Matrix.get(i).get(0));
			}
		}
		return arr;
	}
}
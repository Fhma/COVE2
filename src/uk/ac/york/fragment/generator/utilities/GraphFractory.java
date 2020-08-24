package uk.ac.york.fragment.generator.utilities;

import java.util.Arrays;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import uk.ac.york.fragment.generator.graph.Graph;
import uk.ac.york.fragment.generator.graph.State;

public class GraphFractory {

	public static Graph buildGraph(String transition_matrix) {

		// calculate transitions and parameters for each transition
		Scanner scan = new Scanner(transition_matrix);

		// first line contains the size of transition matrix
		String line = scan.nextLine();
		String str_array[] = line.split(" ");
		assert (str_array.length == 2);

		Graph graph = new Graph();

		// now, read transition states and their parameters
		boolean entry_state_found = false;
		while (scan.hasNext()) {
			line = scan.nextLine();
			str_array = line.split(" ");

			State ss = graph.getState(str_array[0]);
			if (ss == null)
				ss = graph.addState(str_array[0]);
			if (!entry_state_found) {
				graph.setEntryState(ss);
				entry_state_found = true;
			}

			State st = graph.getState(str_array[1]);
			if (st == null)
				st = graph.addState(str_array[1]);

			String transitionValue[] = String.join("", Arrays.copyOfRange(str_array, 2, str_array.length))
					.replace("{", "").replace("}", "").split("\\|");

			for (int i = 0; i < transitionValue.length; i++) {
				String rfPart = transitionValue[i];
				rfPart = rfPart.replaceAll("\\s+", "");
				Pattern pattern = Pattern.compile("(\\([-]?[0-9]+\\))");
				Matcher m = pattern.matcher(rfPart);
				transitionValue[i] = m.replaceAll("$1*");
			}

			String trans = "(" + transitionValue[0] + ")";
			if (transitionValue.length > 1)
				trans += "/(" + transitionValue[1] + ")";

			graph.addtransition(ss, st, trans, null);
		}
		scan.close();
		return graph;
	}

}

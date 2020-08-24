package Path_finding;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.spg.PrismAPI.PrismParamAPI;
import org.spg.utils.PrismAPIUtilities;

public class TransitionMatrix {

	private ArrayList<ArrayList<Integer>> transition_states = new ArrayList<ArrayList<Integer>>();
	private ArrayList<String> model_parameters = new ArrayList<String>();
	private int number_states;
	private int number_transitions;

	@SuppressWarnings("resource")
	public TransitionMatrix(String model_path, String property_path) throws Exception {
		
		final PrismParamAPI api = new PrismParamAPI();
		//api.loadParamModel(PrismAPIUtilities.readModelFile(model_path), names_array);//old API still can be used
		api.loadParamModel(PrismAPIUtilities.readModelFile(model_path));

		// Set properties file
		//api.setPropertiesFile(property_path, names_array);//old API still can be used
		api.setPropertiesFile(property_path);

		// Save transition matrix
		final String transMatrix = api.getParametricTransitionMatrix();//api.getParametricTransitionMatrix(names_array, lbs, ubs);
		// System.out.println(transMatrix);

		// calculate transitions and parameters for each transition
		Scanner scan = new Scanner(transMatrix);

		// first line contains the size of transition matrix
		String line = scan.nextLine();
		String str_array[] = line.split(" ");
		assert (str_array.length == 2);
		number_states = Integer.parseInt(str_array[0]);
		number_transitions = Integer.parseInt(str_array[1]);

		// now, read transition states and their parameters
		while (scan.hasNext()) {
			line = scan.nextLine();
			str_array = line.split(" ");
			ArrayList<Integer> transition = new ArrayList<Integer>();

			transition.add(Integer.parseInt(str_array[0]));
			transition.add(Integer.parseInt(str_array[1]));

			transition_states.add(transition);
			
			String transitionValue[]	= String.join("", Arrays.copyOfRange(str_array, 2, str_array.length)).replace("{","").replace("}","").split("\\|");			
//			System.out.print(Arrays.toString(transitionValue) +"\t");

			for (int i=0; i<transitionValue.length; i++) {					
				String rfPart 	= transitionValue[i];
				rfPart 			= rfPart.replaceAll("\\s+", "");
		        Pattern pattern = Pattern.compile("(\\([-]?[0-9]+\\))");
		        Matcher m = pattern.matcher(rfPart);
		        transitionValue[i] = m.replaceAll("$1*");
			}
			
			String trans = "("+ transitionValue[0] +")";
			if (transitionValue.length > 1)
				trans += "/("+ transitionValue[1] +")";
//			System.out.println (trans);
			
			
			model_parameters.add(trans);

//			if (line.contains("{")) {
//				String param = line.substring(line.indexOf("{") + 1, line.indexOf("}"));
//				String para_string = null;	
//				for (int i=0; i<param.length();i++) {
//							
//					para_string = param.replace("( -1 )", "(-1) *");
//				}
//				
//				
//				// TODO: odd behaviour happened when remove white spaces using param.replace(" "."") in the algorithm B
//				model_parameters.add(para_string.trim());
//			} else
//				model_parameters.add("1");

		}
	}

	public int getNumberOfTransitions() {
		return number_transitions;
	}

	public int getNumberOfStates() {
		return number_states;
	}

	public ArrayList<ArrayList<Integer>> getTransitionStates() {
		return transition_states;
	}

	public ArrayList<String> getModelParameters() {
		return model_parameters;
	}

	@Override
	public String toString() {

		StringBuilder sb = new StringBuilder(50);
		sb.append(String.format("Number of states: %d, Number of transition: %d\n", number_states, number_transitions));
		for (int i = 0; i < transition_states.size(); i++) {
			sb.append(transition_states.get(i).toString() + "\n");
			sb.append(model_parameters.get(i).toString() + "\n");
		}
		return sb.toString();
	}
}

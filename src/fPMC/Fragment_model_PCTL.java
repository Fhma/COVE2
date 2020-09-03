package fPMC;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;

import org.spg.PrismAPI.PrismParamAPI;
import org.spg.utils.PrismAPIUtilities;

public class Fragment_model_PCTL {
	private String model_expression;
	private String pctl_info;

	PrismParamAPI api = new PrismParamAPI();

	public ArrayList<String> Fragment_Model_PCTL_generator(ArrayList<String> matlab_content, int Number_of_new_fragment,
			int number_of_transition, int number_of_states, ArrayList<Modelinfo> info_Array,
			ArrayList<String> model_parameter, ArrayList<ArrayList<Integer>> transition_state, File location,
			String ArrayListString_model_expression) throws Exception {
		for (int i = 1; i <= Number_of_new_fragment; i++) {

//			System.out.printf("Fragement %d \n",i);
			
			ArrayList<ArrayList<Integer>> inFragment_transition = new ArrayList<ArrayList<Integer>>(transition_state);
			ArrayList<String> inFragment_model_parameter = new ArrayList<String>(model_parameter);
			ArrayList<Integer> frag_non_ending_state = new ArrayList<Integer>();
			ArrayList<Integer> frag_ending_state = new ArrayList<Integer>();
			ArrayList<Integer> frag_state_index_remover = new ArrayList<Integer>();
			ArrayList<Integer> frag_transition_index = new ArrayList<Integer>();

			/* Determine non-ending state and ending states in each fragment */
			for (int j = 0; j < number_of_states; j++) {
				if (info_Array.get(j).fragmentNumber == i && info_Array.get(j).endingPoint == false) {
					frag_non_ending_state.add(j);
				}
				if (info_Array.get(j).fragmentNumber == i && info_Array.get(j).endingPoint == true) {
					frag_ending_state.add(j);
				}
			}

			/* Determine the index of transition matrix that will remain */
			for (int j = 0; j < number_of_transition; j++) {
				frag_state_index_remover.add(j);
				for (int k = 0; k < frag_non_ending_state.size(); k++) {
					if (inFragment_transition.get(j).get(0).equals(frag_non_ending_state.get(k))) {
						frag_transition_index.add(j);
					}
				}
			}

			/* Determine the index of transition matrix that will be removed */
			frag_state_index_remover.removeAll(frag_transition_index);

			/*
			 * removing transitions from the matrix, and parameters from the model
			 * parameter, according to the index
			 */
			for (int j = frag_state_index_remover.size() - 1; j >= 0; j--) {
				int index = frag_state_index_remover.get(j);
				// remove transition
				inFragment_transition.remove(index);
				// remove model parameter
				inFragment_model_parameter.remove(index);
			}

			/* Assign output states as self-loops and with the probability of 1. */
			for (int j = 0; j < frag_ending_state.size(); j++) {
				ArrayList<Integer> temp1 = new ArrayList<Integer>();
				// Self-loops
				temp1.add(frag_ending_state.get(j));
				temp1.add(frag_ending_state.get(j));
				inFragment_transition.add(temp1);
				// Probability of one
				inFragment_model_parameter.add("1");
			}

			ArrayListString_model_expression = String.format("%s\nThis is transition in Fragment (%d) \n",
					ArrayListString_model_expression, i);
			for (int j = 0; j < inFragment_transition.size(); j++) {
				ArrayListString_model_expression = String.format("%s    %s  %s\n", ArrayListString_model_expression,
						inFragment_transition.get(j), inFragment_model_parameter.get(j));
			}

			/* generating of pctl file */
			pctl_generation pctl = new pctl_generation();
			Prism_Model_Generator prism_model = new Prism_Model_Generator();

			if (inFragment_transition.size() > 1) {

				pctl.generator(info_Array, inFragment_transition, i, location);
				ArrayList<String> outputStateIndex = new ArrayList<>();
				String simplifiedViarble = "";
				

				outputStateIndex = prism_model.generator(info_Array, inFragment_transition, inFragment_model_parameter,
						i, location);
				
				simplifiedViarble = prism_model.getSimplifiedVariable();

				location.mkdirs();

///*PRISM Check Disable*/
//				String model_file_name = String.format(location.getPath() + File.separatorChar + "fragment_%d_model.pm",
//						i);
//				String model_property_name = String
//						.format(location.getPath() + File.separatorChar + "fragment_%d_property.pctl", i);
//
//				/* Call API load Model and PCTL */
//				PrismParamAPI api = new PrismParamAPI();
//				api.loadParamModel(PrismAPIUtilities.readModelFile(model_file_name));
//				api.setPropertiesFile(model_property_name);
//				List<String> GetExpression = api.getPrismParamExpression();
//
//				for (int k = 0; k < GetExpression.size(); k++) {
////					System.out.println("Done one \n");
//					String temp_expression = String.format("%s = %s; ", outputStateIndex.get(k), GetExpression.get(k));
//					// Trimer the expression that can be directly read by matlab
//					temp_expression = temp_expression.replace("{", "").replace("}", "").replace("( -1 )", "(-1)*")
//							.replace("|", ") / (").replace("=", "=(").replace(";", ");");
//
//					matlab_content.add(temp_expression);
//				}
///*PRISM Check Disable*/

				
				
/*STORM Check */
				/* Call API load Model and PCTL */
				
				File model_file_name = new File(String.format(location.getPath() + File.separatorChar + "fragment_%d_model.pm",i));
				File model_property_name = new File(String.format(location.getPath() + File.separatorChar + "fragment_%d_property.pctl", i));
				
				StormEvaluator storm = new StormEvaluator();
				
				List<String> GetExpression = storm.evaluateProperties_Storm(model_file_name, model_property_name);

				matlab_content.add(simplifiedViarble);
				
				for (int k = 0; k < GetExpression.size(); k++) {
					String temp_expression = String.format("%s= %s; ", outputStateIndex.get(k), GetExpression.get(k));
					// Trimer the expression that can be directly read by matlab
					temp_expression = temp_expression.replace("{", "").replace("}", "").replace("( -1 )", "(-1)*")
							.replace("|", ") / (").replace("=", "=(").replace(";", ");").replace("1p", "1*p").replace("2p", "2*p").replace("3p", "3*p").replace("4p", "4*p").replace("5p", "5*p").replace("6p", "6*p").replace("7p", "7*p").replace("8p", "8*p").replace("9p", "9*p").replace("0p", "0*p");

					matlab_content.add(temp_expression);
				}
				
				
/*STORM Check */
			}
		}
		model_expression = ArrayListString_model_expression;
		return matlab_content;
	}

	public ArrayList<String> Abstract_Model_PCTL_generator(ArrayList<String> matlab_content, String property_file,
			int Number_of_new_fragment, int number_of_transition, int number_of_states, ArrayList<Modelinfo> info_Array,
			ArrayList<String> model_parameter, ArrayList<ArrayList<Integer>> transition_state, File location,
			String ArrayListString_model_expression, int pctl_state) throws Exception {
		/*
		 * The following code does function E, that obtains the abstract model
		 */
		Prism_Model_Generator prism_model = new Prism_Model_Generator();
		ArrayList<ArrayList<Integer>> abstract_transition = new ArrayList<ArrayList<Integer>>(transition_state);
		ArrayList<String> abstract_model_parameter = new ArrayList<String>(model_parameter);
		ArrayList<Integer> abstract_ending_state = new ArrayList<Integer>();
		ArrayList<Integer> abstract_state_index_remover = new ArrayList<Integer>();
		ArrayList<Integer> abstract_transition_index_remover = new ArrayList<Integer>();

		/* Determine non-ending state and ending states in each fragment */
		for (int j = 0; j < number_of_states; j++) {
			abstract_state_index_remover.add(j);
			if (info_Array.get(j).endingPoint == false) {
				abstract_ending_state.add(j);
			}
		}

		/* Determine the index of transition matrix that will be removed */
		for (int j = 0; j < abstract_transition.size(); j++) {
			for (int k = 0; k < abstract_ending_state.size(); k++) {

				int variable_transition = abstract_transition.get(j).get(0);
				int variable_index = abstract_ending_state.get(k);

				if (variable_transition == variable_index) {
					abstract_transition_index_remover.add(j);
				}
			}
		}

		/* Remove the transitions and parameters */
		for (int j = abstract_transition_index_remover.size() - 1; j >= 0; j--) {
			int index = abstract_transition_index_remover.get(j);
			// obtain the transition
			abstract_transition.remove(index);
			// obtain the parameter
			abstract_model_parameter.remove(index);
		}

		
		
		/*
		 * Naming the PCTL which will be used for determining the parameters in abstract
		 * model
		 */
		for (int i = 1; i <= Number_of_new_fragment; i++) {
			for (int j = 0; j < abstract_transition.size(); j++) {
				// The construction will only apply to fragment that has more than one state.
				if (info_Array.get(abstract_transition.get(j).get(0)).endingPoint != info_Array
						.get(abstract_transition.get(j).get(0)).startingPoint) {
					if (info_Array.get(abstract_transition.get(j).get(0)).fragmentNumber == i) {
						String string_cptl = String.format("prob_f%d_s%d", i, abstract_transition.get(j).get(0));
						String string = String.format("( %s ) * ( %s )", abstract_model_parameter.get(j), string_cptl);
						abstract_model_parameter.set(j, string);
					}
				}
			}
		}


		ArrayListString_model_expression = String.format("%s\nThis is transition for abstract model \n",
				ArrayListString_model_expression);
		for (int j = 0; j < abstract_transition.size(); j++) {
			ArrayListString_model_expression = String.format("%s    %s  %s\n", ArrayListString_model_expression,
					abstract_transition.get(j), abstract_model_parameter.get(j));
		}

		/*
		 * Replacing state with fragment number, this time fragment numbers were all
		 * minus 1, enabling the state of the model starts from the number 0
		 */
		for (int j = 0; j < abstract_transition.size(); j++) {
			abstract_transition.get(j).set(0, info_Array.get(abstract_transition.get(j).get(0)).fragmentNumber - 1);
			abstract_transition.get(j).set(1, info_Array.get(abstract_transition.get(j).get(1)).fragmentNumber - 1);
		}

		/* Find the duplication of the states after the previous process */
		ArrayList<String> abstract_model_parameter_updated = new ArrayList<String>(abstract_model_parameter);

		// Hashset for the non-duplicated transition.
		Collection<ArrayList<Integer>> noDups_abstract_transition_mixedorder = new HashSet<ArrayList<Integer>>(
				abstract_transition);

		// Arraylist for the non-duplicated transition.
		ArrayList<ArrayList<Integer>> noDups_abstract_transition_mixedorder_array = new ArrayList<ArrayList<Integer>>(
				noDups_abstract_transition_mixedorder);

		// Find the index for duplication, and combine their model parameters
		for (int i = 0; i < noDups_abstract_transition_mixedorder.size(); i++) {
			ArrayList<Integer> Dup_index = new ArrayList<Integer>();
			for (int j = 0; j < abstract_transition.size(); j++) {
				if (abstract_transition.get(j).equals(noDups_abstract_transition_mixedorder_array.get(i))) {
					Dup_index.add(j);
				}
			}

			if (Dup_index.size() > 1) {
				String string = null;
				// Combination of model parameter
				for (int j = 0; j < Dup_index.size() - 1; j++) {
					if (j == 0) {
						string = abstract_model_parameter_updated.get(Dup_index.get(j));
						string = String.format(" %s + %s ", string,
								abstract_model_parameter_updated.get(Dup_index.get(j + 1)));
					} else
						string = String.format(" %s + %s ", string,
								abstract_model_parameter_updated.get(Dup_index.get(j + 1)));
				}
				// Updates of model parameter
				for (int j = 0; j < Dup_index.size(); j++) {
					abstract_model_parameter_updated.set(Dup_index.get(j), string);
				}
				// Duplication removal
				for (int j = Dup_index.size() - 1; j > 0; j--) {
					int removing_index = Dup_index.get(j);
					abstract_model_parameter_updated.remove(removing_index);
					abstract_transition.remove(removing_index);
				}
			}
		}

		// Obtaining abstract model. Note that -1 indicate the abstract.
		prism_model.generator(info_Array, abstract_transition, abstract_model_parameter_updated, -1, location);
		String simplifiedViarble = "";
		simplifiedViarble = prism_model.getSimplifiedVariable();
		
		// Obtaining PCTL for abstract model
		String abstract_fragment_pctl = "";
		try {
			File myObj = new File(property_file);
			Scanner myReader = new Scanner(myObj);
			while (myReader.hasNextLine()) {
				ArrayList<Integer> Orignal_model_state_pctl = new ArrayList<>();
				ArrayList<Integer> abstract_model_state_pctl = new ArrayList<>();
				String data = myReader.nextLine();
				String[] tempSplit = data.split("=");

				for (int i = 0; i < tempSplit.length; i++) {
					String temp_state_numner = "";
					for (int j = 0; j < tempSplit[i].length(); j++) {
						if ('0' <= tempSplit[i].charAt(j) && tempSplit[i].charAt(j) <= '9') {
							temp_state_numner += tempSplit[i].charAt(j);
						}
					}
					if (temp_state_numner != "") {
						Orignal_model_state_pctl.add(Integer.parseInt(temp_state_numner));
					}
				}

				for (int i = 0; i < Orignal_model_state_pctl.size(); i++) {
					// As the fragment Number starts from 1, it needs to minus 1 to find the state.
					abstract_model_state_pctl.add(info_Array.get(Orignal_model_state_pctl.get(i)).fragmentNumber - 1);
				}
				for (int i = 0; i < Orignal_model_state_pctl.size(); i++) {
					data = data.replace(Integer.toString(Orignal_model_state_pctl.get(i)),
							Integer.toString(abstract_model_state_pctl.get(i))).replace("state", "s");
				}

				if (pctl_state<0) {
					abstract_fragment_pctl = String.format("%s\n%s", abstract_fragment_pctl, data);
				}else {
					abstract_fragment_pctl = String.format("P =? [F s= %d ]",info_Array.get(pctl_state).fragmentNumber-1);
				}
			}
			myReader.close();
		} catch (FileNotFoundException e) {
			System.out.println("An error occurred.");
			e.printStackTrace();
		}

		// Getting file name for abstract model pctl
		location.mkdirs();
		String model_property_abstract = String
				.format(location.getPath() + File.separatorChar + "fragment_abstract_model.pctl");

		try {

			Files.writeString(Paths.get(model_property_abstract), abstract_fragment_pctl);

		} catch (IOException e) {
			e.printStackTrace();
		}

		// Getting file name for the abstract model
		String model_file_abstract = String
				.format(location.getPath() + File.separatorChar + "fragment_abstract_model.pm");
/////*PRISM Check Disable*/
//		// API to obtain expression
//		api.loadParamModel(PrismAPIUtilities.readModelFile(model_file_abstract));
//		api.setPropertiesFile(model_property_abstract);
//		List<String> GetExpression = api.getPrismParamExpression();
//
//		String temp_expression = String.format("Output_abstract_model = %s; ", GetExpression.get(0));
//		// Trimmer the expression
//		temp_expression = temp_expression.replace("{", "").replace("}", "").replace("( -1 )", "(-1)*")
//				.replace("|", ") / (").replace("=", "=(").replace(";", ");");
//
//		matlab_content.add(temp_expression);
/////*PRISM Check Disable*/
		
/*STORM Check */
		/* Call API load Model and PCTL */
		
		File model_file_name = new File(String
				.format(location.getPath() + File.separatorChar + "fragment_abstract_model.pm"));
		File model_property_name = new File(String
				.format(location.getPath() + File.separatorChar + "fragment_abstract_model.pctl"));
		
		StormEvaluator storm = new StormEvaluator();
		
		List<String> GetExpression = storm.evaluateProperties_Storm(model_file_name, model_property_name);

		matlab_content.add(simplifiedViarble);
		for (int k = 0; k < GetExpression.size(); k++) {
			String temp_expression = String.format("Output_abstract_model = %s; ", GetExpression.get(0));
			// Trimmer the expression
			temp_expression = temp_expression.replace("{", "").replace("}", "").replace("( -1 )", "(-1)*")
					.replace("|", ") / (").replace("=", "=(").replace(";", ");");

			matlab_content.add(temp_expression);
		}
/*STORM Check */		
		model_expression = ArrayListString_model_expression;
		pctl_info = abstract_fragment_pctl;
		return matlab_content;
	}

	public String original_model(ArrayList<String> matlab_content, String ArrayListString_model_expression,
			String property_file, String model_file, File location, String abstract_fragment_pctl, int minimum_number_of_state_in_fragment, int Idea_maximum_number_of_state_in_fragment) {
		/* This is to obtain expression for original model */

		api.loadParamModel(PrismAPIUtilities.readModelFile(model_file)); // OLD:
		api.setPropertiesFile(property_file);// OLD: api.setPropertiesFile(model_property_name,
		List<String> GetExpression_orginal = api.getPrismParamExpression();

		String expression_orginal = String.format("Original_model = %s; ", GetExpression_orginal.get(0));

		expression_orginal = expression_orginal.replace("{", "").replace("}", "").replace("( -1 )", "(-1)*")
				.replace("|", ") / (").replace("=", "=(").replace(";", ");");

		matlab_content.add(expression_orginal);

		/* find what parameters used in the model */
		ArrayList<String> Param_declare = new ArrayList<String>();
		String stringPara = GetExpression_orginal.get(0);
		String[] arrOfStr = stringPara.split(" ");

		for (int j = 0; j < arrOfStr.length; j++) {
			String s = arrOfStr[j];
			if (s.matches("[a-zA-Z]+.*")) {
				Param_declare.add(s);
			}
		}

		// Hashset for the non-duplicated parameters.
		Collection<String> noDups_Param_declare = new HashSet<String>(Param_declare);
		// Arraylist for the non-duplicated parameters.
		ArrayList<String> noDups_Param_declare_array = new ArrayList<>(noDups_Param_declare);

		// Add the Parameter and expression together
		noDups_Param_declare_array.addAll(matlab_content);

		String Model_expression = String.format(location.getPath() + File.separatorChar + "Model_expression_%d_%d.txt",
				minimum_number_of_state_in_fragment, Idea_maximum_number_of_state_in_fragment);

		for (String s : noDups_Param_declare_array) {
			ArrayListString_model_expression += s + "\n";
		}

		if (abstract_fragment_pctl.length() > 1) {
			try {
				Files.writeString(Paths.get(Model_expression), ArrayListString_model_expression);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return ArrayListString_model_expression;

	}

	public String getAbstract_fragment_pctl() {
		return pctl_info;

	}

	public String getArrayListString_model_expression() {
		return model_expression;

	}
}

package Path_finding;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Prism_Model_Generator {
	private String simplified_variable  = "";
	
	public ArrayList<String> generator(ArrayList<Modelinfo> info_Array, ArrayList<ArrayList<Integer>> transion,
			ArrayList<String> parameter, int fragmentNumber,File location) {

		simplified_variable  = "";
		ArrayList<String> outputStateIndex = new ArrayList<>();

		if (fragmentNumber > 0) {
			ArrayList<Integer> state_one = new ArrayList<Integer>();
			for (int i = 0; i < transion.size(); i++) {
				state_one.add(transion.get(i).get(0));

			}

			// Hashset for the non-duplicated transition.
			Collection<Integer> noDups_infragment_transition_mixedorder = new HashSet<Integer>(state_one);

			// Arraylist for the non-duplicated transition.
			ArrayList<Integer> noDups_infragment_transition_mixedorder_array = new ArrayList<>(
					noDups_infragment_transition_mixedorder);

			int minIndex = noDups_infragment_transition_mixedorder_array
					.indexOf(Collections.min(noDups_infragment_transition_mixedorder_array));

			int maxIndex = noDups_infragment_transition_mixedorder_array
					.indexOf(Collections.max(noDups_infragment_transition_mixedorder_array));

			ArrayList<String> Frag_para = new ArrayList<String>();
			for (int i = 0; i < parameter.size(); i++) {
				String stringPara = parameter.get(i);
				String[] arrOfStr = stringPara.split(" ");

				Pattern pattern = Pattern.compile("[*|/|+|-]");
				Matcher m = pattern.matcher(stringPara);
				String[] arrOfStr2 = m.replaceAll(" ").split(" ");
				arrOfStr = arrOfStr2;

				for (int j = 0; j < arrOfStr.length; j++) {
					String s = arrOfStr[j].replace("(", "").replace(")", "");
					if (s.matches("[a-zA-Z]+.*")) {
						Frag_para.add(s);
					}

				}
			}

			// Hashset for the non-duplicated transition.
			Collection<String> noDups_Frag_para = new HashSet<String>(Frag_para);
			// Arraylist for the non-duplicated transition.
			ArrayList<String> noDups_Frag_para_array = new ArrayList<>(noDups_Frag_para);

			String string_variable_declare = " ";
			if (!noDups_Frag_para_array.isEmpty()) {
				string_variable_declare = String.format(" //const double %s; \r\n ", noDups_Frag_para_array.get(0));
				for (int i = 1; i < noDups_Frag_para_array.size(); i++) {
					string_variable_declare = String.format(" %s // const double %s;  \r\n ", string_variable_declare,
							noDups_Frag_para_array.get(i));
				}
			}

			String transition_string = new String();
			String labels = new String();

			transition_string = "";
			labels = "";

///*Original Fragment model*/
//			for (int k = noDups_infragment_transition_mixedorder_array
//					.get(minIndex); k <= noDups_infragment_transition_mixedorder_array.get(maxIndex); k++) {
//				String a_state = "";
//				for (int i = 0; i < transion.size(); i++) {
//
//					String temp2_label_index = new String();
//
//					if (transion.get(i).get(0) == k) {
////						if (a_state == "" && parameter.get(i) != "1") {
//						if (a_state == "" && info_Array.get(k).endingPoint==false) {
//						a_state = String.format("[] s=%d -> (%s):(s'=%d)", k, parameter.get(i),
//									transion.get(i).get(1));
////						} else if (a_state == "" && parameter.get(i) == "1") {
//						} else if (a_state == "" && info_Array.get(k).endingPoint==true) {
//							a_state = String.format("[] s=%d -> true", k, parameter.get(i), transion.get(i).get(1));
//							if (labels == "") {
//								labels = String.format("label \" prob_f%d_s%d \"= (s = %d); \r\n", fragmentNumber,
//										transion.get(i).get(1), transion.get(i).get(1));
//
//								temp2_label_index = String.format("prob_f%d_s%d ", fragmentNumber,
//										transion.get(i).get(1));
//
//								outputStateIndex.add(temp2_label_index);
//							} else {
//								labels = String.format("%s label \" prob_f%d_s%d \" = (s = %d); \r\n", labels,
//										fragmentNumber, transion.get(i).get(1), transion.get(i).get(1));
//
//								temp2_label_index = String.format("prob_f%d_s%d ", fragmentNumber,
//										transion.get(i).get(1));
//
//								outputStateIndex.add(temp2_label_index);
//							}
//						} else if (a_state != "" && parameter.get(i) != "1") {
//							a_state = String.format("%s + (%s):(s'=%d)", a_state, parameter.get(i),
//									transion.get(i).get(1));
//
//						}
//
//					}
//
//				}
//				if (a_state != "") {
//					transition_string = String.format("%s \r\n %s;", transition_string, a_state);
//				}
//
//			}
//
//			String model = String.format(
//					"dtmc\r\n" + "%s\r\n" + "module f%d \r\n" + "s : [%d .. %d] init %d; \r\n" + "%s \r\n " + "\r\n"
//							+ "endmodule" + "\r\n" + "%s ",
//					string_variable_declare, fragmentNumber,
//					noDups_infragment_transition_mixedorder_array.get(minIndex),
//					noDups_infragment_transition_mixedorder_array.get(maxIndex),
//					noDups_infragment_transition_mixedorder_array.get(minIndex), transition_string, labels);
//
///*Original Fragment model*/			
			
///*Simplified Fragment model*/
//			String tras_var = "";
//			String tras_var_matlab = "";
//			for (int k = noDups_infragment_transition_mixedorder_array
//					.get(minIndex); k <= noDups_infragment_transition_mixedorder_array.get(maxIndex); k++) {
//				String a_state = "";
//				ArrayList<String> tras_var_list = new ArrayList<>();
//						
//				int counter = 0;
//				
//				for (int i = 0; i < transion.size(); i++) {
//					counter++;
//					String temp2_label_index = new String();
//
//					if (transion.get(i).get(0) == k) {
//						if (a_state == "" && info_Array.get(k).endingPoint==false) {
//
//						tras_var_list.removeAll(tras_var_list);
//						tras_var =  String.format("%s const double P%d_%d_%d;// = (%s); \n",tras_var, fragmentNumber, k,counter, parameter.get(i));
//						tras_var_list.add(String.format("P%d_%d_%d", fragmentNumber,k,counter, parameter.get(i)));
//						a_state = String.format("[] s=%d -> (%s):(s'=%d)", k, tras_var_list.get(0),
//								transion.get(i).get(1));
//						
//						/*This is to store information in matlab usable string*/
//						tras_var_matlab =  String.format("%sP%d_%d_%d = (%s); \n",tras_var_matlab, fragmentNumber, k,counter, parameter.get(i));	
//						/*This is to store information in matlab usable string*/
//						
//						} else if (a_state == "" && info_Array.get(k).endingPoint==true) {
//							a_state = String.format("[] s=%d -> true", k, parameter.get(i), transion.get(i).get(1));
//							if (labels == "") {
//								labels = String.format("label \" prob_f%d_s%d \"= (s = %d); \r\n", fragmentNumber,
//										transion.get(i).get(1), transion.get(i).get(1));
//
//								temp2_label_index = String.format("prob_f%d_s%d ", fragmentNumber,
//										transion.get(i).get(1));
//
//								outputStateIndex.add(temp2_label_index);
//							} else {
//								labels = String.format("%s label \" prob_f%d_s%d \" = (s = %d); \r\n", labels,
//										fragmentNumber, transion.get(i).get(1), transion.get(i).get(1));
//
//								temp2_label_index = String.format("prob_f%d_s%d ", fragmentNumber,
//										transion.get(i).get(1));
//
//								outputStateIndex.add(temp2_label_index);
//							}
//						} else if (a_state != "" && parameter.get(i) != "1") {
//							tras_var_list.removeAll(tras_var_list);
//							tras_var =  String.format("%s  const double P%d_%d_%d ;// = (%s);\n",tras_var,fragmentNumber, k,counter, parameter.get(i));
//							tras_var_list.add(String.format("P%d_%d_%d",fragmentNumber, k,counter, parameter.get(i)));
//							a_state = String.format("%s + (%s):(s'=%d)", a_state, tras_var_list.get(0),
//									transion.get(i).get(1));
//							
//							/*This is to store information in matlab usable string*/
//							tras_var_matlab =  String.format("%sP%d_%d_%d = (%s); \n",tras_var_matlab, fragmentNumber, k,counter, parameter.get(i));	
//							/*This is to store information in matlab usable string*/
//							
//
//						}
//
//					}
//
//				}
//				if (a_state != "") {
//					transition_string = String.format("%s \r\n %s;", transition_string, a_state);
//				}
//
//			}
//
//			simplified_variable  = tras_var_matlab;
//			
//			
//			String model = String.format(
//					"dtmc\r\n" + "%s\r\n"+ "%s\r\n" + "module f%d \r\n" + "s : [%d .. %d] init %d; \r\n" + "%s \r\n " + "\r\n"
//							+ "endmodule" + "\r\n" + "%s ",
//					string_variable_declare,tras_var, fragmentNumber,
//					noDups_infragment_transition_mixedorder_array.get(minIndex),
//					noDups_infragment_transition_mixedorder_array.get(maxIndex),
//					noDups_infragment_transition_mixedorder_array.get(minIndex), transition_string, labels);
//		
///*Simplified Fragment model*/		

			
/*    V2   Simplified Fragment model*/
			String tras_var = "";
			String tras_var_matlab = "";
			for (int k = noDups_infragment_transition_mixedorder_array
					.get(minIndex); k <= noDups_infragment_transition_mixedorder_array.get(maxIndex); k++) {
				String a_state = "";
				ArrayList<String> tras_var_list = new ArrayList<>();
						
				int counter = 0;
				
				for (int i = 0; i < transion.size(); i++) {
					counter++;
					String temp2_label_index = new String();

					if (transion.get(i).get(0) == k) {
						if (a_state == "" && info_Array.get(k).endingPoint==false) {

						tras_var_list.removeAll(tras_var_list);
						String s = parameter.get(i).replace("(", "").replace(")", "");
						if (s.matches(".*[a-zA-Z].*")) {
							tras_var =  String.format("%s const double P%d_%d_%d;// = (%s); \n",tras_var, fragmentNumber, k,counter, parameter.get(i));
							tras_var_list.add(String.format("P%d_%d_%d", fragmentNumber,k,counter, parameter.get(i)));
							a_state = String.format("[] s=%d -> (%s):(s'=%d)", k, tras_var_list.get(0),
									transion.get(i).get(1));
						}else {
							a_state = String.format("[] s=%d -> (%s):(s'=%d)", k, parameter.get(i),
									transion.get(i).get(1));
	
						}
							
							
						/*This is to store information in matlab usable string*/
						tras_var_matlab =  String.format("%sP%d_%d_%d = (%s); \n",tras_var_matlab, fragmentNumber, k,counter, parameter.get(i));	
						/*This is to store information in matlab usable string*/
						
						} else if (a_state == "" && info_Array.get(k).endingPoint==true) {
							a_state = String.format("[] s=%d -> true", k, parameter.get(i), transion.get(i).get(1));
							if (labels == "") {
								labels = String.format("label \" prob_f%d_s%d \"= (s = %d); \r\n", fragmentNumber,
										transion.get(i).get(1), transion.get(i).get(1));

								temp2_label_index = String.format("prob_f%d_s%d ", fragmentNumber,
										transion.get(i).get(1));

								outputStateIndex.add(temp2_label_index);
							} else {
								labels = String.format("%s label \" prob_f%d_s%d \" = (s = %d); \r\n", labels,
										fragmentNumber, transion.get(i).get(1), transion.get(i).get(1));

								temp2_label_index = String.format("prob_f%d_s%d ", fragmentNumber,
										transion.get(i).get(1));

								outputStateIndex.add(temp2_label_index);
							}
						} else if (a_state != "" && parameter.get(i) != "1") {
							tras_var_list.removeAll(tras_var_list);
							
							String s = parameter.get(i).replace("(", "").replace(")", "");
							if (s.matches(".*[a-zA-Z].*")) {
								tras_var =  String.format("%s  const double P%d_%d_%d ;// = (%s);\n",tras_var,fragmentNumber, k,counter, parameter.get(i));
								tras_var_list.add(String.format("P%d_%d_%d",fragmentNumber, k,counter, parameter.get(i)));
				
								a_state = String.format("%s + (%s):(s'=%d)", a_state, tras_var_list.get(0),
										transion.get(i).get(1));
							}else {
								a_state = String.format("%s + (%s):(s'=%d)", a_state, parameter.get(i),
										transion.get(i).get(1));
		
							}
							
							
//								tras_var =  String.format("%s  const double P%d_%d_%d ;// = (%s);\n",tras_var,fragmentNumber, k,counter, parameter.get(i));
//								tras_var_list.add(String.format("P%d_%d_%d",fragmentNumber, k,counter, parameter.get(i)));
//								a_state = String.format("%s + (%s):(s'=%d)", a_state, tras_var_list.get(0),
//									transion.get(i).get(1));
							
							
							
							
							/*This is to store information in matlab usable string*/
							tras_var_matlab =  String.format("%sP%d_%d_%d = (%s); \n",tras_var_matlab, fragmentNumber, k,counter, parameter.get(i));	
							/*This is to store information in matlab usable string*/
							

						}

					}

				}
				if (a_state != "") {
					transition_string = String.format("%s \r\n %s;", transition_string, a_state);
				}

			}

			simplified_variable  = tras_var_matlab;
			
			
			String model = String.format(
					"dtmc\r\n" + "%s\r\n"+ "%s\r\n" + "module f%d \r\n" + "s : [%d .. %d] init %d; \r\n" + "%s \r\n " + "\r\n"
							+ "endmodule" + "\r\n" + "%s ",
					string_variable_declare,tras_var, fragmentNumber,
					noDups_infragment_transition_mixedorder_array.get(minIndex),
					noDups_infragment_transition_mixedorder_array.get(maxIndex),
					noDups_infragment_transition_mixedorder_array.get(minIndex), transition_string, labels);
		
/*    V2   Simplified Fragment model*/			
			
			
			
			
			
			String model_file_name = null;

//			File location = new File("fragments");
			location.mkdirs();

			model_file_name = String.format(location.getPath() + File.separatorChar + "fragment_%d_model.pm",
					fragmentNumber);

			/* file saving */

			try {
				Files.writeString(Paths.get(model_file_name), model);

			} catch (IOException e) {
				e.printStackTrace();
			}

			return outputStateIndex; // Note the RETURN here is different for abstract model; Here returns the label,
										// which will be used for automatic file generation
		} else {
			ArrayList<Integer> state_one = new ArrayList<Integer>();
			for (int i = 0; i < transion.size(); i++) {
				state_one.add(transion.get(i).get(0));

			}

			// Hashset for the non-duplicated transition.
			Collection<Integer> noDups_infragment_transition_mixedorder = new HashSet<Integer>(state_one);

			// Arraylist for the non-duplicated transition.
			ArrayList<Integer> noDups_infragment_transition_mixedorder_array = new ArrayList<>(
					noDups_infragment_transition_mixedorder);

			int minIndex = noDups_infragment_transition_mixedorder_array
					.indexOf(Collections.min(noDups_infragment_transition_mixedorder_array));

			int maxIndex = noDups_infragment_transition_mixedorder_array
					.indexOf(Collections.max(noDups_infragment_transition_mixedorder_array));

			ArrayList<String> Frag_para = new ArrayList<String>();
			for (int i = 0; i < parameter.size(); i++) {
				String stringPara = parameter.get(i);

				String[] arrOfStr = stringPara.split(" ");

				for (int j = 0; j < arrOfStr.length; j++) {
					if (!arrOfStr[j].isEmpty()) {
						String s = arrOfStr[j].replace("(", "").replace(")", "").replace("/", "@").replace("+", "@").replace("-", "@").replace("*", "@");
						if (s.matches("(.*)[a-zA-Z](.*)")) {
							if (s.contains("@")) {
								String[] arrOfStr2 = s.split("@");
								for (int k = 0; k < arrOfStr2.length; k++) {
									String parameter_s = arrOfStr2[k];
									if (parameter_s.matches("(.*)[a-zA-Z](.*)"))
										Frag_para.add(arrOfStr2[k]);

								}
							} else {
								Frag_para.add(s);
							}
						}

					}
				}

			}

			// Hashset for the non-duplicated transition.
			Collection<String> noDups_Frag_para = new HashSet<String>(Frag_para);
			// Arraylist for the non-duplicated transition.
			ArrayList<String> noDups_Frag_para_array = new ArrayList<>(noDups_Frag_para);

			String string_variable_declare = String.format("  const double %s; \r\n ", noDups_Frag_para_array.get(0));
			for (int i = 1; i < noDups_Frag_para_array.size(); i++) {
				string_variable_declare = String.format("%s const double %s; \r\n ", string_variable_declare,
						noDups_Frag_para_array.get(i));
			}

			String transition = new String();
//			String labels = new String();
			transition = "";
//			labels = "";

///*Original Abstract model*/
//			for (int k = noDups_infragment_transition_mixedorder_array
//					.get(minIndex); k <= noDups_infragment_transition_mixedorder_array.get(maxIndex); k++) {
//				String a_state = "";
//				for (int i = 0; i < transion.size(); i++) {
//					if (transion.get(i).get(0) == k) {
//						if (a_state == "") {
//							a_state = String.format("[] s=%d -> (%s):(s'=%d)", k, parameter.get(i),
//									transion.get(i).get(1));
//						} else {
//							a_state = String.format("%s + (%s):(s'=%d)", a_state, parameter.get(i),
//									transion.get(i).get(1));
//						}
//					}
//				}
//				if (a_state != "") {
//					transition = String.format("%s \r\n %s;", transition, a_state);
//				}
//			}
//
//			String model = String.format(
//					"dtmc\r\n" + "%s\r\n" + "module abstract \r\n" + "s : [%d .. %d] init %d; \r\n" + "%s \r\n "
//							+ "\r\n" + "endmodule" + "\r\n" + " ",
//					string_variable_declare, noDups_infragment_transition_mixedorder_array.get(minIndex),
//					noDups_infragment_transition_mixedorder_array.get(maxIndex),
//					noDups_infragment_transition_mixedorder_array.get(minIndex), transition);
//			String model_file_name = null;
//
////			File location = new File("fragments");
//			location.mkdirs();
//
//			model_file_name = String.format(location.getPath() + File.separatorChar + "fragment_abstract_model.pm");
//
//			/* file saving */
//
//			try {
//				Files.writeString(Paths.get(model_file_name), model);
//
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//
//			return noDups_Frag_para_array;// Note the RETURN here is different for individual model; Here returns the
//											// name of all parameters
//
//		}
///*Original Abstract model*/
			
///*Simplified abstract model*/
//		String tras_var = "";
//		String tras_var_matlab = "";
//		
//		
//		for (int k = noDups_infragment_transition_mixedorder_array
//				.get(minIndex); k <= noDups_infragment_transition_mixedorder_array.get(maxIndex); k++) {
//			String a_state = "";
//			ArrayList<String> tras_var_list = new ArrayList<>();
//			int counter = 0;
//			for (int i = 0; i < transion.size(); i++) {
//				counter++;
//				if (transion.get(i).get(0) == k) {
//					if (a_state == "") {
//						tras_var_list.removeAll(tras_var_list);
//						tras_var =  String.format("%s const double PX_%d_%d ;// = (%s); \n",tras_var, k,counter, parameter.get(i));
//						tras_var_list.add(String.format("PX_%d_%d", k,counter, parameter.get(i)));
//						a_state = String.format("[] s=%d -> (%s):(s'=%d)", k, tras_var_list.get(0),
//								transion.get(i).get(1));
//						
//						/*This is to store information in matlab usable string*/
//						tras_var_matlab =  String.format("%sPX_%d_%d = (%s); \n",tras_var_matlab, k,counter, parameter.get(i));	
//						/*This is to store information in matlab usable string*/
//						
//					} else {
//						tras_var_list.removeAll(tras_var_list);
//						tras_var =  String.format("%s  const double PX_%d_%d ;// = (%s);\n",tras_var, k,counter, parameter.get(i));
//						tras_var_list.add(String.format("PX_%d_%d", k,counter, parameter.get(i)));
//						a_state = String.format("%s + (%s):(s'=%d)", a_state, tras_var_list.get(0),
//								transion.get(i).get(1));
//						
//						/*This is to store information in matlab usable string*/
//						tras_var_matlab =  String.format("%sPX_%d_%d = (%s);\n",tras_var_matlab, k,counter, parameter.get(i));
//						/*This is to store information in matlab usable string*/
//						
//					}
//				}
//			}
//			if (a_state != "") {
//				transition = String.format("%s \r\n %s;", transition, a_state);
//			}
//		}
//		
//		simplified_variable = tras_var_matlab;
//
//		String model = String.format(
//				"dtmc\r\n" + "%s\r\n"+ "%s\r\n" + "module abstract \r\n" + "s : [%d .. %d] init %d; \r\n" + "%s \r\n "
//						+ "\r\n" + "endmodule" + "\r\n" + " ",
//				string_variable_declare,tras_var, noDups_infragment_transition_mixedorder_array.get(minIndex),
//				noDups_infragment_transition_mixedorder_array.get(maxIndex),
//				noDups_infragment_transition_mixedorder_array.get(minIndex), transition);
//		String model_file_name = null;
//
////		File location = new File("fragments");
//		location.mkdirs();
//
//		model_file_name = String.format(location.getPath() + File.separatorChar + "fragment_abstract_model.pm");
//
//		/* file saving */
//
//		try {
//			Files.writeString(Paths.get(model_file_name), model);
//
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//
//		return noDups_Frag_para_array;// Note the RETURN here is different for individual model; Here returns the
//										// name of all parameters
//
//	}
///*Simplified abstract model*/
			
/*       v2       Simplified abstract model*/
			String tras_var = "";
			String tras_var_matlab = "";
			
			
			for (int k = noDups_infragment_transition_mixedorder_array
					.get(minIndex); k <= noDups_infragment_transition_mixedorder_array.get(maxIndex); k++) {
				String a_state = "";
				ArrayList<String> tras_var_list = new ArrayList<>();
				int counter = 0;
				for (int i = 0; i < transion.size(); i++) {
					counter++;
					if (transion.get(i).get(0) == k) {
						if (a_state == "") {
							tras_var_list.removeAll(tras_var_list);
							
							String s = parameter.get(i).replace("(", "").replace(")", "");
							if (s.matches(".*[a-zA-Z].*")) {
								tras_var =  String.format("%s const double PX_%d_%d ;// = (%s); \n",tras_var, k,counter, parameter.get(i));
								tras_var_list.add(String.format("PX_%d_%d", k,counter, parameter.get(i)));
								a_state = String.format("[] s=%d -> (%s):(s'=%d)", k, tras_var_list.get(0),
										transion.get(i).get(1));
							}else {
								a_state = String.format("[] s=%d -> (%s):(s'=%d)", k, parameter.get(i),
										transion.get(i).get(1));
		
							}
							
							
//							tras_var =  String.format("%s const double PX_%d_%d ;// = (%s); \n",tras_var, k,counter, parameter.get(i));
//							tras_var_list.add(String.format("PX_%d_%d", k,counter, parameter.get(i)));
//							a_state = String.format("[] s=%d -> (%s):(s'=%d)", k, tras_var_list.get(0),
//									transion.get(i).get(1));
							
							/*This is to store information in matlab usable string*/
							tras_var_matlab =  String.format("%sPX_%d_%d = (%s); \n",tras_var_matlab, k,counter, parameter.get(i));	
							/*This is to store information in matlab usable string*/
							
						} else {
							tras_var_list.removeAll(tras_var_list);
							
							String s = parameter.get(i).replace("(", "").replace(")", "");
							if (s.matches(".*[a-zA-Z].*")) {
								tras_var =  String.format("%s  const double PX_%d_%d ;// = (%s);\n",tras_var, k,counter, parameter.get(i));
       							tras_var_list.add(String.format("PX_%d_%d", k,counter, parameter.get(i)));
								a_state = String.format("%s + (%s):(s'=%d)", a_state, tras_var_list.get(0),
										transion.get(i).get(1));
							}else {
								a_state = String.format("%s + (%s):(s'=%d)", a_state, parameter.get(i),
										transion.get(i).get(1));
		
							}
							
//							tras_var =  String.format("%s  const double PX_%d_%d ;// = (%s);\n",tras_var, k,counter, parameter.get(i));
//							tras_var_list.add(String.format("PX_%d_%d", k,counter, parameter.get(i)));
//							a_state = String.format("%s + (%s):(s'=%d)", a_state, tras_var_list.get(0),
//									transion.get(i).get(1));
							
							/*This is to store information in matlab usable string*/
							tras_var_matlab =  String.format("%sPX_%d_%d = (%s);\n",tras_var_matlab, k,counter, parameter.get(i));
							/*This is to store information in matlab usable string*/
							
						}
					}
				}
				if (a_state != "") {
					transition = String.format("%s \r\n %s;", transition, a_state);
				}
			}
			
			simplified_variable = tras_var_matlab;

			String model = String.format(
					"dtmc\r\n" + "%s\r\n"+ "%s\r\n" + "module abstract \r\n" + "s : [%d .. %d] init %d; \r\n" + "%s \r\n "
							+ "\r\n" + "endmodule" + "\r\n" + " ",
					string_variable_declare,tras_var, noDups_infragment_transition_mixedorder_array.get(minIndex),
					noDups_infragment_transition_mixedorder_array.get(maxIndex),
					noDups_infragment_transition_mixedorder_array.get(minIndex), transition);
			String model_file_name = null;

//			File location = new File("fragments");
			location.mkdirs();

			model_file_name = String.format(location.getPath() + File.separatorChar + "fragment_abstract_model.pm");

			/* file saving */

			try {
				Files.writeString(Paths.get(model_file_name), model);

			} catch (IOException e) {
				e.printStackTrace();
			}

			return noDups_Frag_para_array;// Note the RETURN here is different for individual model; Here returns the
											// name of all parameters

		}
/*       v2       Simplified abstract model*/
			
	}
	
	
	public String getSimplifiedVariable() {
	
		return simplified_variable;
		
	}

}

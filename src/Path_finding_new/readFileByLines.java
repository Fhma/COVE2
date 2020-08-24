package Path_finding_new;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class readFileByLines {

	/*
	 * This returns a N-by-2 integer array list, first row stores the [number of
	 * state in the model, number of transitions] the rest of the rows store the
	 * transitions
	 */
	public ArrayList<ArrayList<Integer>> stateRead(String fileName) {

		ArrayList<ArrayList<Integer>> state = new ArrayList<ArrayList<Integer>>();

//		File file = new File(fileName);
//		BufferedReader reader = null;
//		try {
//			reader = new BufferedReader(new FileReader(file));
//			String tempString = null;
			String transitionMatrix = readFile(fileName);
			for (String tempString : transitionMatrix.split("\n")) {
//			while ((tempString = reader.readLine()) != null) {

				String[] tempSplit = tempString.split(" ");

				ArrayList<Integer> onetransition = new ArrayList<Integer>();
				onetransition.add(Integer.parseInt(tempSplit[0]));
				onetransition.add(Integer.parseInt(tempSplit[1]));

				state.add(onetransition);

			}
		
//			reader.close();

//		} catch (IOException e) {
//			e.printStackTrace();
//		} finally {
//			if (reader != null) {
//				try {
//					reader.close();
//				} catch (IOException e1) {
//				}
//			}
//		}
		return state;
	}

	/*
	 * This returns (N-1)-by-2 string arraylist which stores the parameters of the
	 * model The (-1) is because the arraylist doesn't store - [number of state in
	 * the model, number of transitions]
	 */

	public ArrayList<String> readParam(String fileName) {
		ArrayList<String> res = new ArrayList<String>();

//		File file = new File(fileName);
//		BufferedReader reader = null;
//		try {
//			reader = new BufferedReader(new FileReader(file));
//			String tempString = null;
			String transitionMatrix = readFile(fileName);
			for (String tempString : transitionMatrix.split("\n")) {
//			while ((tempString = reader.readLine()) != null) {

				String[] tempSplit = tempString.split(" ");

				if (tempSplit.length > 2) {
					String[] resSplit = new String[3];
					String parameter = "";

					resSplit[0] = tempSplit[0];
					resSplit[1] = tempSplit[1];
					resSplit[2] = "";
					for (int i = 2; i < tempSplit.length; i++) {
						if (!tempSplit[i].equals("{") && !tempSplit[i].equals("}")) {
							parameter += tempSplit[i];
							if (i != tempSplit.length - 1)
								parameter += " ";
						}
					}
					res.add(parameter);
				}
			}
			
//			reader.close();
//			
//		} catch (IOException e) {
//			e.printStackTrace();
//		} finally {
//			if (reader != null) {
//				try {
//					reader.close();
//				} catch (IOException e1) {
//				}
//			}
//		}

		return res;
	}
	
	
	
	
	/**
	* Read file
	* @param fileName
	* @return
	*/
	@SuppressWarnings("resource")
	public  String readFile(String fileName) {
		try {
			File f = new File(fileName);
			if (!f.exists() || f.isDirectory())
				throw new IOException("File does not exist! " + f );
		
			StringBuilder str = new StringBuilder(100);
			BufferedReader bfr = null;

			bfr = new BufferedReader(new FileReader(f));
			String line = null;
			while ((line = bfr.readLine()) != null) {
				str.append(line + "\n");
			}
			return str.toString();
		} catch (IOException e) {
			e.printStackTrace();
			System.exit(-1);
		}
		return null;
	}
	
}

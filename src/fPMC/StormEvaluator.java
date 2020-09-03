package fPMC;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.List;

public class StormEvaluator {

	public static final String STORM_PATH = Utility.getProperty("STORM_PATH"); 
			//""/Users/xxxx/Programs/Storm/stormchecker/1.5.1/bin/storm-pars";

	public static void main(String[] args) {

		File model = new File(String.format("models/ePMC/epmc_running_model_p.pm"));
		File property = new File(String.format("models/ePMC/epmc_running_model_p.pctl"));
		

		StormEvaluator storm = new StormEvaluator();

		try {
			for (String s : storm.evaluateProperties_Storm(model, property)) {
				System.out.println(s.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public List<String> evaluateProperties_Storm(File model, File property) throws Exception {

		// buffer reader to read file property and the all properties
		BufferedReader br = new BufferedReader(new FileReader(property));

		// a list to hold all result of evaluating properties
		List<String> results = new ArrayList<String>();

		// a temprory folder to store execution output of each property. To clean up, this folder can be deleted once
		// execution ends
		File tmp = new File("tmp" + File.separatorChar);
		tmp.mkdirs();

		String line;

		int counter = 1; // for property indexing
		while ((line = br.readLine()) != null) {

			if (line.startsWith("P")||line.startsWith(" P")){
				String[] params = new String[5];
				params[0] = STORM_PATH;
				params[1] = "--prism";
				params[2] = model.getAbsolutePath();
				params[3] = "--prop";
				params[4] = String.format("%s", line);
	
				System.out.println("Checking:" + params[4]);
				// build a process using the command
				ProcessBuilder pb = new ProcessBuilder(params);
	
				// save output of this property into the following file
				String s = tmp.getAbsolutePath() + File.separatorChar + "output_" + (counter) + ".txt";
				File f = new File(s);
	
				// redirect the output of the propces to the file
				pb.redirectOutput(Redirect.to(f));
	
				// save execution errors into the following file
				s = tmp.getAbsolutePath() + File.separatorChar + "errors_" + (counter) + ".txt";
				File errors = new File(s);
				pb.redirectError(Redirect.to(errors));
	
				boolean alive = false;
				Process p = null;
				int iterations = 0;
				
				do {
					p = pb.start();
					alive = p.isAlive();
					Thread.sleep(50);
					iterations++;
					if (iterations >= 2000)
						break;
				} while (!alive);
				if (iterations == 2000)
					throw new Exception("Not executed!.");
				counter++;

	
				// read the ouput file and store it as a string to be send to the caller
				BufferedReader br2;
				String line2 = "";
				String line3 = "";
				
				boolean keepwaiting = true;
				iterations = 0;
							
				while(keepwaiting){
				br2 = new BufferedReader(new FileReader(f.getPath()));
				BufferedReader br3 = new BufferedReader(new FileReader(f.getPath()));
				
				while ((line3 = br2.readLine()) != null) {
					if (line3.startsWith("Time for model checking:")) {
						br2.close();
						
						while ((line2 = br3.readLine()) != null) {
							if (line2.startsWith("Result (initial states):")) {
								br3.close();
								keepwaiting = false;
								break;
							}
							
						}
						
						keepwaiting = false;
						break;
					}
				}
				br3.close();
				br2.close();
				iterations++;
				if (iterations >= 30000)
					break;
				
				Thread.sleep(50);
			}
				
				if(keepwaiting) {
					results.add("null");
				}
				else {
					String ss[] = line2.split(":");

					results.add(ss[1].trim());
				}


			}
		}
		// close outter buffer
		br.close();
		List<String> results_copy = new ArrayList<>(results);
		return results_copy;
	}
}
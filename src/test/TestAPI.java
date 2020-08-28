package test;

import org.spg.PrismAPI.PrismParamAPI;
import org.spg.utils.PrismAPIUtilities;

public class TestAPI {

	public static void main(String[] args) {
		
		/*SPL model*/		
		final String model_file = "models/multiparam_semisynchronous_parallel_20.pm";
		final String property_file = "models/DTMC_prop_20_1.pctl";

		final PrismParamAPI api = new PrismParamAPI();
		//api.loadParamModel(PrismAPIUtilities.readModelFile(model_path), names_array);//old API still can be used
		api.loadParamModel(PrismAPIUtilities.readModelFile(model_file));

		// Set properties file
		//api.setPropertiesFile(property_path, names_array);//old API still can be used
		api.setPropertiesFile(property_file);

		// Save transition matrix
		final String transMatrix = api.getParametricTransitionMatrix();//api.getParametricTransitionMatrix(names_array, lbs, ubs);
		System.out.println(transMatrix);

	}

}


//It seems that the code works OK
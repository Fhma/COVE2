
public class ePMC {

	public static void main (String args[]) {

		final String modelFile 		= "models/ePMC/epmc_running_model_p.pm";
		final String propertiesFile 	= "models/ePMC/epmc_running_model_p.pctl";

		final int minFragmentSize	= 1;
		
		ePMCController epmcController = new ePMCController(modelFile, propertiesFile, minFragmentSize);
				
		epmcController.run();
	}
}

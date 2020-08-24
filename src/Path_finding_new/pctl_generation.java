package Path_finding_new;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;

public class pctl_generation {
	public void generator( ArrayList<Modelinfo> info_Array, ArrayList<ArrayList<Integer>> inFragment_transition, int fragmentNumber, File location) {

		String fragment_pctl = "";
		String pctl_file_name = null;

		location.mkdirs();

		pctl_file_name = String.format(location.getPath() + File.separatorChar + "fragment_%d_property.pctl", fragmentNumber);

		for (int j = 0; j < inFragment_transition.size(); j++) {
			if (info_Array.get(inFragment_transition.get(j).get(0)).endingPoint == true) {
				fragment_pctl = String.format("%s \n P=? [ F s= %d ]", fragment_pctl, inFragment_transition.get(j).get(0));
			}
		}

		if (fragment_pctl.length() > 1) {
			try {

				Files.writeString(Paths.get(pctl_file_name), fragment_pctl);

			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}

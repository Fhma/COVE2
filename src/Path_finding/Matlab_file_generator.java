package Path_finding;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;

public class Matlab_file_generator {
	public void generator(ArrayList<Modelinfo> info_Array, ArrayList<ArrayList<Integer>> Fragment_transition,
			File location) {

		String content = String.format("P = sparse(%d,%d);", info_Array.size(), info_Array.size());
		String matlab_file_name = null;

		location.mkdirs();

		matlab_file_name = String.format(location.getPath() + File.separatorChar + "New_model.m");

		for (int j = 0; j < Fragment_transition.size(); j++) {
			// Matlab starts from 1 not 0, so Fragment_transition.get(j).get(1)+1
			content = String.format("%s \n P(%d,%d)=1;", content, Fragment_transition.get(j).get(0)+1,
					Fragment_transition.get(j).get(1)+1);

		}

		content = String.format("%s \n \n \n \n fragment = [", content);

		for (int i = 0; i < info_Array.size(); i++) {
			content = String.format("%s %d", content, info_Array.get(i).fragmentNumber);
		}

		content = String.format("%s];", content);

		if (content.length() > 1) {
			try {

				Files.writeString(Paths.get(matlab_file_name), content);

			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}

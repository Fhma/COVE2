package uk.ac.york.fragment.generator.io;

import Path_finding.TransitionMatrix;
import uk.ac.york.fragment.generator.ePMCController;

public class IOController {

	private ePMCController main_controller;

	public IOController(ePMCController main) {
		main_controller = main;
	}

	public TransitionMatrix readModel(String model_path) {
		// read a model and return a transition matrix that can
		// be process and used to build graph
		return null;
	}
}
package uk.ac.york.fragment.generator;

import org.spg.PrismAPI.PrismParamAPI;
import org.spg.utils.PrismAPIUtilities;

import uk.ac.york.fragment.generator.graph.Fragment;
import uk.ac.york.fragment.generator.graph.Graph;
import uk.ac.york.fragment.generator.graph.State;
import uk.ac.york.fragment.generator.io.IOController;
import uk.ac.york.fragment.generator.modelchecker.MCController;
import uk.ac.york.fragment.generator.utilities.GraphFractory;

public class ePMCController {

	private IOController io_controller;
	private MCController mc_controller;

	private String modelFile;
	private String propertiesFile;
	private final int minimumFragmentSize;

	final PrismParamAPI api = new PrismParamAPI();

	/**
	 * Constructor of ePMC Controller
	 * 
	 * @param modelFile
	 * @param propertiesFile
	 */
	public ePMCController(String modelFile, String propertiesFile, int minFragmentSize) {
		io_controller = new IOController(this);
		mc_controller = new MCController(this);

		this.modelFile = modelFile;
		this.propertiesFile = propertiesFile;
		this.minimumFragmentSize = minFragmentSize;
	}

	public void run() {
		// Step A
		Graph graph = buildGraph();

		// Step B
		generateFragments(graph);

		// Step C

		// Step D

		// Step E

		// Step F
	}

	/**
	 * Do Step A: Build graph using parametric transition matrix
	 * 
	 * @return
	 */
	private Graph buildGraph() {
		api.loadParamModel(PrismAPIUtilities.readModelFile(modelFile));

		// Set properties file
		api.setPropertiesFile(propertiesFile);

		// Get transition matrix
		final String paramTransMatrix = api.getParametricTransitionMatrix();

		// Build graph
		Graph graph = GraphFractory.buildGraph(paramTransMatrix);

		// print graph
		graph.toString();

		return graph;
	}

	/**
	 * Do Step B: Generate fragment of minimum size n
	 * 
	 * @param graph
	 */
	private void generateFragments(Graph graph) {
		// 1) Find ending states
		graph.markSelfLoops();

		int fragmentNumber = 1;

		for (State s : graph.getAllStates()) {
			if (!s.isVisited()) {
				// generate a new candidate fragment
				Fragment f = new Fragment();

				// create a duplicate of the currently analysed state (to keep the original
				// fragment unpolluted)
				// the idea is once a fragment is generated to go back to the original graph and
				// set the visited property
				// of states belonging to fragment f to true so they are not visited again
				State fragmentS = new State(s);

				// set the properties for the starting state of a fragment
				fragmentS.setFragmentNumber(fragmentNumber);
				fragmentS.setVisited(true);
				fragmentS.setStartingPoint(true);

				// add the state to the fragment (graph)
				f.addState(fragmentS);
				f.setEntryState(fragmentS);
			}
		}
	}

}

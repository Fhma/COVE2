
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Random;

import org.spg.PrismAPI.PrismParamAPI;
import org.spg.utils.PrismAPIUtilities;

public class ePMCController {

	private IOController io_controller;
	private MCController mc_controller;

	private String modelFile;
	private String propertiesFile;
	private final int minimumFragmentSize;
	
	private int FRAGMENT_NUM;

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
//		System.out.println(graph.toString());

		return graph;
	}

	/**
	 * Do Step B: Generate fragment of minimum size n
	 * 
	 * @param graph
	 */
	private void generateFragments(Graph graph) {
		FRAGMENT_NUM = graph.getAllStates().size()+1;

		Queue<State> statesToSearch  		= new LinkedList<State>(); 
		Queue<State> endingStatesToSearch	= new LinkedList<State>(); 

		// 1) Find ending states
		graph.markSelfLoops(FRAGMENT_NUM);

		int fragmentNumber = 1;

		for (State s : graph.getAllStates()) {
			if (!s.isVisited()) {
//				System.out.println(s.getName());
				// generate a new candidate fragment
				Fragment f = new Fragment();

				// create a duplicate of the currently analysed state (to keep the original
				// fragment unpolluted)
				// the idea is once a fragment is generated to go back to the original graph and
				// set the visited property
				// of states belonging to fragment f to true so they are not visited again
				State fragmentS = s;//new State(s, false);

				try {
					grow(graph, f, fragmentS, fragmentNumber, statesToSearch, endingStatesToSearch);
				} 
				catch (Exception e) {
					e.printStackTrace();
				}
				
				// set the properties for the starting state of a fragment
//				fragmentS.setFragmentNumber(fragmentNumber);
//				fragmentS.setVisited(true);
//				fragmentS.setStartingPoint(true);
//
//				// add the state to the fragment (graph)
//				f.addState(fragmentS);
//				f.setEntryState(fragmentS);
				
				fragmentNumber++;
			}
		}
	}
	
	
	private void grow (Graph g, Fragment f, State s, int fragmentNumber, Queue<State> statesToSearch, Queue<State> endingStatesToSearch) throws Exception {
		List<State> outgoingStates  = new ArrayList<>();
		
		
		if (s.isStartingPoint()) {
			//1: all outgoings have been visited; //2) some outgoings have been
			for (Transition t : s.getOutgoingTransitions()) {
				outgoingStates.add(t.getTargetState()); //s1-p1->s2; s1-p2->s2 
			}
			
			//error - should not be the case
			if (outgoingStates.size() == 0) 
				throw new Exception("State " + s.getName() +" has no outoging transitions");

			//check status of outoing states: 1-> visited; 0-> not visited
			int []visitedStatus 	= new int[outgoingStates.size()];
			boolean allVisited 		= true;
			boolean allUnivisited	= true;
			int index = 0;
			for (State outS : outgoingStates) {
				if (outS.isVisited()) {
					visitedStatus[index]= 1;
					allUnivisited 		= false;
				}
				else {
						allVisited 		= false; 
				}
				index++;
			}
			
			
			if (allUnivisited) {//we are in case 1
				for (State outS : outgoingStates) {
					outS.setVisited(true);
					outS.setFragmentNumber(fragmentNumber);
				}

				boolean isValidFragment = checkValidEnding(outgoingStates, fragmentNumber, statesToSearch);
				if (isValidFragment)
					return;
			}
			else if (allVisited) {//we are in case 2 --> single state fragment
				s.setFragmentNumber(fragmentNumber);
				s.setEndingPoint(true);
				s.setVisited(true);
				f.addState(s);
				return;
			}
			else {//some states have been visited, others not
				for (int i=0; i<visitedStatus.length; i++) {
					if (visitedStatus[i]==1) {
						//add an auxiliary state between the starting and visited states
						State sAux = f.addAuxiliaryState(s.findOutgoingTransition(outgoingStates.get(i)));
						//TODO: Check whether auxiliary states need to be in the else branch too
						statesToSearch.add(sAux);
					}
					else {
						//
						outgoingStates.get(i).setVisited(true);
						outgoingStates.get(i).setFragmentNumber(fragmentNumber);
						boolean isValidFragment = checkValidEnding(outgoingStates, fragmentNumber, statesToSearch);
						if (isValidFragment)
							return;
					}
				}
			}	
		}
		else {//if s is not the starting state
			//find incoming states
			List<State> incomingStates  = new ArrayList<>();
			
			//collect incoming transitions
			for (Transition t : s.getIncomingTransitions()) {
				incomingStates.add(t.getSourceState()); //s1-p1->s; s2-p2->s 
			}
			
			for (State incomingS : incomingStates) {
				if (incomingS.isVisited() && incomingS.getFragmentNumber()!=fragmentNumber) {
					incomingS.setEndingPoint(true);
					incomingS.setVisited(true);
					incomingS.setStartingPoint(true);
					incomingS.setFragmentNumber(FRAGMENT_NUM++);
					
					return;//I won't continue from this state
				}
				else {
					incomingS.setVisited(true);
					incomingS.setFragmentNumber(fragmentNumber);
					//TODO: Check it later as it feels that it does not anything; 
					//almost likely all are invalid ending points, used to grow further 
					boolean isValidFragment = checkValidEnding(incomingStates, fragmentNumber, statesToSearch);
				}
			
				//TODO: Outgoing transitions that are linked to a starting state
				//TODO: Stopped here 19/06
			}

		}
	}
	
	
	private boolean checkValidEnding(List<State> outgoingStates, int fragmentNumber, Queue<State> statesToSearch) {
		for (State outS : outgoingStates) {
			outS.setVisited(true);
			outS.setFragmentNumber(fragmentNumber);
		}

		boolean isValidFragment = true;
		for (State outS : outgoingStates) {
			EndingPoint ep = outS.isValidEndingPoint();
			if (ep != EndingPoint.ValidEndingPoint) {
				isValidFragment = false;
				statesToSearch.add(outS);
			}
		}
		
		return isValidFragment;
	}

}

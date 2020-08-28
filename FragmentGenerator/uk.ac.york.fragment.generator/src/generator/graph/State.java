import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class State {

	private String name;
	private List<Transition> incomingTransitions;
	private List<Transition> outgoingTransitions;

	// Fragment specific
	private boolean visited;
	private boolean startingPoint;
	private boolean endingPoint;
	private int fragmentNumber;

	public State(String name) {
		this.name = name;
		incomingTransitions = new ArrayList<Transition>();
		outgoingTransitions = new ArrayList<Transition>();

		startingPoint 	= false;
		visited 		= false;
		fragmentNumber 	= 0;
		endingPoint 	= false;
	}

	public State(String name, List<Transition> incomings, List<Transition> outgoings) {
		this.name = name;
		incomingTransitions = incomings;
		outgoingTransitions = outgoings;

		startingPoint = false;
		visited = false;
		fragmentNumber = 0;
		endingPoint = false;
	}

	/**
	 * Copy constructor
	 * 
	 * @return
	 */
	@Deprecated
	public State(State s) {
		name 			= s.name;
		startingPoint  	= s.startingPoint;
		visited 		= s.visited;
		fragmentNumber  = s.fragmentNumber;
		endingPoint 	= s.endingPoint;

		incomingTransitions = new ArrayList<Transition>();
		for (Transition t : s.incomingTransitions)
			incomingTransitions.add(new Transition(t));

		outgoingTransitions = new ArrayList<Transition>();
		for (Transition t : s.outgoingTransitions)
			outgoingTransitions.add(new Transition(t));
	}
	
	/**
	 * Copy constructor - temporary solution to avoid infinite loop
	 * @param s
	 * @param n
	 */
	@Deprecated
	public State (State s, boolean n) {
		name 			= s.name;
		startingPoint  	= s.startingPoint;
		visited 		= s.visited;
		fragmentNumber  = s.fragmentNumber;
		endingPoint 	= s.endingPoint;
		
		incomingTransitions = s.incomingTransitions;
		outgoingTransitions = s.outgoingTransitions;
	}

	public String getName() {
		return name;
	}

	public List<Transition> getIncomingTransitions() {
		return incomingTransitions;
	}

	public List<Transition> getOutgoingTransitions() {
		return outgoingTransitions;
	}

	public void addIncomingTransition(Transition t) {
		incomingTransitions.add(t);
	}
	
	public void removeIncomingTransition(Transition t) {
		incomingTransitions.remove(t);
	}
	
	public Transition findIncomingTransition (State source) {
		for (Transition t : incomingTransitions) {
			if (t.getSourceState().equals(source))
				return t;
		}
		return null;
	}

	public void addOutgoingTransition(Transition t) {
		outgoingTransitions.add(t);
	}

	public void removeOutgoingTransition(Transition t) {
		outgoingTransitions.remove(t);
	}

	public Transition findOutgoingTransition (State target) {
		for (Transition t : outgoingTransitions) {
			if (t.getTargetState().equals(target))
				return t;
		}
		return null;
	}
	
	public void setVisited(boolean visited) {
		this.visited = visited;
	}

	public boolean isVisited() {
		return visited;
	}

	public void setFragmentNumber(int fragmentNumber) {
		this.fragmentNumber = fragmentNumber;
	}

	public int getFragmentNumber() {
		return this.fragmentNumber;
	}

	public void setStartingPoint(boolean startingPoint) {
		this.startingPoint = startingPoint;
	}

	public boolean isStartingPoint() {
		return this.startingPoint;
	}

	public void setEndingPoint(boolean endingPoint) {
		this.endingPoint = endingPoint;
	}

	public boolean isEndingPoint() {
		return this.endingPoint;
	}

	@Override
	public String toString() {
		StringBuilder s = new StringBuilder();
		s.append(this.hashCode() + "[ ");
		s.append("name = " + this.name + ", ");
		s.append("fragmentNumber = " + this.fragmentNumber + ", ");
		s.append("startingPoint = " + this.startingPoint + ", ");
		s.append("endingPoint = " + this.endingPoint + ", ");
		s.append("visited = " + this.visited + " ]");
		return s.toString();
	}
	
	public EndingPoint isValidEndingPoint () {
		boolean invalidIncoming = false;
		boolean invalidOutgoing = false;
		//check that all incoming transitions to state s are within the same fragment
		for (Transition t: getIncomingTransitions()) {
			if (t.getSourceState().getFragmentNumber() != getFragmentNumber()) {
				invalidIncoming = true;
				break;
			}
		}
		
		//check that all outgoing transitions from state s are to outside states or the starting state of the same fragment like s
		for (Transition t: getOutgoingTransitions()) {
			if ( (t.getTargetState().getFragmentNumber() == getFragmentNumber()) && 
				 (t.getTargetState().isStartingPoint() != true) ) {
				invalidOutgoing = true;
				break;
			}
		}
		
		if (invalidIncoming && invalidOutgoing)
			return EndingPoint.InvalidIncomingAndOutgoing;
		else if (invalidIncoming)
			return EndingPoint.InvalidIncoming;
		else if (invalidOutgoing)
			return EndingPoint.InvalidOutgoing;
		
		return EndingPoint.ValidEndingPoint;
	}
}

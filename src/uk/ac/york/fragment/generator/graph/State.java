package uk.ac.york.fragment.generator.graph;

import java.util.HashSet;
import java.util.Set;

public class State {

	private String name;
	private Set<Transition> incomingTransitions;
	private Set<Transition> outgoingTransitions;

	// Fragment specific
	private boolean visited;
	private boolean startingPoint;
	private boolean endingPoint;
	private int fragmentNumber;

	public State(String name) {
		this.name = name;
		incomingTransitions = new HashSet<Transition>();
		outgoingTransitions = new HashSet<Transition>();

		startingPoint = false;
		visited = false;
		fragmentNumber = 0;
		endingPoint = false;
	}

	public State(String name, Set<Transition> incomings, Set<Transition> outgoings) {
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
	public State(State s) {
		name = s.name;
		startingPoint = s.startingPoint;
		visited = s.visited;
		fragmentNumber = s.fragmentNumber;
		endingPoint = s.endingPoint;

		incomingTransitions = new HashSet<Transition>();
		for (Transition t : s.incomingTransitions)
			incomingTransitions.add(new Transition(t));

		outgoingTransitions = new HashSet<Transition>();
		for (Transition t : s.outgoingTransitions)
			outgoingTransitions.add(new Transition(t));
	}

	public String getName() {
		return name;
	}

	public Set<Transition> getIncomingTransitions() {
		return incomingTransitions;
	}

	public Set<Transition> getOutgoingTransitions() {
		return outgoingTransitions;
	}

	public void addIncomingTransition(Transition source) {
		incomingTransitions.add(source);
	}

	public void addOutgoingTransition(Transition target) {
		outgoingTransitions.add(target);
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
}

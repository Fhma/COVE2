package uk.ac.york.fragment.generator.graph;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class Graph { // G = (V, E), States and transitions
	private State entryState;
	private List<State> states;
	private List<Transition> transitions;
	private List<State> endStates;

	public Graph() {
	}

	public void setEntryState(State state) {
		this.entryState = state;
	}

	/**
	 * Create a new state by name and adds it to this graph
	 * 
	 * @param name
	 * @return the new added state
	 */
	public State addState(String name) {
		State s = getState(name);
		if (s == null)
			s = new State(name);
		getAllStates().add(s);
		return s;
	}

	public void addState(State state) {
		if (getState(state.getName()) == null)
			getAllStates().add(state);
	}

	public State getState(String name) {
		for (State s : getAllStates())
			if (s.getName().equals(name))
				return s;
		return null;
	}

	public List<State> getAllStates() {
		if (states == null)
			states = new ArrayList<State>();
		return states;
	}

	public List<Transition> getAllTransitions() {
		if (transitions == null)
			transitions = new ArrayList<Transition>();
		return transitions;
	}

	public List<State> getOutConnectingStates(State state) {
		Set<Transition> ts = state.getOutgoingTransitions();
		List<State> ss = new ArrayList<State>();
		for (Transition t : ts) {
			ss.add(t.getTargetState());
		}
		return ss;
	}

	public List<State> getOutConnectingStates(String name) {
		return getOutConnectingStates(getState(name));
	}

	public List<State> getInConnectingStates(State state) {
		Set<Transition> ts = state.getIncomingTransitions();
		List<State> ss = new ArrayList<State>();
		for (Transition t : ts) {
			ss.add(t.getSourceState());
		}
		return ss;
	}

	public List<State> getInConnectingStates(String name) {
		return getInConnectingStates(getState(name));
	}

	/**
	 * Creates a new end state and adds it to this graph
	 * 
	 * @param name
	 * @return the added end state
	 */
	public State addEndState(String name) {
		State s = getState(name);
		if (s == null)
			s = new State(name);
		getEndStates().add(s);
		return s;
	}

	public List<State> getEndStates() {
		if (endStates == null)
			endStates = new ArrayList<State>();
		return endStates;
	}

	public Transition addtransition(String s_name, String t_name, String expression, Double value) {
		State s1 = getState(s_name);
		State s2 = getState(t_name);
		if (s1 == null)
			s1 = addState(s_name);
		if (s2 == null)
			addState(t_name);
		return addtransition(s1, s2, expression, value);
	}

	public Transition addtransition(State s1, State s2, String expression, Double value) {
		Transition t;
		if (expression == null) {
			assert value != null;
			t = new Transition(s1, s2, value);
		} else
			t = new Transition(s1, s2, expression);
		s1.addOutgoingTransition(t);
		s2.addIncomingTransition(t);
		getAllTransitions().add(t);
		return t;
	}

	@Override
	public String toString() {
		StringBuilder s = new StringBuilder();
		for (Transition t : getAllTransitions()) {
			s.append(t.toString() + "\n");
		}
		return s.toString();
	}

	/**
	 * Find self loops and mark them as single fragments
	 */
	public void markSelfLoops() {
		int fragmentCounter = states.size();
		for (State s : getAllStates()) {
			Set<Transition> outgoingTransitionsS = s.getOutgoingTransitions();
			for (Transition t : outgoingTransitionsS) {
				if ((t.getTargetState() == s) && (outgoingTransitionsS.size() == 1)) {
					s.setVisited(true);
					s.setFragmentNumber(fragmentCounter);
					s.setEndingPoint(true);
					s.setStartingPoint(true);
					fragmentCounter += 1;
				}
			}
		}
	}
}

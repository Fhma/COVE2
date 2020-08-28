package uk.ac.york.fragment.generator.graph;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class Fragment extends Graph{
	private String expression;
	private int fragmentNumber;

	public Fragment () {
		
	}
	
	public boolean isValidFragment() {

		return false;
	}

	public boolean checkValidityOfStates_EntryPoints() {
		// 1) with entry point
		// 1.1 check if one with starting point
		State sp = null;
		for (State s : this.getAllStates()) {
			if (s.getFragmentNumber() == this.fragmentNumber) {
				if (s.isStartingPoint()) {
					if (sp == null)
						sp = s;
					else
						return false;
				}
			}
		}
		// 1.2) check all out transitions only and make sure that points to states of
		// this fragment
		for (Transition t : sp.getOutgoingTransitions()) {
			if (t.getTargetState().getFragmentNumber() != this.fragmentNumber)
				return false;
		}
		return true;
	}

	public boolean checkValidityOfStates_MidPoints() {
		// 2) with mid point
		// 2.1) what are mid points: starting point and end point both false
		// 2.2) check incomings and outgoings and their source and targets states and
		// check if there are having same fragment number
		for (State s : getAllStates()) {
			if (!s.isStartingPoint() && !s.isEndingPoint() && s.getFragmentNumber() == fragmentNumber) {
				List<Transition> ts = s.getIncomingTransitions();
				List<Transition> tt = s.getOutgoingTransitions();
				for (Transition t : ts) {
					if (t.getSourceState().getFragmentNumber() != fragmentNumber)
						return false;
				}
				for (Transition t : tt) {
					if (t.getTargetState().getFragmentNumber() != fragmentNumber)
						return false;
				}
			}
		}
		return true;
	}

	public boolean checkValidityOfStates_EndPoints() {
		// 3) end point
		// 3.1) get all states that has the ending state flag on and check incoming
		// states to have same fragment number of this fragment and
		// outgoings states to have different fragment number and starting point of the
		// same fragment number
		List<State> all_wrongs = null;

		for (State s : getAllStates()) {
			if (s.isEndingPoint() && s.getFragmentNumber() == this.fragmentNumber) {
				List<Transition> ts = s.getIncomingTransitions();
				List<Transition> tt = s.getOutgoingTransitions();
				int transition_size = tt.size();
				for (Transition t : ts) {
					if (t.getSourceState().getFragmentNumber() != this.fragmentNumber) {
						return false;
					}
				}

				// please check onwards
				for (Transition t : tt) {
					//if is true when an outgoing transition points to the same fragment but not to the starting point of the fragment
					if (t.getTargetState().getFragmentNumber() == this.fragmentNumber && !t.getTargetState().isStartingPoint()) {
						all_wrongs.add(s);
						break;
					}
				}
			}
		}
			
		//try to split from here onwards for all invalid states
		for (State s : all_wrongs) {
		
			//Case 1: All outgoing transitions point to the current fragment
			boolean allPointToCurrent = true;
			List<Transition> transitionsToOtherFragment = new ArrayList<>();
			List<Transition> tt = s.getOutgoingTransitions();
			for (Transition t : tt) {
				if (t.getTargetState().getFragmentNumber() != this.fragmentNumber) {
					allPointToCurrent = false;
					transitionsToOtherFragment.add(t);
				}
			}
			//if true
			if (allPointToCurrent)
				s.setEndingPoint(false);
			else {		
				//Case 2: Some outgoing transitions point to the current fragment, some others to outside fragment
				for (Transition t : transitionsToOtherFragment) {
					State sAux = addAuxiliaryState(t);
					//update ending points
					sAux.getIncomingTransitions().get(0).getSourceState().setEndingPoint(false);
					sAux.setEndingPoint(true);
				}
			}
		}
		return true;
	}
	
	
	public State addAuxiliaryState(Transition t) {//s1 -> s2
		//TODO: caveat in case of two transitions having the same starting and ending states
		//t1 : s1 -> s2; t2 : s1 -> s2; 
		//create auxiliary state
		String sAuxName  = "s"+t.getSourceState()+"-"+t.getTargetState();
		State sAux  	 = new State(sAuxName);
		
		//link aux state with original source state through incoming transition
		Transition tInc  = new Transition(t);
		tInc.setTargetState(sAux);//s1 -> s3
		
		//link aux state with original target state through outgoing transition
		Transition tOut  = new Transition(t);
		tOut.setSourceState(sAux);//s3 -> s2
		tOut.setValue(1.0);
		
		//update aux transitions
		sAux.addIncomingTransition(tInc);
		sAux.addOutgoingTransition(tOut);
		
		//update original source state
		State sourceS = t.getSourceState();
		sourceS.addOutgoingTransition(tInc);
		
		//update original target state
		State targetS = t.getTargetState();
		targetS.addIncomingTransition(tOut);
		
		//remove original transition from source and target transition lists
		sourceS.removeOutgoingTransition(t);
		targetS.removeIncomingTransition(t);
		
		return sAux;
	}
	
	
	//TODO: 
	private void removeAuxiliaryState () {
		
	}
}

package uk.ac.york.fragment.generator.graph;

public class Transition {

	private String expression;
	private Double value;
	private State sourceState;
	private State targetState;
	private boolean added;
	private boolean enabled;

	/**
	 * Copy constructor
	 * 
	 * @param transition
	 */
	public Transition(Transition t) {
		this.expression = t.expression;
		this.value = t.value;
		this.added = t.added;
		this.enabled = t.enabled;
		this.sourceState = new State(t.sourceState);
		this.targetState = new State(t.targetState);
	}

	public Transition(State source, State target, String exp) {
		sourceState = source;
		targetState = target;
		expression = exp;
		enabled = true;

		this.sourceState = source;
		this.targetState = target;

	}

	public Transition(State source, State target, Double value) {
		sourceState = source;
		targetState = target;
		this.value = value;
		enabled = true;

		this.sourceState = source;
		this.targetState = target;
	}

	public void setAdded(boolean added) {
		this.added = added;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getExpression() {
		return expression;
	}

	public double getValue() {
		return value;
	}

	public State getSourceState() {
		return sourceState;
	}

	public State getTargetState() {
		return targetState;
	}

	public void updateSourceState(State sourceState) {
		this.sourceState = sourceState;
	}

	public void updateTargetState(State targetState) {
		this.targetState = targetState;
	}

	public boolean isAdded() {
		return added;
	}

	public boolean isEnabled() {
		return enabled;
	}

	@Override
	public String toString() {
		return sourceState.getName() + " " + targetState.getName() + " " + expression;
	}
}

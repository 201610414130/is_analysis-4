package org.sinmem.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Experimentscores entity. @author MyEclipse Persistence Tools
 */

public class Experimentscores implements java.io.Serializable {

	// Fields

	private ExperimentscoresId id;
	private transient SC SC;
	private Set cexperimentses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Experimentscores() {
	}

	/** minimal constructor */
	public Experimentscores(ExperimentscoresId id, SC SC) {
		this.id = id;
		this.SC = SC;
	}

	/** full constructor */
	public Experimentscores(ExperimentscoresId id, SC SC, Set cexperimentses) {
		this.id = id;
		this.SC = SC;
		this.cexperimentses = cexperimentses;
	}

	// Property accessors

	public ExperimentscoresId getId() {
		return this.id;
	}

	public void setId(ExperimentscoresId id) {
		this.id = id;
	}

	public SC getSC() {
		return this.SC;
	}

	public void setSC(SC SC) {
		this.SC = SC;
	}

	public Set getCexperimentses() {
		return this.cexperimentses;
	}

	public void setCexperimentses(Set cexperimentses) {
		this.cexperimentses = cexperimentses;
	}

}
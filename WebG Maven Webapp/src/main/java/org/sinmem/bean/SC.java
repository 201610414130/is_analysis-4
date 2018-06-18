package org.sinmem.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * SC entity. @author MyEclipse Persistence Tools
 */

public class SC implements java.io.Serializable {

	// Fields

	private SCId id;
	private Float score;
	private Set experimentscoreses = new HashSet(0);

	// Constructors

	/** default constructor */
	public SC() {
	}

	/** minimal constructor */
	public SC(SCId id) {
		this.id = id;
	}

	/** full constructor */
	public SC(SCId id, Float score, Set experimentscoreses) {
		this.id = id;
		this.score = score;
		this.experimentscoreses = experimentscoreses;
	}

	// Property accessors

	public SCId getId() {
		return this.id;
	}

	public void setId(SCId id) {
		this.id = id;
	}

	public Float getScore() {
		return this.score;
	}

	public void setScore(Float score) {
		this.score = score;
	}

	public Set getExperimentscoreses() {
		return this.experimentscoreses;
	}

	public void setExperimentscoreses(Set experimentscoreses) {
		this.experimentscoreses = experimentscoreses;
	}

}
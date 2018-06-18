package org.sinmem.bean;

/**
 * Experimentclauses entity. @author MyEclipse Persistence Tools
 */

public class Experimentclauses implements java.io.Serializable {

	// Fields

	private ExperimentclausesId id;
	private String title;
	private String evaluate;
	private Integer num;
	private Float bili;
	private Float score;

	// Constructors

	/** default constructor */
	public Experimentclauses() {
	}

	/** minimal constructor */
	public Experimentclauses(ExperimentclausesId id, String title, String evaluate, Integer num, Float bili) {
		this.id = id;
		this.title = title;
		this.evaluate = evaluate;
		this.num = num;
		this.bili = bili;
	}

	/** full constructor */
	public Experimentclauses(ExperimentclausesId id, String title, String evaluate, Integer num, Float bili,
			Float score) {
		this.id = id;
		this.title = title;
		this.evaluate = evaluate;
		this.num = num;
		this.bili = bili;
		this.score = score;
	}

	// Property accessors

	public ExperimentclausesId getId() {
		return this.id;
	}

	public void setId(ExperimentclausesId id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEvaluate() {
		return this.evaluate;
	}

	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}

	public Integer getNum() {
		return this.num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Float getBili() {
		return this.bili;
	}

	public void setBili(Float bili) {
		this.bili = bili;
	}

	public Float getScore() {
		return this.score;
	}

	public void setScore(Float score) {
		this.score = score;
	}

}
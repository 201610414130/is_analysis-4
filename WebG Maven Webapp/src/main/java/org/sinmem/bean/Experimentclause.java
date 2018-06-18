package org.sinmem.bean;

/**
 * Experimentclause entity. @author MyEclipse Persistence Tools
 */

public class Experimentclause implements java.io.Serializable {

	// Fields

	private String experimentclauseNo;
	private transient Cexperiment cexperiment;
	private String title;
	private Integer num;
	private Float bili;

	// Constructors

	/** default constructor */
	public Experimentclause() {
	}

	/** full constructor */
	public Experimentclause(String experimentclauseNo, Cexperiment cexperiment, String title, Integer num, Float bili) {
		this.experimentclauseNo = experimentclauseNo;
		this.cexperiment = cexperiment;
		this.title = title;
		this.num = num;
		this.bili = bili;
	}

	// Property accessors

	public String getExperimentclauseNo() {
		return this.experimentclauseNo;
	}

	public void setExperimentclauseNo(String experimentclauseNo) {
		this.experimentclauseNo = experimentclauseNo;
	}

	public Cexperiment getCexperiment() {
		return this.cexperiment;
	}

	public void setCexperiment(Cexperiment cexperiment) {
		this.cexperiment = cexperiment;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
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

}
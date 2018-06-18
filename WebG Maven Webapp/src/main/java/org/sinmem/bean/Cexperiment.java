package org.sinmem.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Cexperiment entity. @author MyEclipse Persistence Tools
 */

public class Cexperiment implements java.io.Serializable {

	// Fields

	private String experimentNo;
	private transient Course course;
	private Integer oder;
	private String title;
	private String address;
	private Set experimentscoreses = new HashSet(0);
	private Set experimentclauses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Cexperiment() {
	}

	/** minimal constructor */
	public Cexperiment(String experimentNo, Course course, Integer oder, String title) {
		this.experimentNo = experimentNo;
		this.course = course;
		this.oder = oder;
		this.title = title;
	}

	/** full constructor */
	public Cexperiment(String experimentNo, Course course, Integer oder, String title, String address,
			Set experimentscoreses, Set experimentclauses) {
		this.experimentNo = experimentNo;
		this.course = course;
		this.oder = oder;
		this.title = title;
		this.address = address;
		this.experimentscoreses = experimentscoreses;
		this.experimentclauses = experimentclauses;
	}

	// Property accessors

	public String getExperimentNo() {
		return this.experimentNo;
	}

	public void setExperimentNo(String experimentNo) {
		this.experimentNo = experimentNo;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Integer getOder() {
		return this.oder;
	}

	public void setOder(Integer oder) {
		this.oder = oder;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Set getExperimentscoreses() {
		return this.experimentscoreses;
	}

	public void setExperimentscoreses(Set experimentscoreses) {
		this.experimentscoreses = experimentscoreses;
	}

	public Set getExperimentclauses() {
		return this.experimentclauses;
	}

	public void setExperimentclauses(Set experimentclauses) {
		this.experimentclauses = experimentclauses;
	}

}
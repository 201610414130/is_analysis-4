package org.sinmem.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Courseclass entity. @author MyEclipse Persistence Tools
 */

public class Courseclass implements java.io.Serializable {

	// Fields

	private CourseclassId id;
	private Teacher teacher;
	private Integer number;
	private Integer count;
	private Integer term;
	private Integer time;
	private Set SCs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Courseclass() {
	}

	/** minimal constructor */
	public Courseclass(CourseclassId id, Teacher teacher, Integer number, Integer count, Integer term, Integer time) {
		this.id = id;
		this.teacher = teacher;
		this.number = number;
		this.count = count;
		this.term = term;
		this.time = time;
	}

	/** full constructor */
	public Courseclass(CourseclassId id, Teacher teacher, Integer number, Integer count, Integer term, Integer time,
			Set SCs) {
		this.id = id;
		this.teacher = teacher;
		this.number = number;
		this.count = count;
		this.term = term;
		this.time = time;
		this.SCs = SCs;
	}

	// Property accessors

	public CourseclassId getId() {
		return this.id;
	}

	public void setId(CourseclassId id) {
		this.id = id;
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Integer getCount() {
		return this.count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Integer getTerm() {
		return this.term;
	}

	public void setTerm(Integer term) {
		this.term = term;
	}

	public Integer getTime() {
		return this.time;
	}

	public void setTime(Integer time) {
		this.time = time;
	}

	public Set getSCs() {
		return this.SCs;
	}

	public void setSCs(Set SCs) {
		this.SCs = SCs;
	}

}
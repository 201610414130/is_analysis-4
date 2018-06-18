package org.sinmem.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Clazz entity. @author MyEclipse Persistence Tools
 */

public class Clazz implements java.io.Serializable {

	// Fields

	private String clazzNo;
	private Major major;
	private String clazzName;
	private Integer education;
	private Set students = new HashSet(0);

	// Constructors

	/** default constructor */
	public Clazz() {
	}

	/** minimal constructor */
	public Clazz(String clazzNo, Major major, String clazzName, Integer education) {
		this.clazzNo = clazzNo;
		this.major = major;
		this.clazzName = clazzName;
		this.education = education;
	}

	/** full constructor */
	public Clazz(String clazzNo, Major major, String clazzName, Integer education, Set students) {
		this.clazzNo = clazzNo;
		this.major = major;
		this.clazzName = clazzName;
		this.education = education;
		this.students = students;
	}

	// Property accessors

	public String getClazzNo() {
		return this.clazzNo;
	}

	public void setClazzNo(String clazzNo) {
		this.clazzNo = clazzNo;
	}

	public Major getMajor() {
		return this.major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public String getClazzName() {
		return this.clazzName;
	}

	public void setClazzName(String clazzName) {
		this.clazzName = clazzName;
	}

	public Integer getEducation() {
		return this.education;
	}

	public void setEducation(Integer education) {
		this.education = education;
	}

	public Set getStudents() {
		return this.students;
	}

	public void setStudents(Set students) {
		this.students = students;
	}

}
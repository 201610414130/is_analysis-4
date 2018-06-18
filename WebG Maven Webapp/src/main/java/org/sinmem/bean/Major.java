package org.sinmem.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Major entity. @author MyEclipse Persistence Tools
 */

public class Major implements java.io.Serializable {

	// Fields

	private String majorNo;
	private transient Institute institute;
	private String majorName;
	private Set clazzs = new HashSet(0);
	private Set courses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Major() {
	}

	/** minimal constructor */
	public Major(String majorNo, Institute institute, String majorName) {
		this.majorNo = majorNo;
		this.institute = institute;
		this.majorName = majorName;
	}

	/** full constructor */
	public Major(String majorNo, Institute institute, String majorName, Set clazzs, Set courses) {
		this.majorNo = majorNo;
		this.institute = institute;
		this.majorName = majorName;
		this.clazzs = clazzs;
		this.courses = courses;
	}

	// Property accessors

	public String getMajorNo() {
		return this.majorNo;
	}

	public void setMajorNo(String majorNo) {
		this.majorNo = majorNo;
	}

	public Institute getInstitute() {
		return this.institute;
	}

	public void setInstitute(Institute institute) {
		this.institute = institute;
	}

	public String getMajorName() {
		return this.majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public Set getClazzs() {
		return this.clazzs;
	}

	public void setClazzs(Set clazzs) {
		this.clazzs = clazzs;
	}

	public Set getCourses() {
		return this.courses;
	}

	public void setCourses(Set courses) {
		this.courses = courses;
	}

}
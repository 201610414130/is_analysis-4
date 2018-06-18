package org.sinmem.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Course entity. @author MyEclipse Persistence Tools
 */

public class Course implements java.io.Serializable {

	// Fields

	private String courseNo;
	private transient Major major;
	private String courseName;
	private Integer creditHour;
	private Integer courseHour;
	private String priorCourse;
	private Set cexperiments = new HashSet(0);
	private Set courseclasses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Course() {
	}

	/** minimal constructor */
	public Course(String courseNo, Major major, String courseName, Integer creditHour, Integer courseHour,
			String priorCourse) {
		this.courseNo = courseNo;
		this.major = major;
		this.courseName = courseName;
		this.creditHour = creditHour;
		this.courseHour = courseHour;
		this.priorCourse = priorCourse;
	}

	/** full constructor */
	public Course(String courseNo, Major major, String courseName, Integer creditHour, Integer courseHour,
			String priorCourse, Set cexperiments, Set courseclasses) {
		this.courseNo = courseNo;
		this.major = major;
		this.courseName = courseName;
		this.creditHour = creditHour;
		this.courseHour = courseHour;
		this.priorCourse = priorCourse;
		this.cexperiments = cexperiments;
		this.courseclasses = courseclasses;
	}

	// Property accessors

	public String getCourseNo() {
		return this.courseNo;
	}

	public void setCourseNo(String courseNo) {
		this.courseNo = courseNo;
	}

	public Major getMajor() {
		return this.major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public Integer getCreditHour() {
		return this.creditHour;
	}

	public void setCreditHour(Integer creditHour) {
		this.creditHour = creditHour;
	}

	public Integer getCourseHour() {
		return this.courseHour;
	}

	public void setCourseHour(Integer courseHour) {
		this.courseHour = courseHour;
	}

	public String getPriorCourse() {
		return this.priorCourse;
	}

	public void setPriorCourse(String priorCourse) {
		this.priorCourse = priorCourse;
	}

	public Set getCexperiments() {
		return this.cexperiments;
	}

	public void setCexperiments(Set cexperiments) {
		this.cexperiments = cexperiments;
	}

	public Set getCourseclasses() {
		return this.courseclasses;
	}

	public void setCourseclasses(Set courseclasses) {
		this.courseclasses = courseclasses;
	}

}
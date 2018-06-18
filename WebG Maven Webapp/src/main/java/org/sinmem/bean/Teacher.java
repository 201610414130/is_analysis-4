package org.sinmem.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */

public class Teacher implements java.io.Serializable {

	// Fields

	private String userId;
	private transient Institute institute;
	private String pwd;
	private String name;
	private Integer userType;
	private String gname;
	private String title;
	private String degree;
	private Set courseclasses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Teacher() {
	}

	/** minimal constructor */
	public Teacher(String userId, Institute institute, String name, Integer userType, String title, String degree) {
		this.userId = userId;
		this.institute = institute;
		this.name = name;
		this.userType = userType;
		this.title = title;
		this.degree = degree;
	}

	/** full constructor */
	public Teacher(String userId, Institute institute, String pwd, String name, Integer userType, String gname,
			String title, String degree, Set courseclasses) {
		this.userId = userId;
		this.institute = institute;
		this.pwd = pwd;
		this.name = name;
		this.userType = userType;
		this.gname = gname;
		this.title = title;
		this.degree = degree;
		this.courseclasses = courseclasses;
	}

	// Property accessors

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Institute getInstitute() {
		return this.institute;
	}

	public void setInstitute(Institute institute) {
		this.institute = institute;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getUserType() {
		return this.userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}

	public String getGname() {
		return this.gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDegree() {
		return this.degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public Set getCourseclasses() {
		return this.courseclasses;
	}

	public void setCourseclasses(Set courseclasses) {
		this.courseclasses = courseclasses;
	}

}
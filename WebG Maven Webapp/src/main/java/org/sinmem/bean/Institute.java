package org.sinmem.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Institute entity. @author MyEclipse Persistence Tools
 */

public class Institute implements java.io.Serializable {

	// Fields

	private String instituteNo;
	private String instituteName;
	private String telephone;
	private Set teachers = new HashSet(0);
	private Set admins = new HashSet(0);
	private Set majors = new HashSet(0);

	// Constructors

	/** default constructor */
	public Institute() {
	}

	/** minimal constructor */
	public Institute(String instituteNo, String instituteName, String telephone) {
		this.instituteNo = instituteNo;
		this.instituteName = instituteName;
		this.telephone = telephone;
	}

	/** full constructor */
	public Institute(String instituteNo, String instituteName, String telephone, Set teachers, Set admins, Set majors) {
		this.instituteNo = instituteNo;
		this.instituteName = instituteName;
		this.telephone = telephone;
		this.teachers = teachers;
		this.admins = admins;
		this.majors = majors;
	}

	// Property accessors

	public String getInstituteNo() {
		return this.instituteNo;
	}

	public void setInstituteNo(String instituteNo) {
		this.instituteNo = instituteNo;
	}

	public String getInstituteName() {
		return this.instituteName;
	}

	public void setInstituteName(String instituteName) {
		this.instituteName = instituteName;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Set getTeachers() {
		return this.teachers;
	}

	public void setTeachers(Set teachers) {
		this.teachers = teachers;
	}

	public Set getAdmins() {
		return this.admins;
	}

	public void setAdmins(Set admins) {
		this.admins = admins;
	}

	public Set getMajors() {
		return this.majors;
	}

	public void setMajors(Set majors) {
		this.majors = majors;
	}

}
package org.sinmem.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */

public class Student implements java.io.Serializable {

	// Fields

	private String userId;
	private transient  Clazz clazz;
	private String pwd;
	private String name;
	private Integer userType;
	private String gname;
	private Timestamp updateDate;
	private Set SCs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** minimal constructor */
	public Student(String userId, Clazz clazz, String name, Integer userType) {
		this.userId = userId;
		this.clazz = clazz;
		this.name = name;
		this.userType = userType;
	}

	/** full constructor */
	public Student(String userId, Clazz clazz, String pwd, String name, Integer userType, String gname,
			Timestamp updateDate, Set SCs) {
		this.userId = userId;
		this.clazz = clazz;
		this.pwd = pwd;
		this.name = name;
		this.userType = userType;
		this.gname = gname;
		this.updateDate = updateDate;
		this.SCs = SCs;
	}

	// Property accessors

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Clazz getClazz() {
		return this.clazz;
	}

	public void setClazz(Clazz clazz) {
		this.clazz = clazz;
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

	public Timestamp getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}

	public Set getSCs() {
		return this.SCs;
	}

	public void setSCs(Set SCs) {
		this.SCs = SCs;
	}

}
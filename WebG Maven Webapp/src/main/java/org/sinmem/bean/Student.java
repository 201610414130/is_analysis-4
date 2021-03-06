package org.sinmem.bean;

import java.util.Date;

public class Student extends User{

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column student.userID
	 * @mbggenerated
	 */
	private String userid;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column student.pwd
	 * @mbggenerated
	 */
	private String pwd;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column student.name
	 * @mbggenerated
	 */
	private String name;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column student.userType
	 * @mbggenerated
	 */
	private Integer usertype;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column student.Gname
	 * @mbggenerated
	 */
	private String gname;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column student.updateDate
	 * @mbggenerated
	 */
	private Date updatedate;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column student.clazzNo
	 * @mbggenerated
	 */
	private String clazzno;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column student.userID
	 * @return  the value of student.userID
	 * @mbggenerated
	 */
	public String getUserid() {
		return userid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column student.userID
	 * @param userid  the value for student.userID
	 * @mbggenerated
	 */
	public void setUserid(String userid) {
		this.userid = userid == null ? null : userid.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column student.pwd
	 * @return  the value of student.pwd
	 * @mbggenerated
	 */
	public String getPwd() {
		return pwd;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column student.pwd
	 * @param pwd  the value for student.pwd
	 * @mbggenerated
	 */
	public void setPwd(String pwd) {
		this.pwd = pwd == null ? null : pwd.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column student.name
	 * @return  the value of student.name
	 * @mbggenerated
	 */
	public String getName() {
		return name;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column student.name
	 * @param name  the value for student.name
	 * @mbggenerated
	 */
	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column student.userType
	 * @return  the value of student.userType
	 * @mbggenerated
	 */
	public Integer getUsertype() {
		return usertype;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column student.userType
	 * @param usertype  the value for student.userType
	 * @mbggenerated
	 */
	public void setUsertype(Integer usertype) {
		this.usertype = usertype;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column student.Gname
	 * @return  the value of student.Gname
	 * @mbggenerated
	 */
	public String getGname() {
		return gname;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column student.Gname
	 * @param gname  the value for student.Gname
	 * @mbggenerated
	 */
	public void setGname(String gname) {
		this.gname = gname == null ? null : gname.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column student.updateDate
	 * @return  the value of student.updateDate
	 * @mbggenerated
	 */
	public Date getUpdatedate() {
		return updatedate;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column student.updateDate
	 * @param updatedate  the value for student.updateDate
	 * @mbggenerated
	 */
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column student.clazzNo
	 * @return  the value of student.clazzNo
	 * @mbggenerated
	 */
	public String getClazzno() {
		return clazzno;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column student.clazzNo
	 * @param clazzno  the value for student.clazzNo
	 * @mbggenerated
	 */
	public void setClazzno(String clazzno) {
		this.clazzno = clazzno == null ? null : clazzno.trim();
	}
}
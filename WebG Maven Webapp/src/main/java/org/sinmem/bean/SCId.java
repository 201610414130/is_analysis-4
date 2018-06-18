package org.sinmem.bean;

/**
 * SCId entity. @author MyEclipse Persistence Tools
 */

public class SCId implements java.io.Serializable {

	// Fields

	private Student student;
	private String cclassNo;
	private String courseNo;

	// Constructors

	/** default constructor */
	public SCId() {
	}

	/** full constructor */
	public SCId(Student student, String cclassNo, String courseNo) {
		this.student = student;
		this.cclassNo = cclassNo;
		this.courseNo = courseNo;
	}

	// Property accessors

	public Student getStudent() {
		return this.student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getCclassNo() {
		return this.cclassNo;
	}

	public void setCclassNo(String cclassNo) {
		this.cclassNo = cclassNo;
	}

	public String getCourseNo() {
		return this.courseNo;
	}

	public void setCourseNo(String courseNo) {
		this.courseNo = courseNo;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof SCId))
			return false;
		SCId castOther = (SCId) other;

		return ((this.getStudent() == castOther.getStudent()) || (this.getStudent() != null
				&& castOther.getStudent() != null && this.getStudent().equals(castOther.getStudent())))
				&& ((this.getCclassNo() == castOther.getCclassNo()) || (this.getCclassNo() != null
						&& castOther.getCclassNo() != null && this.getCclassNo().equals(castOther.getCclassNo())))
				&& ((this.getCourseNo() == castOther.getCourseNo()) || (this.getCourseNo() != null
						&& castOther.getCourseNo() != null && this.getCourseNo().equals(castOther.getCourseNo())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getStudent() == null ? 0 : this.getStudent().hashCode());
		result = 37 * result + (getCclassNo() == null ? 0 : this.getCclassNo().hashCode());
		result = 37 * result + (getCourseNo() == null ? 0 : this.getCourseNo().hashCode());
		return result;
	}

}
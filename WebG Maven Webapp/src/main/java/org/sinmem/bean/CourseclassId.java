package org.sinmem.bean;

/**
 * CourseclassId entity. @author MyEclipse Persistence Tools
 */

public class CourseclassId implements java.io.Serializable {

	// Fields

	private Course course;
	private String cclassNo;

	// Constructors

	/** default constructor */
	public CourseclassId() {
	}

	/** full constructor */
	public CourseclassId(Course course, String cclassNo) {
		this.course = course;
		this.cclassNo = cclassNo;
	}

	// Property accessors

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public String getCclassNo() {
		return this.cclassNo;
	}

	public void setCclassNo(String cclassNo) {
		this.cclassNo = cclassNo;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CourseclassId))
			return false;
		CourseclassId castOther = (CourseclassId) other;

		return ((this.getCourse() == castOther.getCourse()) || (this.getCourse() != null
				&& castOther.getCourse() != null && this.getCourse().equals(castOther.getCourse())))
				&& ((this.getCclassNo() == castOther.getCclassNo()) || (this.getCclassNo() != null
						&& castOther.getCclassNo() != null && this.getCclassNo().equals(castOther.getCclassNo())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getCourse() == null ? 0 : this.getCourse().hashCode());
		result = 37 * result + (getCclassNo() == null ? 0 : this.getCclassNo().hashCode());
		return result;
	}

}
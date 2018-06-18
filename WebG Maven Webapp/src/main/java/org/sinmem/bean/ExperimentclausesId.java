package org.sinmem.bean;

/**
 * ExperimentclausesId entity. @author MyEclipse Persistence Tools
 */

public class ExperimentclausesId implements java.io.Serializable {

	// Fields

	private Cexperiments cexperiments;
	private String experimentclauseNo;

	// Constructors

	/** default constructor */
	public ExperimentclausesId() {
	}

	/** full constructor */
	public ExperimentclausesId(Cexperiments cexperiments, String experimentclauseNo) {
		this.cexperiments = cexperiments;
		this.experimentclauseNo = experimentclauseNo;
	}

	// Property accessors

	public Cexperiments getCexperiments() {
		return this.cexperiments;
	}

	public void setCexperiments(Cexperiments cexperiments) {
		this.cexperiments = cexperiments;
	}

	public String getExperimentclauseNo() {
		return this.experimentclauseNo;
	}

	public void setExperimentclauseNo(String experimentclauseNo) {
		this.experimentclauseNo = experimentclauseNo;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ExperimentclausesId))
			return false;
		ExperimentclausesId castOther = (ExperimentclausesId) other;

		return ((this.getCexperiments() == castOther.getCexperiments()) || (this.getCexperiments() != null
				&& castOther.getCexperiments() != null && this.getCexperiments().equals(castOther.getCexperiments())))
				&& ((this.getExperimentclauseNo() == castOther.getExperimentclauseNo())
						|| (this.getExperimentclauseNo() != null && castOther.getExperimentclauseNo() != null
								&& this.getExperimentclauseNo().equals(castOther.getExperimentclauseNo())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getCexperiments() == null ? 0 : this.getCexperiments().hashCode());
		result = 37 * result + (getExperimentclauseNo() == null ? 0 : this.getExperimentclauseNo().hashCode());
		return result;
	}

}
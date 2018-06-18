package org.sinmem.bean;

/**
 * ExperimentscoresId entity. @author MyEclipse Persistence Tools
 */

public class ExperimentscoresId implements java.io.Serializable {

	// Fields

	private String experimentscoresNo;
	private Cexperiment cexperiment;

	// Constructors

	/** default constructor */
	public ExperimentscoresId() {
	}

	/** full constructor */
	public ExperimentscoresId(String experimentscoresNo, Cexperiment cexperiment) {
		this.experimentscoresNo = experimentscoresNo;
		this.cexperiment = cexperiment;
	}

	// Property accessors

	public String getExperimentscoresNo() {
		return this.experimentscoresNo;
	}

	public void setExperimentscoresNo(String experimentscoresNo) {
		this.experimentscoresNo = experimentscoresNo;
	}

	public Cexperiment getCexperiment() {
		return this.cexperiment;
	}

	public void setCexperiment(Cexperiment cexperiment) {
		this.cexperiment = cexperiment;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ExperimentscoresId))
			return false;
		ExperimentscoresId castOther = (ExperimentscoresId) other;

		return ((this.getExperimentscoresNo() == castOther.getExperimentscoresNo())
				|| (this.getExperimentscoresNo() != null && castOther.getExperimentscoresNo() != null
						&& this.getExperimentscoresNo().equals(castOther.getExperimentscoresNo())))
				&& ((this.getCexperiment() == castOther.getCexperiment())
						|| (this.getCexperiment() != null && castOther.getCexperiment() != null
								&& this.getCexperiment().equals(castOther.getCexperiment())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getExperimentscoresNo() == null ? 0 : this.getExperimentscoresNo().hashCode());
		result = 37 * result + (getCexperiment() == null ? 0 : this.getCexperiment().hashCode());
		return result;
	}

}
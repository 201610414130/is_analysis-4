package org.sinmem.bean;

/**
 * CexperimentsId entity. @author MyEclipse Persistence Tools
 */

public class CexperimentsId implements java.io.Serializable {

	// Fields

	private Experimentscores experimentscores;

	// Constructors

	/** default constructor */
	public CexperimentsId() {
	}

	/** full constructor */
	public CexperimentsId(Experimentscores experimentscores) {
		this.experimentscores = experimentscores;
	}

	// Property accessors

	public Experimentscores getExperimentscores() {
		return this.experimentscores;
	}

	public void setExperimentscores(Experimentscores experimentscores) {
		this.experimentscores = experimentscores;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CexperimentsId))
			return false;
		CexperimentsId castOther = (CexperimentsId) other;

		return ((this.getExperimentscores() == castOther.getExperimentscores())
				|| (this.getExperimentscores() != null && castOther.getExperimentscores() != null
						&& this.getExperimentscores().equals(castOther.getExperimentscores())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getExperimentscores() == null ? 0 : this.getExperimentscores().hashCode());
		return result;
	}

}
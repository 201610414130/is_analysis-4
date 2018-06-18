package org.sinmem.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Cexperiments entity. @author MyEclipse Persistence Tools
 */

public class Cexperiments implements java.io.Serializable {

	// Fields

	private CexperimentsId id;
	private String userId;
	private Integer oder;
	private String title;
	private String info;
	private String address;
	private Timestamp date;
	private Float score;
	private Set experimentclauseses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Cexperiments() {
	}

	/** minimal constructor */
	public Cexperiments(CexperimentsId id, String userId, Integer oder, String title, String info) {
		this.id = id;
		this.userId = userId;
		this.oder = oder;
		this.title = title;
		this.info = info;
	}

	/** full constructor */
	public Cexperiments(CexperimentsId id, String userId, Integer oder, String title, String info, String address,
			Timestamp date, Float score, Set experimentclauseses) {
		this.id = id;
		this.userId = userId;
		this.oder = oder;
		this.title = title;
		this.info = info;
		this.address = address;
		this.date = date;
		this.score = score;
		this.experimentclauseses = experimentclauseses;
	}

	// Property accessors

	public CexperimentsId getId() {
		return this.id;
	}

	public void setId(CexperimentsId id) {
		this.id = id;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Integer getOder() {
		return this.oder;
	}

	public void setOder(Integer oder) {
		this.oder = oder;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getInfo() {
		return this.info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Timestamp getDate() {
		return this.date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public Float getScore() {
		return this.score;
	}

	public void setScore(Float score) {
		this.score = score;
	}

	public Set getExperimentclauseses() {
		return this.experimentclauseses;
	}

	public void setExperimentclauseses(Set experimentclauseses) {
		this.experimentclauseses = experimentclauseses;
	}

}
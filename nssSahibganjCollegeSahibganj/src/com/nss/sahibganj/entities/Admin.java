package com.nss.sahibganj.entities;

import java.sql.Timestamp;

public class Admin {
	private String si;
	private String alumniId;
	private String aname;
	private String amobile;
	private String aemail;
	private String adeptt;
	private String anssunit;
	private String agender;
	private String abg;
	private String aprofile;
	private Timestamp adateTime;

	public Admin(String alumniId) {
		super();
		this.alumniId = alumniId;
	}

	public Admin() {
		// TODO Auto-generated constructor stub
	}

	public Admin(String alumniId, String aname, String aemail, String amobile, String adeptt, String anssunit,
			String agender, String abg, String aprofile) {
		super();
		this.alumniId = alumniId;
		this.aname = aname;
		this.aemail = aemail;
		this.amobile = amobile;

		this.adeptt = adeptt;
		this.anssunit = anssunit;
		this.agender = agender;
		this.abg = abg;
		this.aprofile = aprofile;
	}

	public String getAlumniId() {
		return alumniId;
	}

	public void setAlumniId(String alumniId) {
		this.alumniId = alumniId;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getAmobile() {
		return amobile;
	}

	public void setAmobile(String amobile) {
		this.amobile = amobile;
	}

	public String getAemail() {
		return aemail;
	}

	public void setAemail(String aemail) {
		this.aemail = aemail;
	}

	public String getAdeptt() {
		return adeptt;
	}

	public void setAdeptt(String adeptt) {
		this.adeptt = adeptt;
	}

	public String getAnssunit() {
		return anssunit;
	}

	public void setAnssunit(String anssunit) {
		this.anssunit = anssunit;
	}

	public String getAgender() {
		return agender;
	}

	public void setAgender(String agender) {
		this.agender = agender;
	}

	public String getAbg() {
		return abg;
	}

	public void setAbg(String abg) {
		this.abg = abg;
	}

	public String getAprofile() {
		return aprofile;
	}

	public void setAprofile(String aprofile) {
		this.aprofile = aprofile;
	}

	public Timestamp getAdateTime() {
		return adateTime;
	}

	public void setAdateTime(Timestamp adateTime) {
		this.adateTime = adateTime;
	}

	public String getSi() {
		return si;
	}

	public void setSi(String si) {
		this.si = si;
	}

}

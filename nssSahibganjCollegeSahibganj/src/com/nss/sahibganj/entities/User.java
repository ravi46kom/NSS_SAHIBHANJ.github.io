package com.nss.sahibganj.entities;

import java.io.FileInputStream;
import java.sql.Timestamp;

public class User {
	private int id;
	private String name;
	private String mobile;
	private String email;
	private String deptt;
	private String csession;
	private String nssunit;
	private String gender;
	private String bg;
	private String password;
	private String profile;
	private Timestamp dateTime;

	public User(int id, String name, String mobile, String email, String deptt, String csession, String nssunit,
			String gender, String bg, String profile, Timestamp dateTime) {
		super();
		this.id = id;
		this.name = name;
		this.mobile = mobile;
		this.email = email;
		this.deptt = deptt;
		this.csession = csession;
		this.nssunit = nssunit;
		this.gender = gender;
		this.bg = bg;
		this.profile = profile;
		this.dateTime = dateTime;
	}

	public User(String name, String mobile, String email, String deptt, String csession, String nssunit, String gender,
			String bg, String password) {
		super();
		this.name = name;
		this.mobile = mobile;
		this.email = email;
		this.deptt = deptt;
		this.csession = csession;
		this.nssunit = nssunit;
		this.gender = gender;
		this.bg = bg;
		this.password = password;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDeptt() {
		return deptt;
	}

	public void setDeptt(String deptt) {
		this.deptt = deptt;
	}

	public String getCsession() {
		return csession;
	}

	public void setCsession(String csession) {
		this.csession = csession;
	}

	public String getNssunit() {
		return nssunit;
	}

	public void setNssunit(String nssunit) {
		this.nssunit = nssunit;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBg() {
		return bg;
	}

	public void setBg(String bg) {
		this.bg = bg;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public Timestamp getDateTime() {
		return dateTime;
	}

	public void setDateTime(Timestamp dateTime) {
		this.dateTime = dateTime;
	}

	public User(int id, String name, String mobile, String email, String deptt, String csession, String nssunit,
			String gender, String bg, String password, String profile, Timestamp dateTime) {
		super();
		this.id = id;
		this.name = name;
		this.mobile = mobile;
		this.email = email;
		this.deptt = deptt;
		this.csession = csession;
		this.nssunit = nssunit;
		this.gender = gender;
		this.bg = bg;
		this.password = password;
		this.profile = profile;
		this.dateTime = dateTime;
	}

	public User(String email, String password) {
		// TODO Auto-generated constructor stub
	}

}

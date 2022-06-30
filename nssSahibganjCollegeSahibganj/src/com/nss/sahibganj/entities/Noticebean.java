package com.nss.sahibganj.entities;

public class Noticebean {
	private int si;
	private String notices;

	public Noticebean() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public Noticebean(int si) {
		super();
		this.si = si;
	}




	public Noticebean(int si, String notices) {
		super();
		this.si = si;
		this.notices = notices;
	}




	public int getSi() {
		return si;
	}

	public void setSi(int si) {
		this.si = si;
	}

	public String getNotices() {
		return notices;
	}

	public void setNotices(String notices) {
		this.notices = notices;
	}

}

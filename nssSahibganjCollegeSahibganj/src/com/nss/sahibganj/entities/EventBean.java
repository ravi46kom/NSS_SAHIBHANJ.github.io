package com.nss.sahibganj.entities;

import java.io.FileInputStream;

public class EventBean {
	private int si;
	private int id;
	private String events;
	private String Slide1;
	private String Slide2;
	private String Slide3;
	private String Slide4;
	private String caption;
	private String textarea;
	private String photos;

	public EventBean(String photos, String caption, String textarea) {
		super();
		this.caption = caption;
		this.textarea = textarea;
		this.photos = photos;
	}

	
	public String getSlide4() {
		return Slide4;
	}


	public void setSlide4(String slide4) {
		Slide4 = slide4;
	}


	public String getCaption() {
		return caption;
	}


	public void setCaption(String caption) {
		this.caption = caption;
	}


	public String getTextarea() {
		return textarea;
	}


	public void setTextarea(String textarea) {
		this.textarea = textarea;
	}


	public String getPhotos() {
		return photos;
	}


	public void setPhotos(String photos) {
		this.photos = photos;
	}


	public EventBean(int si, String events) {
		super();
		this.si = si;
		this.events = events;
	}

	public EventBean() {
		// TODO Auto-generated constructor stub
	}

	public int getSi() {
		return si;
	}

	public void setSi(int si) {
		this.si = si;
	}

	public String getEvents() {
		return events;
	}

	public void setEvents(String events) {
		this.events = events;
	}

	

	/**
	 * CONSTRUCTOR OOF sLIDES
	 * 
	 * @param slide1
	 * @param slide2
	 * @param slide3
	 */
	public EventBean(int id, String slide1, String slide2, String slide3, String slide4) {
		super();
		Slide1 = slide1;
		Slide2 = slide2;
		Slide3 = slide3;
		Slide3 = slide4;
	}
	

	/**
	 * @param slide1
	 * @param slide2
	 * @param slide3
	 */
	public EventBean(String slide1, String slide2, String slide3, String slide4) {
		super();
		Slide1 = slide1;
		Slide2 = slide2;
		Slide3 = slide3;
	}

	// gETTERS SETTERS FOR SLIDES
	public String getSlide1() {
		return Slide1;
	}

	public String getSlide2() {
		return Slide2;
	}

	public void setSlide2(String slide2) {
		Slide2 = slide2;
	}

	public String getSlide3() {
		return Slide3;
	}

	public void setSlide3(String slide3) {
		Slide3 = slide3;
	}
	public void setSlide1(String slide1) {
		Slide1 = slide1;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}

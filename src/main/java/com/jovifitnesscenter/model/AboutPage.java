package com.jovifitnesscenter.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "about")
public class AboutPage {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int sn;
	@Column
	private String name;
	@Column
	private String facebook;
	@Column
	private String instagram;
	@Column
	private String about;
	@Column
	private String fileName;
	@Column
	private String date;
	
	public AboutPage() {
		
	}

	public AboutPage(String name, String facebook, String instagram, String about, String fileName, String date) {
		super();
		this.name = name;
		this.facebook = facebook;
		this.instagram = instagram;
		this.about = about;
		this.fileName = fileName;
		this.date = date;
	}

	public int getSn() {
		return sn;
	}

	public void setSn(int sn) {
		this.sn = sn;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getInstagram() {
		return instagram;
	}

	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
}

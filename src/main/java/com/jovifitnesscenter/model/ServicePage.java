package com.jovifitnesscenter.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "services")
public class ServicePage {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int sn;
	@Column
	private String sname;
	@Column
	private String iname; 
	@Column
	private String about;
	@Column
	private String fileName; 
	@Column
	private String date;
		
		
	public ServicePage() {
		
	}


	public ServicePage(String sname, String iname, String about, String fileName, String date) {
		super();
		this.sname = sname;
		this.iname = iname;
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


	public String getSname() {
		return sname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}


	public String getIname() {
		return iname;
	}


	public void setIname(String iname) {
		this.iname = iname;
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

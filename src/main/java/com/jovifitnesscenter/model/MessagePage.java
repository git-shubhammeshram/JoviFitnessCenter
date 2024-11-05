package com.jovifitnesscenter.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "message")
public class MessagePage {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int sn;
	@Column
	private String name;
	@Column
	private String email;
	@Column
	private String message;
	@Column
	private String date;
	
	
	public MessagePage() {
		
	}


	public MessagePage(String name, String email, String message, String date) {
		super();
		this.name = name;
		this.email = email;
		this.message = message;
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


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	
}

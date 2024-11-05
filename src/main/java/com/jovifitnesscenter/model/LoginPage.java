package com.jovifitnesscenter.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "adminlogin")
public class LoginPage {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int sn;
	@Column
	private String username;
	@Column
	private String password;
	
	public LoginPage() {
		
	}

	public LoginPage(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public int getSn() {
		return sn;
	}

	public void setSn(int sn) {
		this.sn = sn;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}

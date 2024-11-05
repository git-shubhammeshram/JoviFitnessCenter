package com.jovifitnesscenter.validation;

public class DataValidation {

	private String result;

	public String inquiryValidation(String name, String email, String phone, String message) {

		int n_len = name.length();
		int e_len = email.length();
		int p_len = phone.length();
		int m_len = message.length();

		if (n_len < 2 || n_len > 25) {
			result = "Invalid Name";
		} else if (e_len < 2 || e_len > 30) {
			result = "Invalid Email";
		} else if (p_len < 10 || p_len > 12) {
			result = "Invalid Phone";
		} else if (m_len < 2 || m_len > 250) {
			result = "Invalid Message";
		} else {
			result = "Valid";
		}

		return result;

	}

	public String changePasswordValidation(String npasssword, String cpassword) {

		int n_len = npasssword.length();
		int e_len = cpassword.length();

		if (n_len < 2 || n_len > 25) {
			result = "Invalid Username";
		} else if (e_len < 2 || e_len > 25) {
			result = "Invalid Password";
		} else {
			result = "Valid";
		}

		return result;

	}

	public String messageValidation(String name, String email, String message) {

		int n_len = name.length();
		int e_len = email.length();
		int m_len = message.length();

		if (n_len < 2 || n_len > 25) {
			result = "Invalid Name";
		} else if (e_len < 2 || e_len > 30) {
			result = "Invalid Email";
		}

		else if (m_len < 2 || m_len > 250) {
			result = "Invalid Message";
		} else {
			result = "Valid";
		}

		return result;

	}

}

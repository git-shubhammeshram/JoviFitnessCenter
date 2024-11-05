package com.jovifitnesscenter.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jovifitnesscenter.dao.LoginDao;
import com.jovifitnesscenter.model.LoginPage;
import com.jovifitnesscenter.validation.DataValidation;

@Controller
public class Login {

	@Autowired
	private LoginDao ld;

	@RequestMapping("login")
	public void login(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();

		String username = req.getParameter("username");
		String password = req.getParameter("password");

		List<LoginPage> rows = ld.read(username, password);
		Iterator<LoginPage> itr = rows.iterator();
		
		if (itr.hasNext()) {
			session.setAttribute("login", "Login Successfully");
			res.sendRedirect("admin.jsp");
		} else {
			session.setAttribute("msg", "Invalid credentials");
			res.sendRedirect("login.jsp");
		}

	}

	@RequestMapping("changepassword")
	public void updateLogin(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();

		String npassword = req.getParameter("npass");
		String cpassword = req.getParameter("cpass");

		if (npassword.equals(cpassword)) {

			String result = new DataValidation().changePasswordValidation(npassword, cpassword);
			if (result.equals("Valid")) {
				int rows = ld.addNewPassword(cpassword);
				if (rows == 1) {
					session.setAttribute("msg", "Password Changed!!!");
					res.sendRedirect("admin.jsp");
				} else {
					session.setAttribute("msg", "Check Credentilas!!!");
					res.sendRedirect("admin.jsp");
				}
			} else {
				session.setAttribute("msg", "Something Went Wrong!!!");
				res.sendRedirect("admin.jsp");
			}
		}

	}

	@RequestMapping("logout")
	public void logout(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();
		session.removeAttribute("login");
		res.sendRedirect("login.jsp");
	}
}

package com.jovifitnesscenter.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jovifitnesscenter.dao.MembershipInquiryDao;
import com.jovifitnesscenter.model.MembershipInquiryPage;
import com.jovifitnesscenter.validation.DataValidation;

@Controller
public class MembershipInquiry {
	
	

	@Autowired
	private MembershipInquiryDao mid;

	@RequestMapping("membership")
	public void getMembershipInquiry(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String message = req.getParameter("message");
		
		int count = mid.countInquiry();
		System.out.println(count);

		String result = new DataValidation().inquiryValidation(name, email, phone, message);

		if (result.equals("Valid")) {

			MembershipInquiryPage mip = mid
					.save(new MembershipInquiryPage(name, email, phone, message, LocalDateTime.now().toString()));

			if (mip != null) {
				session.setAttribute("msg", "Inquiry Submitted");
				res.sendRedirect("index.jsp");

			} else {
				session.setAttribute("msg", "Something Went Wrong");
				res.sendRedirect("index.jsp");
			}
		} else {
			session.setAttribute("msg", result);
			res.sendRedirect("index.jsp");
		}
	}

	@RequestMapping("delete")
	public void deleteInquiry(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();

		String sn = req.getParameter("sn");

		mid.deleteById(Integer.parseInt(sn));

		session.setAttribute("msg", "Deleted!!!");
		res.sendRedirect("read-inquiry.jsp");

	}

}

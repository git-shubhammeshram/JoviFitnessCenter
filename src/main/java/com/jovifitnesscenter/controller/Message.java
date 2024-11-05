package com.jovifitnesscenter.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jovifitnesscenter.dao.MessageDao;
import com.jovifitnesscenter.model.MessagePage;
import com.jovifitnesscenter.validation.DataValidation;

@Controller
public class Message {

	@Autowired
	private MessageDao md;
	
	@RequestMapping("message")
	public void readMessage(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		HttpSession session = req.getSession();
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String message = req.getParameter("message");
		
		String msg = new DataValidation().messageValidation(name,email,message);
		if(msg.equals("Valid")) {
			MessagePage mm = md.save(new MessagePage(name, email, message, LocalDateTime.now().toString()));
			if(mm!=null) {
				session.setAttribute("msg", "Message Send Successfully");
				res.sendRedirect("index.jsp");
			}
			else {
				session.setAttribute("msg", "Something Went Wrong");
				res.sendRedirect("index.jsp");
			}
			
		}
		else {
			session.setAttribute("msg", msg);
			res.sendRedirect("index.jsp");
		}
	}
	
	@RequestMapping("deletemessage")
	public void deleteMessage(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();

		String sn = req.getParameter("sn");

		md.deleteById(Integer.parseInt(sn));

		session.setAttribute("msg", "Deleted!!!");
		res.sendRedirect("read-message.jsp");

	}

}

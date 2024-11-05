package com.jovifitnesscenter.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.jovifitnesscenter.dao.SerivesDao;
import com.jovifitnesscenter.fileio.AboutIo;
import com.jovifitnesscenter.fileio.ServiceIo;
import com.jovifitnesscenter.model.ServicePage;

@Controller
public class Services {

	@Autowired
	private SerivesDao sd;

	@RequestMapping("uploadservice")
	public void insertService(HttpServletRequest req, HttpServletResponse res, @RequestParam("file") MultipartFile mf)
			throws IOException {

		HttpSession session = req.getSession();

		String sname = req.getParameter("sname");
		String iname = req.getParameter("iname");
		String about = req.getParameter("about");
		String file = mf.getOriginalFilename();

		String date = LocalDateTime.now().toString();
		String reFile = date + file;
		String[] split = reFile.split(":");
		String fileName = split[0] + split[1] + split[2];

		ServicePage sp = sd.save(new ServicePage(sname, iname, about, fileName, date));
		if (sp != null) {

			String realPath = req.getServletContext().getRealPath("images/services") + File.separator + fileName;
			String result = new ServiceIo().writeService(realPath, fileName, mf);
			if (result.equals("Saved")) {
				session.setAttribute("msg", "File Uploaded");
				res.sendRedirect("uploadservices.jsp");
			} else {
				session.setAttribute("msg", "Something Went Wrong");
				res.sendRedirect("uploadservices.jsp");
			}
		} else {
			session.setAttribute("msg", "Wrong");
			res.sendRedirect("uploadservices.jsp");
		}

	}
	
	@RequestMapping("deleteservice")
	public void deleteService(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();

		String sn = req.getParameter("sn");

		sd.deleteById(Integer.parseInt(sn));

		session.setAttribute("msg", "Deleted!!!");
		res.sendRedirect("read-inquiry.jsp");

	}


}

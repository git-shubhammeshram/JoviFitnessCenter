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

import com.jovifitnesscenter.dao.AboutDao;
import com.jovifitnesscenter.fileio.AboutIo;
import com.jovifitnesscenter.model.AboutPage;

@Controller
public class About {

	@Autowired
	private AboutDao ad;

	@RequestMapping("uploadabout")
	public void insertAbout(HttpServletRequest req, HttpServletResponse res, @RequestParam("file")MultipartFile mf) throws IOException {

		HttpSession session = req.getSession();

		String name = req.getParameter("name");
		String facebook = req.getParameter("facebook");
		String instagram = req.getParameter("instagram");
		String about = req.getParameter("about");
		String file = mf.getOriginalFilename();
		
		String date = LocalDateTime.now().toString();
		String reFile = date+file;
		String[] split = reFile.split(":");
		String fileName = split[0]+split[1]+split[2];
		
		AboutPage ap = ad.save(new AboutPage(name, facebook, instagram, about, fileName, date));
		if(ap!=null) {
			
			String realPath = req.getServletContext().getRealPath("images/instructors")+File.separator+fileName;
			String result = new AboutIo().writeAbout(realPath,fileName,mf);
			if(result.equals("Saved")) {
				session.setAttribute("msg", "File Uploaded");
				res.sendRedirect("uploadabout.jsp");
			}
			else {
				session.setAttribute("msg", "Something Went Wrong");
				res.sendRedirect("uploadabout.jsp");
			}
		}
		else {
			session.setAttribute("msg", "Wrong");
			res.sendRedirect("uploadabout.jsp");
		}


		
	}
	
	@RequestMapping("deleteabout")
	public void deleteInquiry(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();

		String sn = req.getParameter("sn");

		ad.deleteById(Integer.parseInt(sn));

		session.setAttribute("msg", "Deleted!!!");
		res.sendRedirect("read-inquiry.jsp");

	}

}

package com.jovifitnesscenter.fileio;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.web.multipart.MultipartFile;

public class AboutIo {

	private FileOutputStream fos;
	private InputStream is;
	private String result;
	@SuppressWarnings("finally")
	public String writeAbout(String realPath, String fileName, MultipartFile mf) throws IOException {
		
		try {
			
			is = mf.getInputStream();
			byte[] b = new byte[is.available()];
			is.read(b);
			
			fos = new FileOutputStream(realPath);
			fos.write(b);
			
			result = "Saved";
		} catch (Exception e) {
			result = "Failed";
			e.printStackTrace();
		}
		finally {
			fos.close();
			is.close();
			return result;
		}
		
	}

	
}

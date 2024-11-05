package com.jovifitnesscenter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.jovifitnesscenter.dao.LoginDao;

@Component
public class TableCreationRunner implements CommandLineRunner {

	@Autowired
	private LoginDao ld;
	
	@Override
	public void run(String... args) throws Exception {
		long count = ld.count();
		if(count == 0) {
			int Auth = this.ld.insert("9699576009", "admin");
		}
		
	}
	
	
}

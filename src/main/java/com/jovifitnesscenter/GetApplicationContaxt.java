package com.jovifitnesscenter;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

@Component
public class GetApplicationContaxt implements ApplicationContextAware {

	public static ApplicationContext applicationContext;
	
	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		
		this. applicationContext = applicationContext;
	}
	
	public static ApplicationContext setApplicationContext() {
		
		return  applicationContext;
	}

}

package com.test.build;

import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TvMAIN {

	public static void main(String[] args) {
		
		GenericApplicationContext factory = new 
				GenericXmlApplicationContext("applicationContext.xml");
		
		TV tv = (TV) factory.getBean("tv2");
		
		tv.powerOff();
		tv.powerOn();
		System.out.println("tv : " + tv);

	}

}

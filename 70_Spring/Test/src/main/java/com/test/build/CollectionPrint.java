package com.test.build;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionPrint {

	public static void main(String[] args) {
		List<String> list;
		
		GenericApplicationContext factory = new 
				GenericXmlApplicationContext("applicationContext.xml");
		
		
		CollectionInter inter = (CollectionInter) factory.getBean("Collection");
		list = inter.getAddrlist();
		
		for(String str : list) {
			System.out.println(str);
		}
		
		
		Map<String,String> map = inter.getMap();
		
			System.out.println(map.keySet());
			
			
		Iterator<String> itor = map.keySet().iterator();
		
		while(itor.hasNext()) {
			System.out.println(map.get(itor.next()));
		}



	}

}

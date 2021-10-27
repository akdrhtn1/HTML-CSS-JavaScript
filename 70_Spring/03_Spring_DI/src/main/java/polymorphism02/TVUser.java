package polymorphism02;

import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {

	public static void main(String[] args) {
		System.out.println("--- 스프링 컨테이너 구동전 ---");
		//1. 스프링 컨테이너 구동(스프링 설정 파일 읽어서)
		GenericXmlApplicationContext factory = 
				new GenericXmlApplicationContext("applicationContext_02.xml");
		
		System.out.println("--- 스프링 컨테이너 구동후 ---");
		
		//2. 스프링 컨테이너 사용 : 생성된 객체 요청(lookup)
		System.out.println("-- tv 요청 사용 ---");
//		TV tv = (TV) factory.getBean("tv1");
//		tv.powerOn();
//		tv.powerOff();
//		tv.volumUp();
//		tv.volumDown();
		
		
		TV tv = (TV) factory.getBean("tv2Samsung2");
		tv.powerOn();
		tv.powerOff();
		tv.volumUp();
		tv.volumDown();
		System.out.println(tv.toString());
		
		
		
		factory.close();
	}

}

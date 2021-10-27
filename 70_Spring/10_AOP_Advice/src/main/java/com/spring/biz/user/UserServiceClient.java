package com.spring.biz.user;



import org.springframework.context.support.GenericXmlApplicationContext;


public class UserServiceClient {
	public static void main(String[] args) {
		
		
		System.out.println("--- 스프링 컨테이너 구동전 ---");
		//1. 스프링 컨테이너 구동(스프링 설정 파일 읽어서)
		GenericXmlApplicationContext container = 
				new GenericXmlApplicationContext("applicationContext_after-returning.xml");
		
		System.out.println("--- 스프링 컨테이너 구동후 ---");
		
		UserService userService = (UserService) container.getBean("userService");
		
		UserVO vo = new UserVO();
		vo.setId("user1");
		vo.setPassword("user1");
		
		UserVO user = userService.getUser(vo);
		
		System.out.println("user : " + user);

		//2. 스프링 컨테이너 사용 : 생성된 객체 요청(lookup)

		
		
		container.close();

	}
}

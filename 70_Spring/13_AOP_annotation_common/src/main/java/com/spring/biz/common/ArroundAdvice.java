package com.spring.biz.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

//(실습) AOP관련 어노테이션 설정

@Service
@Aspect
public class ArroundAdvice {

	
	
	@Around("PointcutCommon.allPointcut()")
	public Object aroundLog(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("[Around] 실행전 로그");
		Object returnObj = pjp.proceed();
		System.out.println("[Around] 실행후 로그");
		
		return returnObj;
	}
}

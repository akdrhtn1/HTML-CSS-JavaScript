package di_collection;

import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import org.springframework.context.support.GenericXmlApplicationContext;



public class CollectionBeanClient {

	public static void main(String[] args) {
		
		//2. 스프링 컨테이너 사용 : 생성된 객체 요청(lookup)
		
		
		GenericXmlApplicationContext factory = 
				new GenericXmlApplicationContext("applicationContext.xml");
		
		System.out.println("-- 스프링 컨테이너 구동 후 --");
		
		
		System.out.println("-- 객체 요청전 ---");
		CollectionBean bean = (CollectionBean) factory.getBean("collectionBean");
		
		System.out.println("-- 객체 요청후 ---");
		System.out.println("-- List 타입 --");
		System.out.println("bean :" +  bean);
		
		List<String> addressList = bean.getAddressList();
		
		for(String str : addressList) {
			System.out.println(str);
		}
		
		System.out.println("-----------");
		System.out.println("--- Set 타입 ---");
		Set<String> addressSet = bean.getAddressSet();
		

		for(String str : addressSet) {
			System.out.println(str);
		}
		
		System.out.println("-- 스프링 컨테이너 사용 후 종료 ---");
		
		Map<String, String> addressMap = bean.getAddressMap();
		
		System.out.println("addressMap : " + addressMap);
		
		Properties addressProp = bean.getAddressProp();
		
		System.out.println("addressProp : " + addressProp);
		
		factory.close();

	}

}

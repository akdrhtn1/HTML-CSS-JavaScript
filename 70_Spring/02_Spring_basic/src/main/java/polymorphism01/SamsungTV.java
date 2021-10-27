package polymorphism01;

public class SamsungTV implements TV{

	
	public SamsungTV() {
		System.out.println("생성자 생성");
		
	}
	@Override
	public void powerOn() {
		System.out.println("삼성TV-켜짐");
		
	}

	@Override
	public void powerOff() {
		System.out.println("삼성TV-꺼짐");
		
	}

	@Override
	public void volumUp() {
		System.out.println("삼성TV-소리크게");
		
	}

	@Override
	public void volumDown() {
		System.out.println("삼성TV-소리작게");
		
	}
	
	
	
}

package polymorphism01;

public class SamsungTV implements TV{

	private SonySpeacker speaker;
	
	public SamsungTV() {
		System.out.println("생성자 생성");
		//필드 SonySpeaker에 객체 주입
		speaker = new SonySpeacker();
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
		speaker.volumnUp();
		
	}

	@Override
	public void volumDown() {
		System.out.println("삼성TV-소리작게");
		speaker.volumnDown();
	}
	
	public void initMethod() {
		System.out.println("삼성TV - initMethod() 실행");
	}
	
	public void destroyMethod() {
		System.out.println("삼성TV - destroyMethod() 실행");
	}
	
	
	
}

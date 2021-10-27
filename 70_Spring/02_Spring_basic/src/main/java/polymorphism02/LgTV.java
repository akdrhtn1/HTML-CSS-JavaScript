package polymorphism02;

public class LgTV implements TV{

	public LgTV() {
		System.out.println("lgtv 생성자~~");
	}

	@Override
	public void powerOn() {
		System.out.println("LgTV - 전원ON");
		
	}

	@Override
	public void powerOff() {
		System.out.println("LgTV - 전원OFF");
		
	}

	@Override
	public void volumUp() {
		System.out.println("LgTV - 소리크게");
		
	}

	@Override
	public void volumDown() {
		System.out.println("LgTV - 소리작게");
		
	}
	
	public void initMethod() {
		System.out.println("LgTV - initMethod() 실행");
	}
	
	public void destroyMethod() {
		System.out.println("LgTV - destroyMethod() 실행");
	}
}

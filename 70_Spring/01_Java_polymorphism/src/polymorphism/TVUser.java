package polymorphism;

public class TVUser {

	public static void main(String[] args) {
		
//		SamsungTV tv = new SamsungTV();
//		
//		
//		tv.powerOn();
//		tv.powerOff();
//		tv.volumeDown();
//		tv.volumeUp();
		
		//LgTV 사용형태로 변경
		LgTV tv = new LgTV();
		tv.on();
		tv.off();
		tv.soundUp();
		tv.soundDown();
	}

}

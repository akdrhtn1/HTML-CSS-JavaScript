package polymorphism2;

public class TVUser {

	public static void main(String[] args) {
		
		TV tv = new LgTV();
		tv.powerOn();
		tv.powerOff();
		tv.volumDown();
		tv.volumUp();
		
		tv = new SamsungTV();
		tv.powerOn();
		tv.powerOff();
		tv.volumDown();
		tv.volumUp();
	}

}

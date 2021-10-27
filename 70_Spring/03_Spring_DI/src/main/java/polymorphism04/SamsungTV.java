package polymorphism04;

public class SamsungTV implements TV{

	private Speaker speaker;
	private int price;
	private int width;
	private int height;
	
	
	public SamsungTV() {
		System.out.println("생성자 생성");
		//필드 SonySpeaker에 객체 주입
	}
	
	public SamsungTV(Speaker speaker) {
		System.out.println("> SamsungTV (speaker) 객체 생성");
		this.speaker = speaker;
	}
	
	
	public SamsungTV(Speaker speaker, int price) {
		System.out.println("> SamsungTV (speaker,price) 객체 생성");
		this.speaker = speaker;
		this.price = price;
	}
	
	public SamsungTV(Speaker speaker, int width, int height) {
		System.out.println("> SamsungTV (speaker,width,height) 객체 생성");
		this.speaker = speaker;
		this.width = width;
		this.height = height;
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
		this.speaker.volumnUp();
	}

	@Override
	public void volumDown() {
		System.out.println("삼성TV-소리작게");
		this.speaker.volumnDown();
	}
	
	public void initMethod() {
		System.out.println("삼성TV - initMethod() 실행");
	}
	
	public void destroyMethod() {
		System.out.println("삼성TV - destroyMethod() 실행");
	}

	@Override
	public String toString() {
		return "SamsungTV [speaker=" + speaker + ", price=" + price + ", width=" + width + ", height=" + height + "]";
	}

	
	
	//======= getter, setter =======
	
	
	public Speaker getSpeaker() {
		return speaker;
	}

	public void setSpeaker(Speaker speaker) {
		this.speaker = speaker;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}
	
	
	
	
	
	
}

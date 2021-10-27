package com.test.build;

public class SamsungTV implements TV{
	
	private int item1;
	private String item2;
	private String item3;
	@Override
	public void powerOn() {
		System.out.println("삼성tv - powerOn");
		
	}

	@Override
	public void powerOff() {
		System.out.println("삼성tv - powerOff");
		
	}

	@Override
	public void soundUp() {
		System.out.println("삼성tv - soundUp");
		
	}

	@Override
	public void soundDown() {
		System.out.println("삼성tv - soundDown");
		
	}
	

	public int getItem1() {
		return item1;
	}

	public void setItem1(int item1) {
		this.item1 = item1;
	}

	public String getItem2() {
		return item2;
	}

	public void setItem2(String item2) {
		this.item2 = item2;
	}

	public String getItem3() {
		return item3;
	}

	public void setItem3(String item3) {
		this.item3 = item3;
	}

	@Override
	public String toString() {
		return "SamsungTV [item1=" + item1 + ", item2=" + item2 + ", item3=" + item3 + "]";
	}
	
	
	
	

}

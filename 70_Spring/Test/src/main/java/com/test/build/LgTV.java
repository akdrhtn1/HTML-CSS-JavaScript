package com.test.build;

public class LgTV implements TV{

	@Override
	public void powerOn() {
		System.out.println("LGtv - powerOn");
		
	}

	@Override
	public void powerOff() {
		System.out.println("LGtv - powerOff");
		
	}

	@Override
	public void soundUp() {
		System.out.println("LGtv - soundUp");
		
	}

	@Override
	public void soundDown() {
		System.out.println("LGtv - soundDown");
		
	}

}

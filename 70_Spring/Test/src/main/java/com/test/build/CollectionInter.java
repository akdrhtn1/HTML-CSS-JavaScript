package com.test.build;

import java.util.List;
import java.util.Map;
import java.util.Set;

public class CollectionInter {
	
	private List<String> addrlist;
	private Set<String> set;
	private Map<String,String> map;
	
	public CollectionInter() {
		System.out.println("객체 생성");
	}

	public List<String> getAddrlist() {
		return addrlist;
	}

	public void setAddrlist(List<String> addrlist) {
		this.addrlist = addrlist;
	}

	public Set<String> getSet() {
		return set;
	}

	public void setSet(Set<String> set) {
		this.set = set;
	}

	public Map<String, String> getMap() {
		return map;
	}

	public void setMap(Map<String, String> map) {
		this.map = map;
	}
	
	
}

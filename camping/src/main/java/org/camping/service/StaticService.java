package org.camping.service;

import java.util.HashMap;


public interface StaticService {
	public int pageStatic(HashMap<String,Object> statics);
	public int getStarttime(HashMap<String,Object> statics);
	public void setEndtime(HashMap<String,Object> statics);

	
}

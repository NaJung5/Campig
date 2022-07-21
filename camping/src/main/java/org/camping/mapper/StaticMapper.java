package org.camping.mapper;

import java.util.HashMap;
import java.util.List;


import org.camping.model.EquipDTO;


public interface StaticMapper {
	
	public int pageStatic(HashMap<String,Object> statics);
	public int getStarttime(HashMap<String,Object> statics);
	public void setEndtime(HashMap<String,Object> statics);
	
	
}

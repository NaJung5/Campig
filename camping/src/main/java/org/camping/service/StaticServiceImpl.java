package org.camping.service;

import java.util.HashMap;
import org.camping.mapper.StaticMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StaticServiceImpl implements StaticService{

	@Autowired
	private StaticMapper mapper;

	@Override
	public int pageStatic(HashMap<String,Object> statics) {

		return mapper.pageStatic(statics);
	
	}
	
	@Override
	public int getStarttime(HashMap<String,Object> statics) {

		return mapper.getStarttime(statics);	
	}
	
	@Override
	public void setEndtime(HashMap<String,Object> statics) {

		mapper.setEndtime(statics);	
	}
	
	

	
	
}




package org.camping.service;

import java.util.HashMap;
import java.util.List;

import org.camping.mapper.EquipMapper;
import org.camping.model.EquipDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EquipServiceImpl implements EquipService{

	@Autowired
	private EquipMapper mapper;

	@Override
	public int getEquipCount(HashMap<String,Object> map) {

		return mapper.getEquipCount(map);
	
	}
	
	@Override
	public int getEquipListCount(HashMap<String,Object> map) {

		return mapper.getEquipListCount(map);
	
	}
	
	@Override
	public List<EquipDTO> getEquipList(HashMap<String,Object> map) {

		return mapper.getEquipList(map);
	
	}

		

	@Override
	public void equipInsert(EquipDTO dto) {
		 
		System.out.println(dto.getFil2());
		
		mapper.equipInsert(dto);

	}
	
	@Override
	public int equipFavoriteInsert(HashMap<String,Object> equipfavorite) {

		return mapper.equipFavoriteInsert(equipfavorite);
	
	}

	@Override
	public int equipFavoriteCount(HashMap<String,Object> equipfavorite) {
		

		return mapper.equipFavoriteCount(equipfavorite);
		
	
	}

	@Override
	public int equipFavoriteDelete(HashMap<String,Object> equipfavorite) {

		return mapper.equipFavoriteDelete(equipfavorite);
	
	}

	
	@Override
	public int equipFavoriteCnt(HashMap<String,Object> map) {
		

		return mapper.equipFavoriteCnt(map);
		
	
	}
	
	
}




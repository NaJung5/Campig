package org.camping.service;

import java.util.HashMap;
import java.util.List;
import org.camping.model.EquipDTO;

public interface EquipService {
	public int getEquipCount(HashMap<String,Object> map);
	public int getEquipListCount(HashMap<String,Object> map);
	public List<EquipDTO> getEquipList( HashMap<String,Object> map);
	public void equipInsert(EquipDTO dto);
	
	public int equipFavoriteInsert(HashMap<String,Object> equipFavorite);
	public int equipFavoriteCount(HashMap<String,Object> equipFavorite);
	public int equipFavoriteDelete(HashMap<String,Object> equipFavorite);
	public int equipFavoriteCnt(HashMap<String,Object> map);
}

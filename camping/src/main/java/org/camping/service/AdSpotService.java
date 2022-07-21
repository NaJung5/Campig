package org.camping.service;

import java.util.List;

import org.camping.model.SpotDTO;

public interface AdSpotService {
	// 모든캠핑장 출력
	public List<SpotDTO> getSpotList(int startRow, int endRow);
	// 캠핑장 수 카운트
	public int getSpotCount(); 
	// 캠핑장 입력
	public void addSpot(SpotDTO dto);
}

package org.camping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.camping.model.SpotDTO;

public interface AdSpotMapper {
	// 모든 캠핑장 정보 출력
	public List<SpotDTO> getSpotList(@Param("startRow") int startRow, @Param("endRow") int endRow);
	// 캠핑장 수 카운트
	public int getSpotCount();
	// 캠핑장 입력 다 만들고 수정해라
	public void addSpot(SpotDTO dto); 
}

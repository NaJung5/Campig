package org.camping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.camping.model.SpotDTO;
import org.camping.model.SpotMediaDTO;

public interface AdSpotMapper {
	// ��� ķ���� ���� ���
	public List<SpotDTO> getSpotList(@Param("startRow") int startRow, @Param("endRow") int endRow);
	// ķ���� �� ī��Ʈ
	public int getSpotCount();
	// ķ���� �Է� �� ����� �����ض�
	public void addSpot(SpotDTO dto); 
	// ķ���� ���� ����
	public void deletSpot(@Param("status") int status, @Param("num") int num);
	// �̵�� ���
	public void addMedia(SpotMediaDTO dto);
}

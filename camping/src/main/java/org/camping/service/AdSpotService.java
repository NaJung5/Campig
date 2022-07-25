package org.camping.service;

import java.util.List;

import org.camping.model.SpotDTO;
import org.camping.model.SpotMediaDTO;

public interface AdSpotService {
	// ���ķ���� ���
	public List<SpotDTO> getSpotList(int startRow, int endRow);
	// ķ���� �� ī��Ʈ
	public int getSpotCount(); 
	// ķ���� �Է�
	public void addSpot(SpotDTO dto);
	// ķ���� ���� ����
	public void deletSpot(int status, int num);
	// �̵�� ���
	public void addMedia(SpotMediaDTO dto);
}

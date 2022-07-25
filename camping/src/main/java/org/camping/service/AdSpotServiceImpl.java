package org.camping.service;

import java.util.List;

import org.camping.mapper.AdSpotMapper;
import org.camping.model.SpotDTO;
import org.camping.model.SpotMediaDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdSpotServiceImpl implements AdSpotService {

	@Autowired
	private AdSpotMapper mapper;
	@Override
	public List<SpotDTO> getSpotList(int startRow, int endRow){
		return mapper.getSpotList(startRow, endRow);
	}
	@Override
	public int getSpotCount() {
		return mapper.getSpotCount();
	}
	@Override
	public void addSpot(SpotDTO dto) {
		mapper.addSpot(dto);
	}
	@Override
	public void deletSpot(int status, int num) {
		mapper.deletSpot(status, num);
	}
	@Override
	public void addMedia(SpotMediaDTO dto) {
		mapper.addMedia(dto);
	}
}

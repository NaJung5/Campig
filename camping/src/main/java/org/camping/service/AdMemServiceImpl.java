package org.camping.service;

import java.util.List;

import org.camping.mapper.AdMemMapper;
import org.camping.model.InfoDTO;
import org.camping.model.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdMemServiceImpl implements AdMemService {

	@Autowired
	private AdMemMapper mapper;
	
	@Override
	public int getMemCount() {
		return mapper.getMemCount();
	}
	@Override
	public List<InfoDTO> getMemList(int startRow, int endRow){
		return mapper.getMemList(startRow, endRow);
	}
	@Override
	public void memRestore(String id) {
		mapper.memRestore(id);
	}
	@Override
	public void memDelete(String id) {
		mapper.memDelete(id);
	}
	@Override
	public int idCount(String idSerch) {
		return mapper.idCount(idSerch);
	}
	@Override
	public List<InfoDTO> serchId(String idSerch, int startRow, int endRow) {
		return mapper.serchId(idSerch, startRow, endRow);
	}
}

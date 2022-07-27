package org.camping.service;

import java.util.List;

import org.camping.model.InfoDTO;
import org.camping.model.MemberDTO;

public interface AdMemService {

	public int getMemCount();
	public List<InfoDTO> getMemList(int startRow, int endRow);
	public void memRestore(String id);
	public void memDelete(String id);
	public int idCount(String idSerch);
	public List<InfoDTO> serchId(String idSerch,int startRow, int endRow);
}

package org.camping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.camping.model.InfoDTO;
import org.camping.model.MemberDTO;

public interface AdMemMapper {
	//회원수 카운트
	public int getMemCount();
	
	//회원 정보 출력
	public List<InfoDTO> getMemList(@Param("startRow")int startRow, @Param("endRow")int endRow);
	
	//회원복구
	public void memRestore(String id);
	//회원삭제
	public void memDelete(String id);
	//아이디 갯수
	public int idCount(@Param("idSerch")String idSerch);	
	//아이디 검색
	public List<InfoDTO> serchId(@Param("idSerch")String idSerch,@Param("startRow")int startRow, @Param("endRow")int endRo);
	
	
}

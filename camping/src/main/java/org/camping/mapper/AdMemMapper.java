package org.camping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.camping.model.InfoDTO;
import org.camping.model.MemberDTO;

public interface AdMemMapper {
	//ȸ���� ī��Ʈ
	public int getMemCount();
	
	//ȸ�� ���� ���
	public List<InfoDTO> getMemList(@Param("startRow")int startRow, @Param("endRow")int endRow);
	
	//ȸ������
	public void memRestore(String id);
	//ȸ������
	public void memDelete(String id);
	//���̵� ����
	public int idCount(@Param("idSerch")String idSerch);	
	//���̵� �˻�
	public List<InfoDTO> serchId(@Param("idSerch")String idSerch,@Param("startRow")int startRow, @Param("endRow")int endRo);
	
	
}

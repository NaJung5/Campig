package org.camping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.camping.model.BoardDTO;
import org.camping.model.ChecklistDTO;
import org.camping.model.EqcategoryDTO;
import org.camping.model.EquipDTO;
import org.camping.model.FavoriteDTO;
import org.camping.model.InfoDTO;
import org.camping.model.MemberDTO;
import org.camping.model.SpotCategoryDTO;
import org.camping.model.SpotDTO;

public interface MemberMapper {
	
	//회원가입
	public void signUp(MemberDTO dto);
	//아이디 중복체크
	public int idConfirm(String id);
	//별명 중복체크
	public int nickConfirm(String nickname);

	//회원상태확인
	public int userCheck(MemberDTO dto);
	//로그인 시간 저장
	public int loginTime(MemberDTO dto);

	//설문조사 체크 
	public int surveyCheck(MemberDTO dto);
	//설문조사
	public void survey(MemberDTO dto);

	//회원탈퇴
	public int delete(MemberDTO dto);
	//탈퇴여부 확인
	public int deleteUser(MemberDTO dto);

	//회원정보
	public List<InfoDTO> info(@Param("id")String id);
	//회원정보 수정
	public void userInfo(MemberDTO dto);
	
	//내 작성글 확인
	public int myBoard(@Param("id")String id);
	//내 작성글 보기
	public List<BoardDTO> getList(@Param("id")String id, @Param("startRow")int startRow, @Param("endRow")int endRow);

	// 즐겨찾기 전채 갯수
	public int favoCount(String id);
	//캠핑장
	public int favoCampCh(String id);
	//장비
	public int favoEquipCh(String id);
	
	// 페이지 처리, 장비, 캠핑장
	public List<EquipDTO> favoEquip(@Param("id")String id, @Param("startRow")int startRow, @Param("endRow")int endRow);
	public List<SpotDTO> favoCamp(@Param("id")String id, @Param("startRow")int startRow, @Param("endRow")int endRow);
	//즐겨찾기 삭제
	public void deleteFavo(@Param("id")String id, @Param("num")int num, @Param("status")int status);
	public int deleteFavoCh(@Param("id")String id, @Param("num")int num, @Param("status")int status);
	

	//체크리스트 확인 
	public ChecklistDTO chlist(@Param("id")String id, @Param("status")int status);
	public int chlist2(@Param("id")String id, @Param("status")int status);
	
	public ChecklistDTO clSite(@Param("id")String id, @Param("status")int status);
	public EquipDTO clTent(@Param("id")String id, @Param("status")int status);
	public EquipDTO clTaf(@Param("id")String id, @Param("status")int status);
	public EquipDTO clWaterjug(@Param("id")String id, @Param("status")int status);
	public EquipDTO clStove(@Param("id")String id, @Param("status")int status);
	public EquipDTO clLight(@Param("id")String id, @Param("status")int status);
	public EquipDTO clMat(@Param("id")String id, @Param("status")int status);
	public EquipDTO clSb(@Param("id")String id, @Param("status")int status);
	public EquipDTO clChair(@Param("id")String id, @Param("status")int status);
	public EquipDTO clDesk(@Param("id")String id, @Param("status")int status);
	public EquipDTO clGas(@Param("id")String id, @Param("status")int status);
	
	public int deleteCheck(ChecklistDTO dto);
	
	//체크리스트 등록,수정
	public void chModify(ChecklistDTO dto);


	//관리자 확인
	public int adCheck(MemberDTO dto);

}

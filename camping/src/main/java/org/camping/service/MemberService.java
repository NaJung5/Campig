package org.camping.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.camping.model.BoardDTO;
import org.camping.model.ChecklistDTO;
import org.camping.model.EqcategoryDTO;
import org.camping.model.EquipDTO;
import org.camping.model.FavoriteDTO;
import org.camping.model.InfoDTO;
import org.camping.model.MemberDTO;
import org.camping.model.ReviewDTO;
import org.camping.model.SpotCategoryDTO;
import org.camping.model.SpotDTO;

public interface MemberService {

	//회원가입
	public void signUp(MemberDTO dto);
	public int idConfirm(String id);
	public int nickConfirm(String nickname);

	// 설문조사 체크
	public int surveyCheck(MemberDTO dto);
	public void survey(MemberDTO dto);
	//로그인 
	public int userCheck(MemberDTO dto);
	public int loginTime(MemberDTO dto);
	//삭제
	public int deleteUser(MemberDTO dto);
	public int delete(MemberDTO dto);
	//회원정보	
	public List<InfoDTO> info(String id);
	public void userInfo(MemberDTO dto);
	//내 작성글
	public int myBoard(String nickname);
	public List<BoardDTO> getList(String nickname, int startRow, int endRow);

	//체크리스트 수정
	public void chModify(ChecklistDTO dto);
	
	public ChecklistDTO chlist(String id, int status);
	public int chlist2(String id, int status);
	
	public SpotDTO clSite(String id, int status);
	public EquipDTO clTent(String id, int status);
	public EquipDTO clTaf(String id, int status);
	public EquipDTO clWaterjug(String id, int status);
	public EquipDTO clStove(String id, int status);
	public EquipDTO clLight(String id, int status);
	public EquipDTO clMat(String id, int status);
	public EquipDTO clSb(String id, int status);
	public EquipDTO clChair(String id, int status);
	public EquipDTO clDesk(String id, int status);
	public EquipDTO clGas(String id, int status);
	
	public void review(ReviewDTO dto);
	
	public void reviewEquip(int num);
	public void reviewCamp(int num);
	

	
	
	//체크리스트 삭제
	public int deleteCheck(ChecklistDTO dto);
	//전체
	public int favoCount(String id);
	//캠핑장
	public int favoCampCh(String id);
	//장비
	public int favoEquipCh(String id);
	//페이지 처리
	public List<EquipDTO> favoEquip(String id, int startRow, int endRow);
	public List<SpotDTO> favoCamp(String id, int startRow, int endRow);
	//즐겨찾기 삭제
	public void deleteFavo(String id, int num, int status);
	public int deleteFavoCh(String id, int num, int status);
	



	public int adCheck(MemberDTO dto);
}

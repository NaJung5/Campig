package org.camping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.camping.model.SpotCategoryDTO;
import org.camping.model.SpotDTO;

public interface SpotMapper {
	// 캠핑장 전부 출력
	public List<SpotDTO> getAllSpot();
	// 비회원 캠핑장 추천 출력
	public List<SpotDTO> getPopularList();
	
	//회원 설문조사 내용 출력
	public String checkAns1(String id);
	public String checkAns2(String id);
	public String checkAns6(String id);
	
	// 체크박스 검색
	public List<SpotDTO> getSearchCheck(@Param("searchCheck")String[] searchCheck, @Param("startRow") int startRow, @Param("endRow") int endRow );
	// 체크박스 검색 카운트
	public int getCountCheck(@Param("searchCheck")String[] searchCheck);
	// 이름 검색
	public List<SpotDTO> getSearchKey(@Param("searchKey")String searchKey, @Param("startRow") int startRow, @Param("endRow") int endRow );
	// 이름 검색 카운트
	public int getCountKey(@Param("searchKey")String searchKey);
	
	// 해변 리스트
	public List<SpotDTO> getBeachList(@Param("startRow") int startRow, @Param("endRow") int endRow);
	// 해변 카운트
	public int getBeachCount();
	// 도심 리스트
	public List<SpotDTO> getCityList(@Param("startRow") int startRow, @Param("endRow") int endRow);
	// 도심 카운트
	public int getCityCount();
	// 숲 리스트
	public List<SpotDTO> getForestList(@Param("startRow") int startRow, @Param("endRow") int endRow);
	// 숲 카운트
	public int getForestCount();
	// 섬 리스트
	public List<SpotDTO> getIslandList(@Param("startRow") int startRow, @Param("endRow") int endRow);
	// 섬 카운트
	public int getIslandCount();
	// 산 계곡 리스트
	public List<SpotDTO> getMountainList(@Param("startRow") int startRow, @Param("endRow") int endRow);
	// 산 계곡 카운트
	public int getMountainCount();
	// 강 리스트
	public List<SpotDTO> getRiverList(@Param("startRow") int startRow, @Param("endRow") int endRow);
	// 강 카운트
	public int getRiverCount();
	// 미디어 리스트
	public List<SpotDTO> getMedia(@Param("startRow") int startRow, @Param("endRow") int endRow); 
	// 미디어 카운트
	public int getMediaCount();
	
	// 캠핑장 정보 출력
	public SpotDTO getContent(int num);
	// 캠핑장 필터 구분 (쉼표가 몇개 있는지)
	public int getCountFil(int num);
	// 캠핑장 필터 부분 꺼내기 (쉼표 자르기) filnum이 쉼표갯수
	public String getFil(@Param("filNum")int filNum, @Param("num") int num);
	// 캠핑장 필터에 맞는 설명 출력 fil이 가져오는 필터들
	public List<SpotCategoryDTO> getContentFil(@Param("fil") List fil);
	
	// 조회수 증가
	public void updateRead(int num);
	
	// 캠장 즐겨찾기 확인
	public int checkFav(@Param("id")String id, @Param("num") int num);
	// 캠장 즐겨찾기 등록
	public void inFav(@Param("id")String id, @Param("num") int num);
	// 캠장 즐겨찾기 해제
	public void delFav(@Param("id")String id, @Param("num") int num);
}

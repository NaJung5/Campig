package org.camping.service;

import java.util.List;

import org.camping.model.SpotCategoryDTO;
import org.camping.model.SpotDTO;

public interface SpotService {
	// 캠핑장 전부 출력
	public List<SpotDTO> getAllSpot();
	// 비회원 캠핑장 추천 출력
	public List<SpotDTO> getPopularList();	
	
	//회원 설문조사 내용 출력
	public String checkAns(String id);
		
	//체크박스 검색
	public List<SpotDTO> getSearchCheck(String[] searchCheck, int StartRow, int endRow);
	//체크박스 리스트를 위한 카운트
	public int getCountCheck(String[] searchCheck);
	// 이름 검색
	public List<SpotDTO> getSearchKey(String searchKey, int StartRow, int endRow);
	// 이름 검색 카운트
	public int getCountKey(String searchKey);
	
	// 해변 리스트
	public List<SpotDTO> getBeachList(int startRow, int endRow);
	// 해변 카운트
	public int getBeachCount();
	// 도심 리스트
	public List<SpotDTO> getCityList(int startRow, int endRow);
	// 도심 카운트
	public int getCityCount();
	// 숲 리스트
	public List<SpotDTO> getForestList(int startRow, int endRow);
	// 숲 카운트
	public int getForestCount();
	// 섬 리스트
	public List<SpotDTO> getIslandList(int startRow, int endRow);
	// 섬 카운트
	public int getIslandCount();
	// 산 계곡 리스트
	public List<SpotDTO> getMountainList(int startRow, int endRow);
	// 산 계곡 카운트
	public int getMountainCount();
	// 강 리스트
	public List<SpotDTO> getRiverList(int startRow, int endRow);
	// 강 카운트
	public int getRiverCount();
	// 미디어 리스트
	public List<SpotDTO> getMedia(int startRow, int endRow); 
	// 미디어 카운트
	public int getMediaCount();
	
	// 캠핑장 정보 출력
	public SpotDTO getContent(int num);
	// 캠핑장 필터 구분 (쉼표가 몇개 있는지)
	public int getCountFil(int num);
	// 캠핑장 필터 부분 꺼내기 (쉼표 자르기)
	public String getFil(int filNum, int num); 
	// 캠핑장 필터에 맞는 설명 출력
	public List<SpotCategoryDTO> getContentFil(List fil);
	//조회수 증가
	public void updateRead(int num);
	
	// 캠장 즐겨찾기 확인
	public int checkFav(String id, int num);
	// 캠장 즐겨찾기 등록
	public void inFav(String id, int num);
	// 캠장 즐겨찾기 해제
	public void delFav(String id, int num);
}

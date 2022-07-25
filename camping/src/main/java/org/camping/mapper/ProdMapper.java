package org.camping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.camping.model.ChecklistDTO;
import org.camping.model.EquipDTO;
import org.camping.model.SpotDTO;

public interface ProdMapper {
	// 이름 검색
	public List<SpotDTO> getSearchKey(@Param("spot")String spot, @Param("startRow") int startRow, @Param("endRow") int endRow );
	// 이름 검색 카운트
	public int getCountKey(@Param("spot")String spot);
	// 캠핑장 장작판매 확인
	public int checkFuel(String spot);
	// 장작 추천
	public EquipDTO recommendFuel1();
	public EquipDTO recommendFuel2();
	// 텐트 추천
	public List<EquipDTO> recomTent1(@Param("price") int price);
	public List<EquipDTO> recomTent2(@Param("price") int price);
	public List<EquipDTO> recomTent3(@Param("price") int price);
	// 타프 추천
	public List<EquipDTO> recomTaf(@Param("price") int price);
	// 매트 추천
	public List<EquipDTO> recomMat(@Param("price") int price);
	// 침낭 추천
	public List<EquipDTO> recomSB1(@Param("price") int price);
	public List<EquipDTO> recomSB2(@Param("price") int price);
	public List<EquipDTO> recomSB3(@Param("price") int price);
	// 테이블 추천
	public List<EquipDTO> recomTB(@Param("price") int price);
	// 의자 추천
	public List<EquipDTO> recomChair(@Param("price") int price);
	// 랜턴추천
	public List<EquipDTO> recomLight(@Param("price") int price);
	// 스토브 추천
	public List<EquipDTO> recomStove1(@Param("price") int price);
	public List<EquipDTO> recomStove2(@Param("price") int price);
	// 아이스박스 추천
	public List<EquipDTO> recomWJ1(@Param("price") int price);
	public List<EquipDTO> recomWJ2(@Param("price") int price);
	public List<EquipDTO> recomWJ3(@Param("price") int price);
	// 체크리스트 확인
	public int checkStatus(ChecklistDTO dto);
	// 체크리스트 갯수 확인
	public int checkId(String id);
	// 체크리스트 등록
	public int saveChecklist(ChecklistDTO dto);
	
	// 개인 설문 답 생성
	public String getAns3(String id);
	public String getAns4(String id);
	public String getAns5(String id);
}

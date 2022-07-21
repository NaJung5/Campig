package org.camping.service;

import java.util.List;

import org.camping.model.ChecklistDTO;
import org.camping.model.EquipDTO;
import org.camping.model.SpotDTO;

public interface ProdService {
	// 이름 검색
	public List<SpotDTO> getSearchKey(String spot, int startRow, int endRow);
	// 이름 검색 카운트
	public int getCountKey(String spot);
	// 장작판매 확인
	public int checkFuel(String spot);
	// 연료 추천
	public EquipDTO recommendFuel1();
	public EquipDTO recommendFuel2();	
	// 텐트 추천
	public List<EquipDTO> recomTent1(int price);
	public List<EquipDTO> recomTent2(int price);
	public List<EquipDTO> recomTent3(int price);
	// 타프 추천
	public List<EquipDTO> recomTaf(int price);
	// 매트 추천
	public List<EquipDTO> recomMat(int price);
	// 침낭 추천
	public List<EquipDTO> recomSB1(int price);
	public List<EquipDTO> recomSB2(int price);
	public List<EquipDTO> recomSB3(int price);
	// 테이블 추천
	public List<EquipDTO> recomTB(int price);
	// 의자 추천
	public List<EquipDTO> recomChair(int price);
	// 랜턴추천
	public List<EquipDTO> recomLight(int price);
	// 스토브 추천
	public List<EquipDTO> recomStove1(int price);
	public List<EquipDTO> recomStove2(int price);
	// 아이스박스 추천
	public List<EquipDTO> recomWJ1(int price);
	public List<EquipDTO> recomWJ2(int price);
	public List<EquipDTO> recomWJ3(int price);
	// 체크리스트 갯수 확인
	public int checkId(String id);
	//체크리스트 확인
	public int checkStatus(ChecklistDTO dto);
	// 체크리스트 등록
	public int saveChecklist(ChecklistDTO dto);
}

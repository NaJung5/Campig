package org.camping.service;

import java.util.List;

import org.camping.mapper.ProdMapper;
import org.camping.model.ChecklistDTO;
import org.camping.model.EquipDTO;
import org.camping.model.SpotDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProdServiceImpl implements ProdService {

	@Autowired
	private ProdMapper mapper;
	
	@Override
	public List<SpotDTO> getSearchKey(String spot, int startRow, int endRow){
		return mapper.getSearchKey(spot, startRow, endRow);
	}
	@Override
	public int getCountKey(String spot) {
		return mapper.getCountKey(spot);
	}
	@Override
	public int checkFuel(String spot) {
		return mapper.checkFuel(spot);
	}
	@Override
	public EquipDTO recommendFuel1() {
		return mapper.recommendFuel1();
	}
	@Override
	public EquipDTO recommendFuel2() {
		return mapper.recommendFuel2();
	}
	@Override
	public List<EquipDTO> recomTent1(int price){
		return mapper.recomTent1(price);
	}
	@Override
	public List<EquipDTO> recomTent2(int price){
		return mapper.recomTent2(price);
	}
	@Override
	public List<EquipDTO> recomTent3(int price){
		return mapper.recomTent3(price);
	}
	@Override
	public List<EquipDTO> recomTaf(int price){
		return mapper.recomTaf(price);
	}
	@Override
	public List<EquipDTO> recomMat(int price){
		return mapper.recomMat(price);
	}
	@Override
	public List<EquipDTO> recomSB1(int price){
		return mapper.recomSB1(price);
	}
	@Override
	public List<EquipDTO> recomSB2(int price){
		return mapper.recomSB2(price);
	}
	@Override
	public List<EquipDTO> recomSB3(int price){
		return mapper.recomSB3(price);
	}
	@Override
	public List<EquipDTO> recomTB(int price){
		return mapper.recomTB(price);
	}
	@Override
	public List<EquipDTO> recomChair(int price){
		return mapper.recomChair(price);
	}
	@Override
	public List<EquipDTO> recomLight(int price){
		return mapper.recomLight(price);
	}
	@Override
	public List<EquipDTO> recomStove1(int price){
		return mapper.recomStove1(price);
	}
	@Override
	public List<EquipDTO> recomStove2(int price){
		return mapper.recomStove2(price);
	}
	@Override
	public List<EquipDTO> recomWJ1(int price){
		return mapper.recomWJ1(price);
	}
	@Override
	public List<EquipDTO> recomWJ2(int price){
		return mapper.recomWJ2(price);
	}
	@Override
	public List<EquipDTO> recomWJ3(int price){
		return mapper.recomWJ3(price);
	}
	@Override
	public int checkId(String id) {
		return mapper.checkId(id);
	}
	@Override
	public int checkStatus(ChecklistDTO dto) {
		return mapper.checkStatus(dto);
	}
	@Override
	public int saveChecklist(ChecklistDTO dto) {
		return mapper.saveChecklist(dto);
	}
}

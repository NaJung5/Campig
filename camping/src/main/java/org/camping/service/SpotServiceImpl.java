package org.camping.service;

import java.util.List;

import org.camping.mapper.SpotMapper;
import org.camping.model.SpotCategoryDTO;
import org.camping.model.SpotDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SpotServiceImpl implements SpotService{
	@Autowired
	private SpotMapper mapper;
	
	@Override
	public List<SpotDTO> getAllSpot(){
		return mapper.getAllSpot();
	}
	@Override
	public List<SpotDTO> getPopularList() {
		return mapper.getPopularList();
	}
	@Override
	public String checkAns(String id) {
		String ans = mapper.checkAns1(id)+","+mapper.checkAns2(id)+","+mapper.checkAns6(id);
		return ans;
	}
	
	@Override
	public List<SpotDTO> getSearchCheck(String[] searchCheck, int startRow, int endRow){
		return mapper.getSearchCheck(searchCheck, startRow, endRow);
	}
	@Override
	public int getCountCheck(String[] searchCheck) {
		return mapper.getCountCheck(searchCheck);
	}
	@Override
	public List<SpotDTO> getSearchKey(String searchKey, int startRow, int endRow){
		return mapper.getSearchKey(searchKey, startRow, endRow);
	}
	@Override
	public int getCountKey(String searchKey) {
		return mapper.getCountKey(searchKey);
	}
	@Override
	public List<SpotDTO> getBeachList(int startRow, int endRow){
		return mapper.getBeachList(startRow, endRow);
	}
	@Override
	public int getBeachCount() {
		return mapper.getBeachCount();
	}
	@Override
	public List<SpotDTO> getCityList(int startRow, int endRow){
		return mapper.getCityList(startRow, endRow);
	}
	@Override
	public int getCityCount() {
		return mapper.getCityCount();
	}
	@Override
	public List<SpotDTO> getForestList(int startRow, int endRow){
		return mapper.getForestList(startRow, endRow);
	}
	@Override
	public int getForestCount() {
		return mapper.getForestCount();
	}
	@Override
	public List<SpotDTO> getIslandList(int startRow, int endRow){
		return mapper.getIslandList(startRow, endRow);
	}
	@Override
	public int getIslandCount() {
		return mapper.getIslandCount();
	}
	@Override
	public List<SpotDTO> getMountainList(int startRow, int endRow){
		return mapper.getMountainList(startRow, endRow);
	}
	@Override
	public int getMountainCount() {
		return mapper.getMountainCount();
	}
	@Override
	public List<SpotDTO> getRiverList(int startRow, int endRow){
		return mapper.getRiverList(startRow, endRow);
	}
	@Override
	public int getRiverCount() {
		return mapper.getRiverCount();
	}
	@Override
	public List<SpotDTO> getMedia(int startRow, int endRow){
		return mapper.getMedia(startRow, endRow);
	}
	@Override
	public int getMediaCount() {
		return mapper.getMediaCount();
	}
	
	@Override
	public SpotDTO getContent(int num) {
		return mapper.getContent(num);
	}
	@Override
	public int getCountFil(int num) {
		return mapper.getCountFil(num);
	}
	@Override
	public String getFil(int filNum, int num) {
		return mapper.getFil(filNum, num);
	}
	@Override
	public List<SpotCategoryDTO> getContentFil(List fil){
		return mapper.getContentFil(fil);
	}
	@Override
	public void updateRead(int num) {
		mapper.updateRead(num);
	}
	@Override
	public int checkFav(String id, int num) {
		return mapper.checkFav(id, num);
	}
	@Override
	public void inFav(String id, int num) {
		mapper.inFav(id, num);
	}
	@Override
	public void delFav(String id, int num) {
		mapper.delFav(id, num);
	}
}

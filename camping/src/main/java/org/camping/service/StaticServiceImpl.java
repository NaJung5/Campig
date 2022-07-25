package org.camping.service;

import java.util.HashMap;
import java.util.List;

import org.camping.mapper.StaticMapper;
import org.camping.model.EquipDTO;
import org.camping.model.StaticDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StaticServiceImpl implements StaticService {

	@Autowired
	private StaticMapper mapper;

	@Override
	public int pageStatic(HashMap<String, Object> statics) {

		return mapper.pageStatic(statics);

	}

	@Override
	public int getStarttime(HashMap<String, Object> statics) {

		return mapper.getStarttime(statics);
	}

	@Override
	public void setEndtime(HashMap<String, Object> statics) {

		mapper.setEndtime(statics);
	}

	@Override
	public void setCategoryStatic(int catnum) {

		mapper.setCategoryStatic(catnum);
	}

	@Override
	public List<StaticDTO> getStaticValue(int staticnum) {
		return mapper.getStaticValue(staticnum);
	}

	@Override
	public List<StaticDTO> getFilName(int staticnum) {
		return mapper.getFilName(staticnum);
	}

	@Override
	public void setFilStatic(String fil) {

		mapper.setFilStatic(fil);
	}

	@Override
	public List<StaticDTO> getEqFavStatic() {
		return mapper.getEqFavStatic();
	}

	@Override
	public List<StaticDTO> getSpFavStatic() {
		return mapper.getSpFavStatic();
	}

	@Override
	public List<StaticDTO> getSpReadStatic() {
		return mapper.getSpReadStatic();
	}

	@Override
	public List<StaticDTO> getPageStatic() {
		return mapper.getPageStatic();
	}

	@Override
	public void setGenderAll() {
		mapper.setGenderAll();
	}

	@Override
	public void setGenderMen() {
		mapper.setGenderMen();
	}

	@Override
	public void setGenderWomen() {
		mapper.setGenderWomen();
	}

	@Override
	public int getGenderAll() {

		return mapper.getGenderAll();
	}

	@Override
	public int getGenderMen() {

		return mapper.getGenderMen();
	}

	@Override
	public int getGenderWomen() {

		return mapper.getGenderWomen();
	}

	@Override
	public int getSignUp1Week() {

		return mapper.getSignUp1Week();
	}

	@Override
	public void setAge10s() {
		mapper.setAge10s();
	}

	@Override
	public void setAge20s() {
		mapper.setAge20s();
	}

	@Override
	public void setAge30s() {
		mapper.setAge30s();
	}

	@Override
	public void setAge40s() {
		mapper.setAge40s();
	}

	@Override
	public void setAge50s() {
		mapper.setAge50s();
	}

	@Override
	public int getAge10s() {

		return mapper.getAge10s();
	}

	@Override
	public int getAge20s() {

		return mapper.getAge20s();
	}

	@Override
	public int getAge30s() {

		return mapper.getAge30s();
	}

	@Override
	public int getAge40s() {

		return mapper.getAge40s();
	}

	@Override
	public int getAge50s() {

		return mapper.getAge50s();
	}

	@Override
	public List<StaticDTO> getBoardStatic() {

		return mapper.getBoardStatic();

	}

	@Override
	public String getCatName(String staticName) {

		return mapper.getCatName(staticName);

	}

	@Override
	public void setPageTime01() {
		mapper.setPageTime01();
	}

	@Override
	public void setPageTime02() {
		mapper.setPageTime02();
	}

	@Override
	public void setPageTime03() {
		mapper.setPageTime03();
	}

	@Override
	public void setPageTime04() {
		mapper.setPageTime04();
	}

	@Override
	public void setPageTime05() {
		mapper.setPageTime05();
	}

	@Override
	public void setPageTime06() {
		mapper.setPageTime06();
	}

	@Override
	public void setPageTime07() {
		mapper.setPageTime07();
	}

	@Override
	public void setPageTime08() {
		mapper.setPageTime08();
	}

	@Override
	public void setPageTime09() {
		mapper.setPageTime09();
	}

	@Override
	public void setPageTime10() {
		mapper.setPageTime10();
	}

	@Override
	public void setPageTime11() {
		mapper.setPageTime11();
	}

	@Override
	public void setPageTime12() {
		mapper.setPageTime12();
	}

	@Override
	public void setPageTime13() {
		mapper.setPageTime13();
	}

	@Override
	public void setPageTime14() {
		mapper.setPageTime14();
	}

	@Override
	public void setPageTime15() {
		mapper.setPageTime15();
	}

	@Override
	public void setPageTime16() {
		mapper.setPageTime16();
	}

	@Override
	public void setPageTime17() {
		mapper.setPageTime17();
	}

	@Override
	public void setPageTime18() {
		mapper.setPageTime18();
	}

	@Override
	public void setPageTime19() {
		mapper.setPageTime19();
	}

	@Override
	public void setPageTime20() {
		mapper.setPageTime20();
	}

	@Override
	public void setPageTime21() {
		mapper.setPageTime21();
	}

	@Override
	public void setPageTime22() {
		mapper.setPageTime22();
	}

	@Override
	public void setPageTime23() {
		mapper.setPageTime23();
	}

	@Override
	public void setPageTime24() {
		mapper.setPageTime24();
	}

}

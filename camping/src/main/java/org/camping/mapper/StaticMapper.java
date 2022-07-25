package org.camping.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.camping.model.EquipDTO;
import org.camping.model.StaticDTO;


public interface StaticMapper {
	
	public int pageStatic(HashMap<String,Object> statics);
	public int getStarttime(HashMap<String,Object> statics);
	public void setEndtime(HashMap<String,Object> statics);
	public void setCategoryStatic(@Param("cat") int catnum);
	public List<StaticDTO> getFilName(@Param("staticnum") int staticnum);
	public void setFilStatic(@Param("fil") String fil);
	public void setGenderAll();
	public void setGenderMen();
	public void setGenderWomen();
	public int getGenderAll();
	public int getGenderMen();
	public int getGenderWomen();
	public int getSignUp1Week();
	public void setAge10s();
	public void setAge20s();
	public void setAge30s();
	public void setAge40s();
	public void setAge50s();
	public int getAge10s();
	public int getAge20s();
	public int getAge30s();
	public int getAge40s();
	public int getAge50s();
	
	
	public List<StaticDTO> getStaticValue(@Param("staticnum") int staticnum);
	public List<StaticDTO> getEqFavStatic();
	public List<StaticDTO> getSpReadStatic();
	public List<StaticDTO> getSpFavStatic();
	public List<StaticDTO> getPageStatic();
	public List<StaticDTO> getBoardStatic();
	public String getCatName(@Param("staticName") String staticName);
	
	public void setPageTime01();
	public void setPageTime02();
	public void setPageTime03();
	public void setPageTime04();
	public void setPageTime05();
	public void setPageTime06();
	public void setPageTime07();
	public void setPageTime08();
	public void setPageTime09();
	public void setPageTime10();
	public void setPageTime11();
	public void setPageTime12();
	public void setPageTime13();
	public void setPageTime14();
	public void setPageTime15();
	public void setPageTime16();
	public void setPageTime17();
	public void setPageTime18();
	public void setPageTime19();
	public void setPageTime20();
	public void setPageTime21();
	public void setPageTime22();
	public void setPageTime23();
	public void setPageTime24();

	
}

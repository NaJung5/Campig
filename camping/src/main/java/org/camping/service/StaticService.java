package org.camping.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.camping.model.StaticDTO;


public interface StaticService {
	public int pageStatic(HashMap<String,Object> statics);
	public int getStarttime(HashMap<String,Object> statics);
	public void setEndtime(HashMap<String,Object> statics);
	public void setCategoryStatic(int catnum);
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
	
	public List<StaticDTO> getStaticValue(int staticnum);
	public List<StaticDTO> getFilName(int staticnum);
	public void setFilStatic(String fil);
	public List<StaticDTO> getEqFavStatic();
	public List<StaticDTO> getSpFavStatic();
	public List<StaticDTO> getSpReadStatic();
	public List<StaticDTO> getPageStatic();
	public List<StaticDTO> getBoardStatic();
	public String getCatName(String staticName);
	
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
	public List<StaticDTO> getPageTime();
	
	public void setNewBoard0();
	public void setNewBoard1();
	public void setNewBoard2();
	public void setNewBoard3();
	public void setNewBoard4();
	public void setNewBoard5();
	public void setNewBoard6();
	public void setNewBoard7();
	public int getNewBoard0();
	public int getNewBoard1();
	public int getNewBoard2();
	public int getNewBoard3();
	public int getNewBoard4();
	public int getNewBoard5();
	public int getNewBoard6();
	public int getNewBoard7();
	public void setPageDay0();
	public void setPageDay1();
	public void setPageDay2();
	public void setPageDay3();
	public void setPageDay4();
	public void setPageDay5();
	public void setPageDay6();
	public void setPageDay7();
	public int getPageDay0();
	public int getPageDay1();
	public int getPageDay2();
	public int getPageDay3();
	public int getPageDay4();
	public int getPageDay5();
	public int getPageDay6();
	public int getPageDay7();
	
	// 회원 가입 통계
	public int getTodaySignIn();
	public int getYesterdaySignIn();
}

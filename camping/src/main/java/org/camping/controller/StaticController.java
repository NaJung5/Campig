package org.camping.controller;

import java.util.ArrayList;
import java.util.List;

import org.camping.model.EquipDTO;
import org.camping.model.StaticDTO;
import org.camping.service.EquipService;
import org.camping.service.StaticService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/static/*")
public class StaticController {
	
	@Autowired
	private StaticService service;
	
	@RequestMapping("staticList")
	public String staticsList(Model model ,StaticDTO dto) {
		int staticnum;
		
		//1번통계 : (장비) 많이찾는 카테고리 순위 
		staticnum = 1;
		for (int i=1; i <= 10; i++) {
			int catnum = 0;
			catnum += i;
			service.setCategoryStatic(catnum);
			System.out.println(i);
		}
		List<StaticDTO> categoryStaticList = service.getStaticValue(staticnum);
		
		List<String> catName = new ArrayList<String>();
		for(int i=0; i < 5; i++) {
		String staticName = categoryStaticList.get(i).getStaticName();
		catName.add(service.getCatName(staticName));
		}
		
		
		model.addAttribute("catStatic", categoryStaticList);
		model.addAttribute("catName", catName);
		
		//2번통계 : (장비) 카테고리별 검색에 많이 이용된 필터값 순위* 
		staticnum = 2;
		List<StaticDTO> filNameList = service.getFilName(staticnum);
		for(int i=0; i <=164; i++) {
			String fil = filNameList.get(i).getFil();
			service.setFilStatic(fil);
		}
		List<StaticDTO> EqFilStatic = service.getStaticValue(staticnum);
		model.addAttribute("EqFilStatic", EqFilStatic);
		
		//3번통계 : (장비) 즐겨찾기 순위
		
		List<StaticDTO> EqFavStatic = service.getEqFavStatic();
		model.addAttribute("EqFavStatic", EqFavStatic);
		
		//4번통계 : (캠핑장) 캠핑장별 조회수 순위
		List<StaticDTO> SpReadStatic = service.getSpReadStatic();
		model.addAttribute("SpReadStatic", SpReadStatic);
		
		//5번통계 : (캠핑장) 환경 선호도 순위
		staticnum = 5;
	    filNameList = service.getFilName(staticnum);
		for(int i=0; i <=7; i++) {
			String fil = filNameList.get(i).getFil();
			service.setFilStatic(fil);
		}
		List<StaticDTO> SpEnvStatic = service.getStaticValue(staticnum);
		model.addAttribute("SpEnvStatic", SpEnvStatic);
		
		//6번통계 : (캠핑장) 지역 선호도 순위
		staticnum = 6;
	    filNameList = service.getFilName(staticnum);
		for(int i=0; i <=14; i++) {
			String fil = filNameList.get(i).getFil();
			service.setFilStatic(fil);
		}
		List<StaticDTO> SpRegStatic = service.getStaticValue(staticnum);
		model.addAttribute("SpRegStatic", SpRegStatic);
		
		//7번통계 : (캠핑장) 카테고리별 검색에 많이 이용된 시설 필터값 순위
		staticnum = 7;
	    filNameList = service.getFilName(staticnum);
		for(int i=0; i <=10; i++) {
			String fil = filNameList.get(i).getFil();
			service.setFilStatic(fil);
		}
		List<StaticDTO> SpFacStatic = service.getStaticValue(staticnum);
		model.addAttribute("SpFacStatic", SpFacStatic);
		
		//8번통계 : (캠핑장) 계절 선호도 순위
		staticnum = 8;
	    filNameList = service.getFilName(staticnum);
		for(int i=0; i <=3; i++) {
			String fil = filNameList.get(i).getFil();
			service.setFilStatic(fil);
		}
		List<StaticDTO> SpSeasonStatic = service.getStaticValue(staticnum);
		model.addAttribute("SpSeasonStatic", SpSeasonStatic);
		
		
		//9번통계 : (캠핑장) 즐겨찾기 순위
		List<StaticDTO> SpFavStatic = service.getSpFavStatic();
		model.addAttribute("SpFavStatic", SpFavStatic);
		
		//10번통계 : 페이지별 조회수 순위
		List<StaticDTO> PageStatic = service.getPageStatic();
		model.addAttribute("PageStatic", PageStatic);
		
		
		//11번통계 : 시간별 전체접속순위
		service.setPageTime01();
		service.setPageTime02();
		service.setPageTime03();
		service.setPageTime04();
		service.setPageTime05();
		service.setPageTime06();
		service.setPageTime07();
		service.setPageTime08();
		service.setPageTime09();
		service.setPageTime10();
		service.setPageTime11();
		service.setPageTime12();
		service.setPageTime13();
		service.setPageTime14();
		service.setPageTime15();
		service.setPageTime16();
		service.setPageTime17();
		service.setPageTime18();
		service.setPageTime19();
		service.setPageTime20();
		service.setPageTime21();
		service.setPageTime22();
		service.setPageTime23();
		service.setPageTime24();
		
		
		//12번통계 : 지난 일주일 간 회원가입 수
		int signUp1Week = service.getSignUp1Week();
		model.addAttribute("signUp1Week",signUp1Week);
		
		//13번통계 : 가입성별 수
		service.setGenderAll();
		service.setGenderMen();
		service.setGenderWomen();
		int all = service.getGenderAll();//전체가입자수
		int mencnt = service.getGenderMen(); //남성가입자수
		int womencnt= service.getGenderWomen();//여성가입자수
		double mend = mencnt * 1.0;
		double womend = womencnt * 1.0;
		System.out.println(mend);
		System.out.println(womend);
		double men = Math.round((mend / all) * 100); //남성가입비율
		double women = Math.round((womend / all) * 100) ; //여성가입비율
		
		System.out.println(men);
		System.out.println(women);
		model.addAttribute("all",all);
		model.addAttribute("mencnt",mencnt);
		model.addAttribute("womencnt",womencnt);
		model.addAttribute("men",men);
		model.addAttribute("women",women);

		
		//14번통계 : 가입연령 수
		service.setAge10s();
		service.setAge20s();
		service.setAge30s();
		service.setAge40s();
		service.setAge50s();
		int age10 = service.getAge10s();
		int age20 = service.getAge20s();
		int age30 = service.getAge30s();
		int age40 = service.getAge40s();
		int age50 = service.getAge50s();
		
		model.addAttribute("age10",age10);
		model.addAttribute("age20",age20);
		model.addAttribute("age30",age30);
		model.addAttribute("age40",age40);
		model.addAttribute("age50",age50);
		
		//15번통계 : 게시판 조회수 순위
		List<StaticDTO> BoardStatic = service.getBoardStatic();
		model.addAttribute("BoardStatic", BoardStatic);
		return "static/staticList";
		
		
	}
}

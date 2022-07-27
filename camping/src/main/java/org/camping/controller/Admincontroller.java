package org.camping.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.camping.mapper.StaticMapper;
import org.camping.model.InfoDTO;
import org.camping.model.MemberDTO;
import org.camping.model.StaticDTO;
import org.camping.service.AdMemService;
import org.camping.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ad*/*")
@Controller
public class Admincontroller {

	
	
	@Autowired
	private StaticMapper sservice;
	
	@Autowired
	private AdMemService mservice;

	// ������ Ȩ
	@RequestMapping("main")
	public String main(Model model) {
		
		// �Ϻ� �湮�ڼ�
		sservice.setPageDay0();
		sservice.setPageDay1();
		model.addAttribute("todayCome",sservice.getPageDay0());
		model.addAttribute("increaseCome",sservice.getPageDay0()-sservice.getPageDay1());
		
		// �Ϻ� �����ڼ�
		model.addAttribute("todaySignin", sservice.getTodaySignIn());
		model.addAttribute("increaseSignin", sservice.getTodaySignIn()-sservice.getYesterdaySignIn());
		
		// �Ϻ� �Խñۼ�
		sservice.setNewBoard0();
		sservice.setNewBoard1();
		int todayNewPost = sservice.getNewBoard0();
		int yesterdayNewPost = sservice.getNewBoard1();
		model.addAttribute("todayNewBoard", todayNewPost);
		model.addAttribute("increasePost", todayNewPost-yesterdayNewPost);
		
		// �ð��� ���� ����
		sservice.setPageTime01();
		sservice.setPageTime02();
		sservice.setPageTime03();
		sservice.setPageTime04();
		sservice.setPageTime05();
		sservice.setPageTime06();
		sservice.setPageTime07();
		sservice.setPageTime08();
		sservice.setPageTime09();
		sservice.setPageTime10();
		sservice.setPageTime11();
		sservice.setPageTime12();
		sservice.setPageTime13();
		sservice.setPageTime14();
		sservice.setPageTime15();
		sservice.setPageTime16();
		sservice.setPageTime17();
		sservice.setPageTime18();
		sservice.setPageTime19();
		sservice.setPageTime20();
		sservice.setPageTime21();
		sservice.setPageTime22();
		sservice.setPageTime23();
		sservice.setPageTime24();
		model.addAttribute("timelist",sservice.getPageTime());
		
		// ķ����� ���ã�� ��
		model.addAttribute("EqFavStatic", sservice.getEqFavStatic());
		
		// ķ���� ���ã�� ��
		model.addAttribute("SpFavStatic", sservice.getSpFavStatic());
		
		// �Խù� ��ü ��ȸ��
		model.addAttribute("BoardStatic", sservice.getBoardStatic());
		
		// ���� ���� �� ������
		model.addAttribute("PageStatic", sservice.getPageStatic());
		
		

		// ���� ���ɼ�
		sservice.setAge10s();
		sservice.setAge20s();
		sservice.setAge30s();
		sservice.setAge40s();
		sservice.setAge50s();
		model.addAttribute("age10", sservice.getAge10s());
		model.addAttribute("age20", sservice.getAge20s());
		model.addAttribute("age30", sservice.getAge30s());
		model.addAttribute("age40", sservice.getAge40s());
		model.addAttribute("age50", sservice.getAge50s());
		
		// ������ ����
		sservice.setGenderMen();
		sservice.setGenderWomen();
		model.addAttribute("memCount",sservice.getGenderMen());
		model.addAttribute("womemCount",sservice.getGenderWomen());
	
		//(���) ����ã�� ī�װ� ���� 
		int	staticnum = 1;
		for (int i=1; i <= 10; i++) {
			int catnum = 0;
			catnum += i;
			sservice.setCategoryStatic(catnum);
		}
		List<StaticDTO> categoryStaticList = sservice.getStaticValue(staticnum);
				
		List<String> catName = new ArrayList<String>();
		for(int i=0; i < 5; i++) {
			String staticName = categoryStaticList.get(i).getStaticName();
			catName.add(sservice.getCatName(staticName));
		}
				
		model.addAttribute("catStatic", categoryStaticList);
		model.addAttribute("catName", catName);
				
		//(���) ī�װ��� �˻��� ���� �̿�� ���Ͱ� ����* 
		staticnum = 2;
		List<StaticDTO> filNameList = sservice.getFilName(staticnum);
		for(int i=0; i <=164; i++) {
			String fil = filNameList.get(i).getFil();
			sservice.setFilStatic(fil);
		}
		List<StaticDTO> EqFilStatic = sservice.getStaticValue(staticnum);
		model.addAttribute("EqFilStatic", EqFilStatic);
		
		
		return "/adMain/main";
	}
	
	
	// ������ ȸ������
	@RequestMapping("list")
	public String list(String pageNum, Model model) {
		if(pageNum == null) pageNum = "1";
		int pageSize = 30;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		int count = 0;
		count = mservice.getMemCount();
		List<InfoDTO> list = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
		if(count >0) {
			list = mservice.getMemList(startRow, endRow);
			pageCount = count / pageSize + (count%pageSize ==0 ? 0 : 1);
			startPage = (int)((currentPage / pageBlock)*pageBlock +1);
			endPage = startPage + pageBlock - 1;
			if(endPage > pageCount) {
				endPage = pageCount;
			}
		}
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("startRow", startRow);
		model.addAttribute("endRow", endRow);
		model.addAttribute("count", count);
		model.addAttribute("list", list);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("pageBlock", pageBlock);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
	
		
		return "/adMem/list";
	}
	@RequestMapping("idSerch")
	public String idSerch(String idSerch, Model model, String pageNum) {
		if(pageNum == null) pageNum = "1";
		int pageSize = 30;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize;
		int count = mservice.idCount(idSerch); 
		List<InfoDTO> list = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
		if(count > 0) {
			list = mservice.serchId(idSerch, startRow, endRow);
			pageCount = count / pageSize + (count%pageSize ==0 ? 0 : 1);
			startPage = (int)((currentPage / pageBlock)*pageBlock +1);
			endPage = startPage + pageBlock - 1;
			if(endPage > pageCount) {
				endPage = pageCount;
			}
		}
		model.addAttribute("idSerch", idSerch);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("startRow", startRow);
		model.addAttribute("endRow", endRow);
		model.addAttribute("count", count);
		model.addAttribute("list", list);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("pageBlock", pageBlock);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
	
		
		return "adMem/idSerch";
	}
	@RequestMapping("update")
	public String update(String id, int status, Model model) {
		if(status == 1) {
			mservice.memDelete(id);

		}
		if(status == 0) {
			mservice.memRestore(id);
		}
		model.addAttribute("result", status);
		return "adMem/update";
	}
}

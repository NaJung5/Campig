package org.camping.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.camping.model.BoardDTO;
import org.camping.model.ChecklistDTO;
import org.camping.model.EqcategoryDTO;
import org.camping.model.EquipDTO;
import org.camping.model.FavoriteDTO;
import org.camping.model.InfoDTO;
import org.camping.model.MemberDTO;
import org.camping.model.ReviewDTO;
import org.camping.model.SpotCategoryDTO;
import org.camping.model.SpotDTO;
import org.camping.service.MemberService;
import org.camping.service.ProdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member/*")
@Slf4j
public class MemberController {

	@Autowired
	private MemberService service;
	@Autowired
	private ProdService pservice;
	
	//회원가입폼
	@RequestMapping("signUpForm")
	public String signUpForm() {
		return "member/signUpForm";
	}
	@RequestMapping("signUpPro")
	public String signUpPro(MemberDTO dto, Model model, String id, String nickname) {
		int result = 1;
		int ids = service.idConfirm(id);
		int nicks = service.nickConfirm(id);

		if(ids == 0 && nicks == 0) {			
			service.signUp(dto);
			result = 0;
		}
		model.addAttribute("result",result);
		System.out.println(result);

		return "member/signUpPro";
	}
	//ID 중복체크
	@RequestMapping("confirmId")
	public String confirmId(String id, Model model) {
		model.addAttribute("result", service.idConfirm(id));
		model.addAttribute("id",id);
		return "member/confirmId";
	}

	//별명 중복체크
	@RequestMapping("confirmNick")
	public String ConfirmNick(String nickname, Model model) {
		model.addAttribute("result", service.nickConfirm(nickname));
		model.addAttribute("nickname",nickname);
		return "member/confirmNick";
	}
	
	// 회원가입 완료 후 진행하는 설문조사 Check에서 설문조사 내역을 확인후 진행
	@RequestMapping("surveyCheck")
	public String surveyCheck(MemberDTO dto, Model model) {		
		model.addAttribute("result", service.surveyCheck(dto));
		return "member/surveyCheck";
	}
	@RequestMapping("survey")
	public String survey(MemberDTO dto, Model model) {		
		
		return "member/survey";
	}
	@RequestMapping("surveyPro")
	public String surveyPro(MemberDTO dto,String id, Model model) {
		service.survey(dto);

		
		return "member/surveyPro";
	}
	// 로그인 화면
	@RequestMapping("loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	// status 부분에서 회원의 탈퇴여부를 판단
	@RequestMapping("loginPro")
	public String loginPro(Model model, MemberDTO dto, String id) {
		
		model.addAttribute("result", service.userCheck(dto));
		model.addAttribute("status", service.deleteUser(dto));
		model.addAttribute("ad", service.adCheck(dto));
		model.addAttribute("id", dto.getId());
		service.loginTime(dto);
		return "member/loginPro";
	}
	
	@RequestMapping("naverLoginForm")
	public String naverLogin() {

		return "member/naverLoginForm";
	}
	@RequestMapping("callback")
	public String callback() {

		return "member/callback";
	}
	
	//로그아웃
	@RequestMapping("logoutForm")
	public String logoutForm() {
		return "member/logoutForm";
	}
	// 일반 회원과 같이 작성해두니 오류나서 따로 제작
	@RequestMapping("adLogout")
	public String adLogout() {
		return "member/adLogout";
	}
	//회원탈퇴
	@RequestMapping("deleteForm")
	public String deleteForm(MemberDTO dto) {
		return "member/deleteForm";
	}
	@RequestMapping("deletePro")
	public String deletePro(MemberDTO dto, HttpSession session, Model model) {
		String memId = (String)session.getAttribute("memId");
		int result = service.userCheck(dto);
		if(result == 1) {
			service.delete(dto);	
		} 
		model.addAttribute("result", result);
		return "member/deletePro";
	}
	//마이페이지 ( 수정/탈퇴/체크리스트/작성글/즐겨찾기/후기작성 등) 
	@RequestMapping("myPage")
	public String myPageForm(MemberDTO dto,ChecklistDTO dto2,Model model, HttpSession session, String id) {
		int status = 1;
		String memId = (String)session.getAttribute("memId");
		List<InfoDTO> list = service.info(id);
		model.addAttribute("result", service.surveyCheck(dto));
		model.addAttribute("list", list);
		model.addAttribute("st", service.chlist(id,status));
		
		return "member/myPage";
	}
	
	//정보수정
	@RequestMapping("myInfo")
	public String myInfo() {	
		return "member/myInfo";
	}
	@RequestMapping("myInfoPro")
	public String myInfoPro(MemberDTO dto, Model model, HttpSession session) {			
		String memId = (String)session.getAttribute("memId");
		service.userInfo(dto);		
		return "member/myInfoPro";
	}
	

	//체크리스트 수정
	@RequestMapping("chModify")
	public String chModify(int status,Model model) {
		model.addAttribute("status", status);
		return "member/chModify";
	}
	@RequestMapping("chModifyPro")
	public String chModifyPro(int status, int price, Model model, String person,  String[] equipments, String season) {
	
		// 매트 침낭 
		model.addAttribute("mat",pservice.recomMat(price));
		// 의자 출력
		model.addAttribute("chair",pservice.recomChair(price));
		// 랜턴 출력
		model.addAttribute("light",pservice.recomLight(price));
		// 테이블 출력
		model.addAttribute("desk",pservice.recomTB(price));
		if(person.equals("1")) {
			// 텐트 출력
			model.addAttribute("tent", pservice.recomTent1(price));
			// 아이스박스 출력
			model.addAttribute("waterjug",pservice.recomWJ1(price));
			// 스토브 출력(1구)
			model.addAttribute("stove",pservice.recomStove1(price));
		}else if (person.equals("2")) {
			// 텐트 출력
			model.addAttribute("tent", pservice.recomTent2(price));
			// 아이스박스 출력
			model.addAttribute("waterjug",pservice.recomWJ2(price));
			// 스토브 출력(2구)
			model.addAttribute("stove",pservice.recomStove2(price));
		}else {
			// 텐트 출력
			model.addAttribute("tent", pservice.recomTent3(price));
			// 아이스박스 출력
			model.addAttribute("waterjug",pservice.recomWJ3(price));
			// 스토브 출력(2구)
			model.addAttribute("stove",pservice.recomStove2(price));
		}
		
		if(season.equals("1")) {
			// 침낭 출력
			model.addAttribute("sb", pservice.recomSB1(price));
			// 타프 출력
			model.addAttribute("taf",pservice.recomTaf(price));
		}else if (season.equals("2")) {
			// 침낭 출력
			model.addAttribute("sb", pservice.recomSB2(price));
			// 타프 출력
			model.addAttribute("taf",pservice.recomTaf(price));
		}else {
			// 침낭 출력
			model.addAttribute("sb", pservice.recomSB3(price));
			
		}
		model.addAttribute("tentCheck", Arrays.asList(equipments).contains("1"));
		model.addAttribute("tafCheck", Arrays.asList(equipments).contains("2"));
		model.addAttribute("waterCheck", Arrays.asList(equipments).contains("3"));
		model.addAttribute("stoveCheck", Arrays.asList(equipments).contains("4"));
		model.addAttribute("lightCheck", Arrays.asList(equipments).contains("5"));
		model.addAttribute("matCheck", Arrays.asList(equipments).contains("6"));
		model.addAttribute("sbCheck", Arrays.asList(equipments).contains("7"));
		model.addAttribute("chairCheck", Arrays.asList(equipments).contains("8"));
		model.addAttribute("tableCheck", Arrays.asList(equipments).contains("9"));
		
		
		model.addAttribute("price",price);
		model.addAttribute("equipments",equipments);
		model.addAttribute("status", status);
		
		return "member/chModifyPro";
	}
	@RequestMapping("chModifyPro2")
	public String chModifiPro2(ChecklistDTO dto) {
		service.chModify(dto);
		return "member/chModifyPro2";

	}
	//체크리스트 
	@RequestMapping("checklist")
	public String checklist(String id, Model model, HttpSession session) {		
		
		
		int status = 1;
			System.out.println(service.clTent(id, status));
			System.out.println(service.clSite(id, status));
			model.addAttribute("site", service.clSite(id, status));
			model.addAttribute("tent", service.clTent(id, status));
			model.addAttribute("taf", service.clTaf(id, status));
			model.addAttribute("waterjug", service.clWaterjug(id, status));
			model.addAttribute("stove", service.clStove(id, status));
			model.addAttribute("light", service.clLight(id, status));
			model.addAttribute("mat", service.clMat(id, status));
			model.addAttribute("sb", service.clSb(id, status));
			model.addAttribute("chair", service.clChair(id, status));
			model.addAttribute("gas", service.clGas(id, status));
			model.addAttribute("desk", service.clDesk(id, status));

			
			model.addAttribute("st", service.chlist(id,status));
			
			
		return "member/checklist";
	}
	@RequestMapping("deleteCh")
	public String deleteCh(ChecklistDTO dto, Model model, String id, int status) {
		model.addAttribute("st", service.chlist(id,status));
		service.deleteCheck(dto);
		return "member/deleteCh";
	}

	@RequestMapping("review")
	public String review(Model model, String id, int status) {
		int category = 0;
		model.addAttribute("st", service.chlist(id,status));
		return "member/review";
	}
	@RequestMapping("review2")
	public String reviewEquip(Model model, String id, int status, int category) {
		model.addAttribute("site", service.clSite(id, status));
		model.addAttribute("site", service.clSite(id, status));
		model.addAttribute("tent", service.clTent(id, status));
		model.addAttribute("taf", service.clTaf(id, status));
		model.addAttribute("waterjug", service.clWaterjug(id, status));
		model.addAttribute("stove", service.clStove(id, status));
		model.addAttribute("light", service.clLight(id, status));
		model.addAttribute("mat", service.clMat(id, status));
		model.addAttribute("sb", service.clSb(id, status));
		model.addAttribute("chair", service.clChair(id, status));
		model.addAttribute("gas", service.clGas(id, status));
		model.addAttribute("desk", service.clDesk(id, status));
		model.addAttribute("st", service.chlist(id,status));
		model.addAttribute("category", category);
		System.out.println(service.clTent(id, status));
		return "member/review2";
	}

	@RequestMapping("reviewPro")
	public String review(ReviewDTO dto,HttpSession session, String id, int num, int status, Model model) {
		model.addAttribute("st", service.chlist(id,status));
		service.review(dto);
		service.reviewEquip(num);
		return "member/reviewPro";
	}
	
	@RequestMapping("checklist2")
	public String checklist2(String id,int status, Model model, HttpSession session) {		
		String memId = (String)session.getAttribute("memId");
		if(service.chlist2(id, status) == 1) {
			model.addAttribute("site", service.clSite(id, status));
			model.addAttribute("tent", service.clTent(id, status));
			model.addAttribute("taf", service.clTaf(id, status));
			model.addAttribute("waterjug", service.clWaterjug(id, status));
			model.addAttribute("stove", service.clStove(id, status));
			model.addAttribute("light", service.clLight(id, status));
			model.addAttribute("mat", service.clMat(id, status));
			model.addAttribute("sb", service.clSb(id, status));
			model.addAttribute("chair", service.clChair(id, status));
			model.addAttribute("gas", service.clGas(id, status));
			model.addAttribute("desk", service.clDesk(id, status));
		}
		model.addAttribute("st", service.chlist(id,status));
		System.out.println(service.clTent(id, status));
		System.out.println(service.chlist(id,status));
		return "member/checklist2";
	}
	
	@RequestMapping("checklist3")
	public String checklist3(String id,int status,  Model model, HttpSession session) {		
		String memId = (String)session.getAttribute("memId");
		if(service.chlist2(id, status) == 1) {
			model.addAttribute("site", service.clSite(id, status));
			model.addAttribute("tent", service.clTent(id, status));
			model.addAttribute("taf", service.clTaf(id, status));
			model.addAttribute("waterjug", service.clWaterjug(id, status));
			model.addAttribute("stove", service.clStove(id, status));
			model.addAttribute("light", service.clLight(id, status));
			model.addAttribute("mat", service.clMat(id, status));
			model.addAttribute("sb", service.clSb(id, status));
			model.addAttribute("chair", service.clChair(id, status));
			model.addAttribute("gas", service.clGas(id, status));
			model.addAttribute("desk", service.clDesk(id, status));
		}
		model.addAttribute("st", service.chlist(id,status));
		System.out.println(service.clTent(id, status));
		return "member/checklist3";
	}

	// 즐겨찾기 & 종아요 해둔 게시글을 불러옴.
	@RequestMapping("favorite")
	public String favorite(String id, Model model, HttpSession session, String pageNum) {
		String memId = (String)session.getAttribute("memId");

		if(pageNum == null) pageNum = "1";
		int pageSize = 6;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		int count = 0;
	    count = service.favoCount(id);
	    
	    List<EquipDTO> equipList = null;
	    List<SpotDTO> campList = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
	    if(count > 0) {
	    	equipList = service.favoEquip(id, startRow, endRow);
	    	campList = service.favoCamp(id, startRow, endRow);
			pageCount = count / pageSize + (count%pageSize ==0 ? 0 : 1);
			startPage = (int)((currentPage / pageBlock)*pageBlock +1);
			endPage = startPage + pageBlock - 1;
			if(endPage > pageCount) {
				endPage = pageCount;
			}
	    }
	    
	    model.addAttribute("result", service.favoCount(id));
	    model.addAttribute("campResult", service.favoCampCh(id));
	    model.addAttribute("equipResult", service.favoEquipCh(id));
	    model.addAttribute("equipList", equipList);
	    model.addAttribute("campList", campList);
	    
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("startRow", startRow);
		model.addAttribute("endRow", endRow);
		model.addAttribute("count", count);
		
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("pageBlock", pageBlock);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		return "member/favorite";
	}

	//즐겨찾기 캠핑장
	@RequestMapping("favoCamp")
	public String favoCamp(FavoriteDTO dto, String id, Model model, HttpSession session, String pageNum) {
		String memId = (String)session.getAttribute("memId");
		
		if(pageNum == null) pageNum = "1";
		int pageSize = 5;
		int currentPage = Integer.parseInt(pageNum);
	    int startRow = (currentPage - 1) * pageSize + 1;
	    int endRow = currentPage * pageSize;
	    int count = 0;
	    int number=0;
	    count = service.favoCount(id);

	    List<SpotDTO> campList = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
	    if(count > 0) {
	    	campList = service.favoCamp(id, startRow, endRow);
			pageCount = count / pageSize + (count%pageSize ==0 ? 0 : 1);
			startPage = (int)((currentPage / pageBlock)*pageBlock +1);
			endPage = startPage + pageBlock - 1;
			if(endPage > pageCount) {
				endPage = pageCount;
			}
	    }
		
	    model.addAttribute("result", service.favoCount(id));
	    model.addAttribute("campList", campList);
	    model.addAttribute("campResult", service.favoCampCh(id));
	    
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startRow", startRow);
		model.addAttribute("endRow", endRow);
		model.addAttribute("count", count);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("pageBlock", pageBlock);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);	
		return "member/favoCamp";
	}
	//즐겨찾기 장비
	@RequestMapping("favoEquip")
	public String favoEquip(FavoriteDTO dto, String id, Model model, HttpSession session, String pageNum) {
		String memId = (String)session.getAttribute("memId");
		
		if(pageNum == null) pageNum = "1";
		int pageSize = 5;
		int currentPage = Integer.parseInt(pageNum);
	    int startRow = (currentPage - 1) * pageSize + 1;
	    int endRow = currentPage * pageSize;
	    int count = 0;
	    count = service.favoCount(id);
	    
	    List<EquipDTO> equipList = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
	    if(count > 0) {
	    	equipList = service.favoEquip(id, startRow, endRow);
			pageCount = count / pageSize + (count%pageSize ==0 ? 0 : 1);
			startPage = (int)((currentPage / pageBlock)*pageBlock +1);
			endPage = startPage + pageBlock - 1;
			if(endPage > pageCount) {
				endPage = pageCount;
			}
	    }
	    
	    model.addAttribute("result", service.favoCount(id));
	    model.addAttribute("equipResult", service.favoEquipCh(id));
		model.addAttribute("equipList", equipList);

	    model.addAttribute("pageNum", pageNum);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startRow", startRow);
		model.addAttribute("endRow", endRow);
		model.addAttribute("count", count);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("pageBlock", pageBlock);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		return "member/favoEquip";
	}
	//즐겨찾기 삭제\
	@RequestMapping("deleteFavo")
	public String deleteFavo(Model model,  HttpSession session, String id, int num, int status) {
		int result = service.deleteFavoCh(id, num, status);
			if(result == 1) {
				service.deleteFavo(id, num, status);
			}
		model.addAttribute("result", result);
		System.out.println(service.deleteFavoCh(id, num, status));
		return "member/deleteFavo";
	}
	
	// 내 작성글 보기
	@RequestMapping("myBoard")
	public String list(String pageNum , Model model, HttpSession session, BoardDTO dto) {	
		String memId = (String)session.getAttribute("memId");
		if(pageNum == null) pageNum = "1";
		int pageSize = 10;
		int currentPage = Integer.parseInt(pageNum);
	    int startRow = (currentPage - 1) * pageSize + 1;
	    int endRow = currentPage * pageSize;
	    int count = 0;
	    int number=0;
	    count = service.myBoard(memId);
	    List<BoardDTO> list = null;
	    if(count > 0) {
	    	list = service.getList(memId, startRow, endRow);
	    }
	    number=count-(currentPage-1)*pageSize;
		
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startRow", startRow);
		model.addAttribute("endRow", endRow);
		model.addAttribute("count", count);
		model.addAttribute("list", list);
		model.addAttribute("number", number);
	
		return "member/myBoard";
	}
	
}

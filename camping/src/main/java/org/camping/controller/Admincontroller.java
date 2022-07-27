package org.camping.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.camping.model.InfoDTO;
import org.camping.model.MemberDTO;
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
	private MemberService service;
	@Autowired
	private AdMemService mservice;
	
	// 관리자 홈
	@RequestMapping("main")
	public String main(HttpSession session, MemberDTO dto, Model model) {		
		String adId = (String)session.getAttribute("adId");	
		model.addAttribute("ad", service.adCheck(dto));
		System.out.println("1 : "+ adId);
		return "/adMain/main";
	}
	// 관리자 회원관리
	@RequestMapping("adMemInfo")
	public String adMemInfo(HttpSession session, MemberDTO dto, Model model) {
		String adId = (String)session.getAttribute("adId");	
		System.out.println("2 : "+ adId);
		model.addAttribute("ad", service.adCheck(dto));
		return "/adMem/adMemInfo";
	}
	@RequestMapping("list")
	public String list(String pageNum, Model model) {
		if(pageNum == null) pageNum = "1";
		int pageSize = 30;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		// 페이징 처리시 필요한 변수
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

package org.camping.controller;

import javax.servlet.http.HttpSession;

import org.camping.model.MemberDTO;
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
	// 包府磊 权
	@RequestMapping("main")
	public String main(HttpSession session, MemberDTO dto, Model model) {		
		String adId = (String)session.getAttribute("adId");	
		model.addAttribute("ad", service.adCheck(dto));
		System.out.println("1 : "+ adId);
		return "/adMain/main";
	}
	// 包府磊 雀盔包府
	@RequestMapping("adMemInfo")
	public String adMemInfo(HttpSession session, MemberDTO dto, Model model) {
		String adId = (String)session.getAttribute("adId");	
		System.out.println("2 : "+ adId);
		model.addAttribute("ad", service.adCheck(dto));
		return "/adMem/adMemInfo";
	}
}

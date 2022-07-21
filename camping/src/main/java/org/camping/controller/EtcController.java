package org.camping.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.camping.model.MemberDTO;
import org.camping.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.camping.service.StaticService;
import java.util.HashMap;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

@Controller
@RequestMapping("/*")
public class EtcController {
	@Autowired
	private MemberService service;
	
	@Autowired
	private StaticService staticService;
	
	@RequestMapping("home")
	public String home(String id, Model model, HttpSession session, MemberDTO dto,HttpServletRequest request)throws UnsupportedEncodingException {
		
		//통계
		String memId = (String)session.getAttribute("memId");
		//통계데이터 수집 및 전달 
		HashMap<String, Object> statics = new HashMap<String, Object>();
		//로그인된 아이디,비로그인시 guest
		if(session.getAttribute("memId") != null) {
			statics.put("id",(String)session.getAttribute("memId"));
			if(staticService.getStarttime(statics) == 1){
				staticService.setEndtime(statics);
			}
		}else {
			statics.put("id","guest");	
		}
				statics.put("endtime","");
		//현재 접속된 페이지
		String page = request.getRequestURI() + "?" + request.getQueryString();
		String decodedPage  = URLDecoder.decode(page, "UTF-8");         
		statics.put("page",decodedPage);
		//전 페이지
		String inflow = (String)request.getHeader("Referer");
		if(inflow != null) {
		String decodedInflow  = URLDecoder.decode(inflow, "UTF-8");        
		statics.put("inflow",decodedInflow);
		}else {
			statics.put("inflow","");	
		}		
		//접속디바이스
		String device = null;
		String agent = request.getHeader("USER-AGENT");
		if(agent.contains("iPhone")){
		device = "iPhone";
		}
		else if(agent.contains("Android")) {
			device = "Android";
		}else {
			device = "Windows";
		}
		statics.put("device",device);
		
		//검색어
			statics.put("keyword","");
		//필터체크시 
		String fil = "";
		statics.put("filter",fil);
		//통계정보전달 
		staticService.pageStatic(statics);
		String adId = (String)session.getAttribute("adId");	
	
		

		return "home";
	}
}

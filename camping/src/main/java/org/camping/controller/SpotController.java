package org.camping.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.camping.service.StaticService;
import java.util.HashMap;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;


import org.camping.model.SpotCategoryDTO;
import org.camping.model.SpotDTO;
import org.camping.service.SpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/spot/*")
public class SpotController {

	@Autowired
	private SpotService service;
	

	@Autowired
	private StaticService staticService;
	
	// 캠핑장 정보 메인 진입
	@RequestMapping("info")
	public String Info(Model model,HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException {
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
		if(request.getParameter("title") != null) {
		statics.put("keyword",request.getParameter("title"));
		}else if (request.getParameter("title") == null) {
			statics.put("keyword","");
		}
		//필터체크시 
		String fil = "";
		statics.put("filter",fil);
		//통계정보전달 
		staticService.pageStatic(statics);
		
		// 설문 안 했을때 인기 캠핑장 추천
		model.addAttribute("nonLog", service.getPopularList());
		
		// 설문 했을때 캠핑장 추천
		String answer = service.checkAns(memId);
		String[] ans = answer.split(",");
		model.addAttribute("count",service.getCountCheck(ans));
		model.addAttribute("answer",answer);
		model.addAttribute("log", service.getSearchCheck(ans, 1, 8));
		
		return "spot/main";
	}
	// 지도 검색
	@RequestMapping("map")
	public String Map(Model model, String searchMap,HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException {
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
		if(searchMap != null) {
		statics.put("keyword",searchMap);
		}else if (searchMap == null) {
			statics.put("keyword","");
		}
		//필터체크시 
		String fil = "";
		statics.put("filter",fil);
		//통계정보전달 
		staticService.pageStatic(statics);
		
		List<SpotDTO> list = service.getAllSpot();
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("mapinfo", list);
		return "spot/searchMap";
	}
	// 캠핑장 검색
	@RequestMapping("key")
	public String Key(Model model, String searchKey, String pageNum,HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException {
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
		if(searchKey != null) {
		statics.put("keyword",searchKey);
		}else if (searchKey == null) {
			statics.put("keyword","");
		}
		//필터체크시 
		String fil = "";
		statics.put("filter",fil);
		//통계정보전달 
		staticService.pageStatic(statics);
		
		// 한 화면에 나타날 캠핑장 수 
		if(pageNum == null) pageNum = "1";
		int pageSize = 8;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		int count = 0;
		count = service.getCountKey(searchKey);
		
		// 페이징 처리를 위한 변수들
		List<SpotDTO> list = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
		if(count >0) {
			list = service.getSearchKey(searchKey, startRow, endRow);
			pageCount = count / pageSize + (count%pageSize ==0 ? 0 : 1);
			startPage = (int)((currentPage / pageBlock)*pageBlock +1);
			endPage = startPage + pageBlock - 1;
			if(endPage > pageCount) {
				endPage = pageCount;
			}
		}
		
		model.addAttribute("searchKey", searchKey);
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
		return "spot/searchKey";
	}
	// 체크박스 검색
	@RequestMapping("check")
	public String Check(Model model, String[] searchCheck, String pageNum,HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException {
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
		String fil = "Sp";
		for(int i=0; i < searchCheck.length; i++) {
			fil += ","+searchCheck[i];
		}
		statics.put("filter",fil);
		//통계정보전달 
		staticService.pageStatic(statics);
		
		// 한 화면에 나타날 캠핑장 수 
		if(pageNum == null) pageNum = "1";
		int pageSize = 8;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		int count = 0;
		count = service.getCountCheck(searchCheck);
		
		// 페이징 처리를 위한 변수들
		List<SpotDTO> list = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
		if(count >0) {
			list = service.getSearchCheck(searchCheck, startRow, endRow);
			pageCount = count / pageSize + (count%pageSize ==0 ? 0 : 1);
			startPage = (int)((currentPage / pageBlock)*pageBlock +1);
			endPage = startPage + pageBlock - 1;
			if(endPage > pageCount) {
				endPage = pageCount;
			}
		}
		
		// 페이징시 쿼리 가지고 이동
		String key ="";
		if(searchCheck !=null){
			for(int i = 0 ;i < searchCheck.length; i++) {
				key += "&searchCheck="+searchCheck[i];
			}
		}
	
		model.addAttribute("key",key);
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
		return "spot/searchCheck";
	}
	// 해변 리스트
	@RequestMapping("beach")
	public String Beach(Model model, String pageNum,HttpServletRequest request,HttpSession session)throws UnsupportedEncodingException {
		
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
		
		
		// 한 화면에 나타날 캠핑장 수 
		if(pageNum == null) pageNum = "1";
		int pageSize = 8;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		int count = 0;
		count = service.getBeachCount();
		
		// 페이징 처리를 위한 변수들
		List<SpotDTO> list = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
		if(count >0) {
			list = service.getBeachList(startRow, endRow);
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
		return "spot/beach";
	}
	// 도심 리스트
	@RequestMapping("city")
	public String City(Model model, String pageNum,HttpServletRequest request,HttpSession session)throws UnsupportedEncodingException {
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
		
		// 한 화면에 나타날 캠핑장 수 
		if(pageNum == null) pageNum = "1";
		int pageSize = 8;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		int count = 0;
		count = service.getCityCount();
		
		// 페이징 처리를 위한 변수들
		List<SpotDTO> list = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
		if(count >0) {
			list = service.getCityList(startRow, endRow);
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
		return "spot/city";
	}
	// 숲 리스트
	@RequestMapping("forest")
	public String Forest(Model model, String pageNum,HttpServletRequest request,HttpSession session)throws UnsupportedEncodingException {
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
		
		// 한 화면에 나타날 캠핑장 수 
		if(pageNum == null) pageNum = "1";
		int pageSize = 8;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		int count = 0;
		count = service.getForestCount();
		
		// 페이징 처리를 위한 변수들
		List<SpotDTO> list = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
		if(count >0) {
			list = service.getForestList(startRow, endRow);
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
		return "spot/forest";
	}
	// 섬 리스트
	@RequestMapping("island")
	public String Island(Model model, String pageNum,HttpServletRequest request,HttpSession session)throws UnsupportedEncodingException {
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
		
		// 한 화면에 나타날 캠핑장 수 
		if(pageNum == null) pageNum = "1";
		int pageSize = 8;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		int count = 0;
		count = service.getIslandCount();
		
		// 페이징 처리를 위한 변수들
		List<SpotDTO> list = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
		if(count >0) {
			list = service.getIslandList(startRow, endRow);
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
		return "spot/island";
	}
	// 산,계곡 리스트
	@RequestMapping("mountain")
	public String Mountain(Model model, String pageNum,HttpServletRequest request,HttpSession session)throws UnsupportedEncodingException {


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
		
		// 한 화면에 나타날 캠핑장 수 
		if(pageNum == null) pageNum = "1";
		int pageSize = 8;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		int count = 0;
		count = service.getMountainCount();
		
		// 페이징 처리를 위한 변수들
		List<SpotDTO> list = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
		if(count >0) {
			list = service.getMountainList(startRow, endRow);
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
		return "spot/mountain";
	}
	// 강 리스트
	@RequestMapping("river")
	public String River(Model model, String pageNum,HttpServletRequest request,HttpSession session)throws UnsupportedEncodingException {


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
		
		// 한 화면에 나타날 캠핑장 수 
		if(pageNum == null) pageNum = "1";
		int pageSize = 8;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		int count = 0;
		count = service.getRiverCount();
		
		// 페이징 처리를 위한 변수들
		List<SpotDTO> list = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
		if(count >0) {
			list = service.getRiverList(startRow, endRow);
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
		return "spot/river";
	}
	// 미디어 나온 리스트
	@RequestMapping("media")
	public String Media(Model model, String pageNum,HttpServletRequest request,HttpSession session)throws UnsupportedEncodingException {
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
		
		// 한 화면에 나타날 캠핑장 수 
		if(pageNum == null) pageNum = "1";
		int pageSize = 4;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize+1 ;
		int endRow = (currentPage) * pageSize ;
		int count = 0;
		count = service.getMediaCount();
		// 페이징 처리를 위한 변수들
		List<SpotDTO> list = null;
		int pageCount = 0;
		int pageBlock = 10;
		int startPage = 0;
		int endPage = 0;
		if(count >0) {
			list = service.getMedia(startRow, endRow);
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
		
		return "spot/media";
	}
	//캠핑장 정보
	@RequestMapping("campingspot")
	public String campingspot(Model model, int num, HttpServletRequest request, HttpSession session)throws UnsupportedEncodingException {
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
		String fils = "";
		statics.put("filter",fils);
		//통계정보전달 
		staticService.pageStatic(statics);

		// 조회수 증가
		service.updateRead(num);
		// 필터의 쉼표 개수 체크
		int filCount = service.getCountFil(num);
		ArrayList fil = new ArrayList();
		// 쉼표갯수가 양수이면 그 숫자만큼 반복문으로 돌려서 나온 카테고리 문자들 list fil에 집어넣음
		if(filCount>0) {
			for(int filNum = 1; filNum<filCount+1; filNum++) {
				String filName = service.getFil(filNum, num);
				fil.add(filName);
			}
		}
		// 나온 카테고리들을 카테고리 DTO를 통해서 내용 같이 불러옴
		List<SpotCategoryDTO> filList = service.getContentFil(fil);
		// cate = exp로 키와 벨류 지정
		HashMap<String,String> filMap = new HashMap();
		for (SpotCategoryDTO item : filList) {
			filMap.put(item.getCate(), item.getExp()+" ");
		}
		int result = service.checkFav(memId, num);
		model.addAttribute("result", result);	
		model.addAttribute("spot", service.getContent(num));
		model.addAttribute("fil",filMap);
		return "spot/content";
	}
	
	// 캠핑장 즐겨찾기
	@RequestMapping("fav")
	public String fav(Model model, int num, String id) {
		int result = service.checkFav(id, num);
		if(result == 0) {
			service.inFav(id, num);
		}else{
			service.delFav(id, num);
		}
		model.addAttribute("num", num);
		model.addAttribute("result", result);
		return "spot/favoritePro";
	}
}

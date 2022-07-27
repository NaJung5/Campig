package org.camping.controller;

import org.camping.service.BoardService;
import org.camping.service.StaticService;
import java.io.File;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.camping.model.BoardDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import org.camping.service.StaticService;
import java.util.HashMap;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private StaticService staticService;

	
	// 글 쓰기 폼
	@RequestMapping("writeForm")
	public String writeForm(BoardDTO dto, Model model, String id) {
		
		model.addAttribute("nick", service.findNickname(id));
		return "/board/writeForm";
	}
	
	// 글 쓰기 프로
	@RequestMapping("writePro")
	public String writePro(BoardDTO dto, MultipartFile mf, MultipartHttpServletRequest request,HttpServletRequest Httprequest,HttpSession session)  throws Exception , UnsupportedEncodingException  {
			
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
				String searchMap = "";
				statics.put("keyword","");
				
				//필터체크시 
				String fil = "";
				statics.put("filter",fil);
				//통계정보전달 
				staticService.pageStatic(statics);
	
		// 파일 업로드
		mf = request.getFile("img");	// 업로드 파라미터
		// 사진이 있을경우
		if(!mf.isEmpty()) {
			String path = request.getRealPath("resources/img");	
			String fileName = mf.getOriginalFilename();		// 업로드 파일 이름
			File upload = new File(path+"//"+fileName);
			mf.transferTo(upload);

			dto.setImage(fileName);
		}else {
			// 없을 경우
			dto.setImage("");
		}
				
		service.insertBoard(dto);
		
		return "/board/writePro";
	}
	
	
	// 글 내용
	@RequestMapping("content")
	public String content(int boardnum , String pageNum , Model model, int category, HttpSession session) {
		
		String memId = (String)session.getAttribute("memId");
		if(memId != null) {			
			model.addAttribute("nick", service.findNickname(memId));
		}
		
		model.addAttribute("category", category);
		model.addAttribute("board", service.getBoard(boardnum));
		model.addAttribute("pageNum", pageNum);
		
		return "/board/content";
	}
	
	 
	// 글 수정 폼
	@RequestMapping("updateForm")
	public String updateForm(int boardnum, String pageNum, Model model, HttpSession session) {
		
		String memId = (String)session.getAttribute("memId");
		model.addAttribute("board",service.getBoard(boardnum));
		model.addAttribute("pageNum",pageNum);			
		
		return "/board/updateForm";
	}
		
	// 글 수정 프로
	@RequestMapping("updatePro")
	public String updatePro(BoardDTO dto, String pageNum , Model model, HttpSession session, MultipartFile mf, MultipartHttpServletRequest request) throws Exception {
			
		String memId = (String)session.getAttribute("memId");
		model.addAttribute("pageNum",pageNum);	
		
		// 파일 업로드
		mf = request.getFile("img");	// 업로드 파라미터
		// 사진이 있을경우
		if(!mf.isEmpty()) {
			String path = request.getRealPath("resources/img");	
			String fileName = mf.getOriginalFilename();		// 업로드 파일 이름
			File upload = new File(path+"//"+fileName);
			mf.transferTo(upload);

			dto.setImage(fileName);
		}else {
			// 없을 경우
			dto.setImage("");
		}
		model.addAttribute("result",service.updateBoard(dto));
		
		return "/board/updatePro";
	}
	
	// 글 삭제 폼
	@RequestMapping("deleteForm")
	public String deleteForm(int boardnum, String pageNum , String writer, Model model, HttpSession session) {
		String memId = (String)session.getAttribute("memId");

		model.addAttribute("nick", service.findNickname(memId));
		model.addAttribute("pageNum",pageNum);	
		model.addAttribute("boardnum",boardnum);
		model.addAttribute("writer",writer);
		
		return "/board/deleteForm";
	}
	
	// 글 삭제 프로
	@RequestMapping("deletePro")
	public String deletePro(String pageNum , Model model, BoardDTO dto) {
			
		int result = service.deleteStatus(dto); 		
		
		model.addAttribute("pageNum",pageNum);
		model.addAttribute("result",result);
		
		return "/board/deletePro";
	}
	
	// 캠핑장 후기 글 목록
	@RequestMapping("campspot") 
	public String campspot (int category, String pageNum, Model model ) {
		
		if(pageNum == null) pageNum ="1";
			int pageSize = 10;
			int currentPage = Integer.parseInt(pageNum);
			int startRow = (currentPage - 1) * pageSize +1;
			int endRow = currentPage * pageSize;
			int count = 0;
			int number = 0;
		count = service.categoryCheckCount(category);
		List<BoardDTO> boardList = null;
		
		if(count > 0) {
			boardList = service.categoryCheck(category, startRow, endRow);
		}
		number = count - (currentPage-1) * pageSize;
		 
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("pageSize", pageSize);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
			model.addAttribute("count", count);
			model.addAttribute("boardList", boardList);
			model.addAttribute("number", number);
		 	
		return "/board/campspot"; 
	}
	
	// 장비 후기 글 목록
	@RequestMapping("equipment") 
	public String equipment (int category, String pageNum, Model model ) {
		
		if(pageNum == null) pageNum ="1";
			int pageSize = 10;
			int currentPage = Integer.parseInt(pageNum);
			int startRow = (currentPage - 1) * pageSize +1;
			int endRow = currentPage * pageSize;
			int count = 0;
			int number = 0;
		count = service.categoryCheckCount(category);
		List<BoardDTO> boardList = null;
		
		if(count > 0) {
			boardList = service.categoryCheck(category, startRow, endRow);
		}
		number = count - (currentPage-1) * pageSize;
		
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("pageSize", pageSize);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
			model.addAttribute("count", count);
			model.addAttribute("boardList", boardList);
			model.addAttribute("number", number);
		 	
		return "/board/equipment"; 
	}
	
	// 캠핑 요리 글 목록
	@RequestMapping("recipe") 
	public String recipe (int category, String pageNum, Model model ) {
		
		if(pageNum == null) pageNum ="1";
			int pageSize = 10;
			int currentPage = Integer.parseInt(pageNum);
			int startRow = (currentPage - 1) * pageSize +1;
			int endRow = currentPage * pageSize;
			int count = 0;
			int number = 0;
		count = service.categoryCheckCount(category);
		List<BoardDTO> boardList = null;
		
		if(count > 0) {
			boardList = service.categoryCheck(category, startRow, endRow);
		}
		number = count - (currentPage-1) * pageSize;
		
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("pageSize", pageSize);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
			model.addAttribute("count", count);
			model.addAttribute("boardList", boardList);
			model.addAttribute("number", number);
		 	
		return "/board/recipe"; 
	}
	
	// 질문 글 목록
	@RequestMapping("question") 
	public String question (int category, String pageNum, Model model ) {
		
		if(pageNum == null) pageNum ="1";
			int pageSize = 10;
			int currentPage = Integer.parseInt(pageNum);
			int startRow = (currentPage - 1) * pageSize +1;
			int endRow = currentPage * pageSize;
			int count = 0;
			int number = 0;
		count = service.categoryCheckCount(category);
		List<BoardDTO> boardList = null;
		
		if(count > 0) {
			boardList = service.categoryCheck(category, startRow, endRow);
		}
		number = count - (currentPage-1) * pageSize;
		 
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("pageSize", pageSize);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
			model.addAttribute("count", count);
			model.addAttribute("boardList", boardList);
			model.addAttribute("number", number);
		 	
		return "/board/question"; 
	}

	// 팁 글 목록
	@RequestMapping("tip") 
	public String tip (int category, String pageNum, Model model ) {
		
		if(pageNum == null) pageNum ="1";
			int pageSize = 10;
			int currentPage = Integer.parseInt(pageNum);
			int startRow = (currentPage - 1) * pageSize +1;
			int endRow = currentPage * pageSize;
			int count = 0;
			int number = 0;
		count = service.categoryCheckCount(category);
		List<BoardDTO> boardList = null;
		
		if(count > 0) {
			boardList = service.categoryCheck(category, startRow, endRow);
		}
		number = count - (currentPage-1) * pageSize;
		 
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("pageSize", pageSize);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
			model.addAttribute("count", count);
			model.addAttribute("boardList", boardList);
			model.addAttribute("number", number);
		 	
		return "/board/tip"; 
	}
	
	// 건의사항 글 목록
	@RequestMapping("suggestion") 
	public String suggestion (int category, String pageNum, Model model, HttpSession session, String id) {
		String memId = (String)session.getAttribute("memId");

		if(pageNum == null) pageNum ="1";
			int pageSize = 10;
			int currentPage = Integer.parseInt(pageNum);
			int startRow = (currentPage - 1) * pageSize +1;
			int endRow = currentPage * pageSize;
			int count = 0;
			int number = 0;
		count = service.categoryCheckCount(category);
		List<BoardDTO> boardList = null;
		
		if(count > 0) {
			boardList = service.categoryCheck(category, startRow, endRow);
		}
		number = count - (currentPage-1) * pageSize;

		if(memId != null) {
			model.addAttribute("nick", service.findNickname(memId));
		}
		else {
			model.addAttribute("nick", service.findNickname(id));
		}
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("pageSize", pageSize);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
			model.addAttribute("count", count);
			model.addAttribute("boardList", boardList);
			model.addAttribute("number", number);
		return "/board/suggestion"; 
	}
	
	// 공지사항 글 목록
	@RequestMapping("notice") 
	public String notice (int category, String pageNum, Model model) {
			
		if(pageNum == null) pageNum ="1";
			int pageSize = 10;
			int currentPage = Integer.parseInt(pageNum);
			int startRow = (currentPage - 1) * pageSize +1;
			int endRow = currentPage * pageSize;
			int count = 0;
			int number = 0;
		count = service.categoryCheckCount(category);
		List<BoardDTO> boardList = null;
		
		if(count > 0) {
			boardList = service.categoryCheck(category, startRow, endRow);
		}
		number = count - (currentPage-1) * pageSize;
		
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("pageSize", pageSize);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("startRow", startRow);
			model.addAttribute("endRow", endRow);
			model.addAttribute("count", count);
			model.addAttribute("boardList", boardList);
			model.addAttribute("number", number);
		 	
		return "/board/notice"; 
	}
	
}
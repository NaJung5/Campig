package org.camping.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.camping.model.BoardDTO;
import org.camping.model.CommentBoardDTO;
import org.camping.service.CommentBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/commentboard/*")
public class CommentBoardController {
	
	@Autowired
	private CommentBoardService service;
	
	// ´ñ±Û ³»¿ë
	@RequestMapping("content")
	public String content(int comnum, String pageNum, Model model) {
		
		model.addAttribute("commentboard", service.getCommentBoard(comnum));
		model.addAttribute("pageNum",pageNum);
		
		return "/commentboard/content";
	}

	// ´ñ±Û »èÁ¦ Æû
	@RequestMapping("deleteForm")
	public String deleteForm(int comnum, String pageNum , Model model) {

		model.addAttribute("pageNum",pageNum);	
		model.addAttribute("comnum",comnum);
		
		return "/commentboard/deleteForm";
	}
	
	// ´ñ±Û »èÁ¦ ÇÁ·Î
	@RequestMapping("deletePro")
	public String deletePro(String pageNum , Model model, CommentBoardDTO dto) {
		System.out.println(pageNum);
		
		int result = service.delete(dto);		
		if(result == 1) {
			service.deleteCommentBoard(dto);
		}
		model.addAttribute("pageNum",pageNum);
		model.addAttribute("result",result);
		
		return "/commentboard/deletePro";
	}
	
	// ´ñ±Û ¾²±â Æû
	@RequestMapping("writeForm")
	public String writeForm(int boardnum, CommentBoardDTO dto, Model model, HttpSession session) {
		
		String memId = (String)session.getAttribute("memId");
		model.addAttribute("boardnum", boardnum);
		
		return "/commentboard/writeForm";
	}
	
	// ´ñ±Û ¾²±â ÇÁ·Î
	@RequestMapping("writePro")
	public String writePro(CommentBoardDTO dto) {
		
		service.insertCommentBoard(dto);
		
		return "/commentboard/writePro";
	}
	
	// ´ñ±Û ¸ñ·Ï
	@RequestMapping("list")
	public String list (String pageNum, Model model) {
		 if(pageNum == null) pageNum ="1";
		 int pageSize = 10;
		 int currentPage = Integer.parseInt(pageNum);
		 int startRow = (currentPage - 1) * pageSize +1;
		 int endRow = currentPage * pageSize;
		 int count = 0;
		 int number = 0;
		 count = service.getCommentBoardCount();
		 List<CommentBoardDTO> boardList = null;
		 if(count > 0) {
			 boardList = service.getCommentBoards(startRow, endRow);
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
		 	
		 	return "/commentboard/list"; 
	}
	
	// ´ñ±Û ¼öÁ¤ Æû
	@RequestMapping("updateForm")
	public String updateForm(int comnum, String pageNum, Model model, HttpSession session) {
		
		int boardnum = (int)session.getAttribute("boardnum");
		String memId = (String)session.getAttribute("memId");
		model.addAttribute("commentboard",service.getCommentBoard(comnum));
		model.addAttribute("pageNum",pageNum);	
		
		return "/commentboard/updateForm";
	}
	
	// ´ñ±Û ¼öÁ¤ ÇÁ·Î
	@RequestMapping("updatePro")
	public String updatePro(CommentBoardDTO dto, String pageNum , Model model) {
		
		model.addAttribute("result",service.updateCommentBoard(dto));
		model.addAttribute("pageNum",pageNum);	
		
		return "/commentboard/updatePro";
	}
	
	/*
	 * @RequestMapping("") public String () { return "/commentboard/"; }
	 * 
	 * @RequestMapping("") public String () { return "/commentboard/"; }
	 */

}

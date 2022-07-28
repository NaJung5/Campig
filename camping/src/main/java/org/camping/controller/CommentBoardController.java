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
	
	// ´ñ±Û »èÁ¦ Æû
	@RequestMapping("deleteForm")
	public String deleteForm(int comnum, String writer , Model model, CommentBoardDTO dto) {
		model.addAttribute("comnum",comnum);
		int result = service.delete(dto);		
		if(result == 1) {
			service.deleteCommentBoard(comnum, writer);
		}
		model.addAttribute("result",result);
		
		return "/commentboard/deleteForm";
	}
	
	// ´ñ±Û ¾²±â ÇÁ·Î
	@RequestMapping("writePro")
	public String writePro(CommentBoardDTO dto) {
		service.insertCommentBoard(dto);
		return "/commentboard/writePro";
	}
	
	// ´ñ±Û ¸ñ·Ï
	@RequestMapping("list")
	public String list (String pageNum, Model model, String writer, int boardnum) {
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
			boardList = service.getCommentBoards(startRow, endRow, boardnum);
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
}

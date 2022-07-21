package org.camping.controller;

import org.camping.service.BoardService;
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


@Controller
@RequestMapping("/board/*")
public class BoardController {
   
   @Autowired
   private BoardService service;
   
   // 글 쓰기 폼
   @RequestMapping("writeForm")
   public String writeForm(BoardDTO dto) {
      
      return "/board/writeForm";
   }
   
   // 글 쓰기 프로
   @RequestMapping("writePro")
   public String writePro(BoardDTO dto, MultipartFile mf, MultipartHttpServletRequest request) throws Exception  {
      
      // 파일 업로드
      mf = request.getFile("img");   // 업로드 파라미터
      String path = request.getRealPath("resources/img");   
      String fileName = mf.getOriginalFilename();      // 업로드 파일 이름
      File upload = new File(path+"//"+fileName);
      mf.transferTo(upload);
      
      dto.setImage(fileName);
      
      service.insertBoard(dto);
      
      return "/board/writePro";
   }
   
   // 글 쓰기 폼
   @RequestMapping("sgWriteForm")
   public String sgWriteForm(BoardDTO dto) {
         
      return "/board/sgWriteForm";
   }
      
   // 글 쓰기 프로
   @RequestMapping("sgWritePro")
   public String sgWritePro(BoardDTO dto, MultipartFile mf, MultipartHttpServletRequest request) throws Exception  {
         
      // 파일 업로드
      mf = request.getFile("img");   // 업로드 파라미터
      String path = request.getRealPath("resources/img");   
      String fileName = mf.getOriginalFilename();      // 업로드 파일 이름
      File upload = new File(path+"//"+fileName);
      mf.transferTo(upload);
         
      dto.setImage(fileName);
         
      service.insertBoard(dto);
         
      return "/board/writePro";
   }
   
   // 글 내용
   @RequestMapping("content")
   public String content(int boardnum , String pageNum , Model model) {
      
      model.addAttribute("board", service.getBoard(boardnum));
      model.addAttribute("pageNum",pageNum);
      
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
   public String updatePro(BoardDTO dto, String pageNum , Model model, HttpSession session) {
         
      String memId = (String)session.getAttribute("memId");
      model.addAttribute("pageNum",pageNum);   
      model.addAttribute("result",service.updateBoard(dto));
      
      return "/board/updatePro";
   }
   
   // 글 삭제 폼
   @RequestMapping("deleteForm")
   public String deleteForm(int boardnum, String pageNum , String writer, Model model) {
      
      model.addAttribute("pageNum",pageNum);   
      model.addAttribute("boardnum",boardnum);
      model.addAttribute("writer",writer);
      
      return "/board/deleteForm";
   }
   
   // 글 삭제 프로
   @RequestMapping("deletePro")
   public String deletePro(String pageNum , Model model, BoardDTO dto) {
      System.out.println(pageNum);
   
      int result = service.delete(dto);      
      if(result == 1) {
         service.deleteBoard(dto);
      }
      model.addAttribute("pageNum",pageNum);
      model.addAttribute("result",result);
      
      return "/board/deletePro";
   }

   // 건의사항 글 삭제 폼
   @RequestMapping("sgDeleteForm")
   public String sgDeleteForm(int boardnum, String pageNum , Model model) {
      
      model.addAttribute("pageNum",pageNum);   
      model.addAttribute("boardnum",boardnum);
      
      return "/board/sgDeleteForm";
   }
      
   // 건의사항 글 삭제 프로
   @RequestMapping("sgDeletePro")
   public String sgDeletePro(String pageNum , Model model, BoardDTO dto) {
      System.out.println(pageNum);
   
      int result = service.sgDelete(dto);      
      if(result == 1) {
         service.sgDeleteBoard(dto);
      }
      model.addAttribute("pageNum",pageNum);
      model.addAttribute("result",result);
      
      return "/board/sgDeletePro";
   }   

   // 글 목록
   @RequestMapping("list") 
   public String list (String pageNum, Model model) {
      if(pageNum == null) pageNum ="1";
         int pageSize = 10;
         int currentPage = Integer.parseInt(pageNum);
         int startRow = (currentPage - 1) * pageSize +1;
         int endRow = currentPage * pageSize;
         int count = 0;
         int number = 0;
      count = service.getBoardCount();
      List<BoardDTO> boardList = null;
      
      if(count > 0) {
         boardList = service.getBoards(startRow, endRow);
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
          
      return "/board/list"; 
   }
   
   // 캠핑장 후기 글 목록
   @RequestMapping("campspot") 
   public String campspot (int category, String pageNum, Model model) {
      
      if(pageNum == null) pageNum ="1";
         int pageSize = 10;
         int currentPage = Integer.parseInt(pageNum);
         int startRow = (currentPage - 1) * pageSize +1;
         int endRow = currentPage * pageSize;
         int count = 0;
         int number = 0;
      count = service.categoryCheckCount();
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
   public String equipment (int category, String pageNum, Model model) {
      
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
   public String recipe (int category, String pageNum, Model model) {
      
      if(pageNum == null) pageNum ="1";
         int pageSize = 10;
         int currentPage = Integer.parseInt(pageNum);
         int startRow = (currentPage - 1) * pageSize +1;
         int endRow = currentPage * pageSize;
         int count = 0;
         int number = 0;
      count = service.categoryCheckCount();
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
   public String question (int category, String pageNum, Model model) {
      
      if(pageNum == null) pageNum ="1";
         int pageSize = 10;
         int currentPage = Integer.parseInt(pageNum);
         int startRow = (currentPage - 1) * pageSize +1;
         int endRow = currentPage * pageSize;
         int count = 0;
         int number = 0;
      count = service.categoryCheckCount();
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
   public String tip (int category, String pageNum, Model model) {
      
      if(pageNum == null) pageNum ="1";
         int pageSize = 10;
         int currentPage = Integer.parseInt(pageNum);
         int startRow = (currentPage - 1) * pageSize +1;
         int endRow = currentPage * pageSize;
         int count = 0;
         int number = 0;
      count = service.categoryCheckCount();
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
   public String suggestion (int category, String pageNum, Model model) {
      
      if(pageNum == null) pageNum ="1";
         int pageSize = 10;
         int currentPage = Integer.parseInt(pageNum);
         int startRow = (currentPage - 1) * pageSize +1;
         int endRow = currentPage * pageSize;
         int count = 0;
         int number = 0;
      count = service.categoryCheckCount();
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
          
      return "/board/suggestion"; 
   }
   
}
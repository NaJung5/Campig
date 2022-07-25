package org.camping.service;

import java.util.List;
import org.camping.model.BoardDTO;
import org.camping.model.MemberDTO;

public interface BoardService {
	
	public BoardDTO getBoard(int boardnum);
	
	public List<BoardDTO> getBoards(int startRow, int endRow);

	public List<BoardDTO> categoryCheck(int category, int startRow, int endRow);
	
	public int getBoardCount();
	
	public String findNickname(String id);
	
	public int categoryCheckCount(int category);
	
	public int insertBoard(BoardDTO dto);
	
	public int insertSGBoard(BoardDTO dto);
	
	public int updateBoard(BoardDTO dto);
	
	public int deleteStatus(BoardDTO dto);
	
	public void deleteBoard(BoardDTO dto);
	
	public int delete(BoardDTO dto);
	
	public void sgDeleteBoard(BoardDTO dto);
	
	public int sgDelete(BoardDTO dto);
}

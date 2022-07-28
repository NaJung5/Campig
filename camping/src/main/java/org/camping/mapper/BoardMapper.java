package org.camping.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.camping.model.BoardDTO;

public interface BoardMapper {
	
	public int getBoardCount();
	
	public int categoryCheckCount(@Param("category") int category);
	
	public List<BoardDTO> getBoards(@Param("startRow") int startRow, @Param("endRow") int endRow);
	
	public List<BoardDTO> categoryCheck(@Param("category") int category, @Param("startRow") int startRow, @Param("endRow") int endRow);
	
	public int maxNum();
	
	public BoardDTO getBoard(int boardnum);
	
	public String findNickname(String id);
	
	public int insertBoard(BoardDTO dto);
	
	public void readCountUp(int boardnum);
	
	public int updateBoard(BoardDTO dto);
	
	public int deleteStatus(BoardDTO dto);
	
}

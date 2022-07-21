package org.camping.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.camping.model.BoardDTO;
import org.camping.model.CommentBoardDTO;
public interface CommentBoardMapper {
	
	public int getCommentBoardCount();
	
	public List<CommentBoardDTO> getCommentBoards(@Param("startRow") int startRow, @Param("endRow") int endRow);
	
	public int maxNum();
	
	public void stepUp(CommentBoardDTO dto);
	
	public CommentBoardDTO getCommentBoard(int comnum);
	
	public BoardDTO getBoard(int boardnum);
	
	public void insertCommentBoard(CommentBoardDTO dto);
	
	public int updateCommentBoard(CommentBoardDTO dto);

	public void deleteCommentBoard(CommentBoardDTO dto);
	
	public int delete(CommentBoardDTO dto);
}

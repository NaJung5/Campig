package org.camping.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.camping.model.BoardDTO;
import org.camping.model.CommentBoardDTO;

public interface CommentBoardMapper {
	
	public int getCommentBoardCount();
	
	public List<CommentBoardDTO> getCommentBoards(@Param("startRow") int startRow, @Param("endRow") int endRow, @Param("boardnum")int boardnum);
	
	public int maxNum();
	
	public void stepUp(CommentBoardDTO dto);
	
	public CommentBoardDTO getCommentBoard(int comnum);
	
	public BoardDTO getBoard(int boardnum);
	
	public void insertCommentBoard(CommentBoardDTO dto);
	
	public int updateCommentBoard(CommentBoardDTO dto);

	public void deleteCommentBoard(@Param("comnum")int comnum, @Param("writer")String writer);
	
	public int delete(CommentBoardDTO dto);
	
	public int allCommentDelete(int boardnum);
}

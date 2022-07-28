package org.camping.service;

import java.util.List;
import org.camping.model.BoardDTO;
import org.camping.model.CommentBoardDTO;

public interface CommentBoardService {
	
	public CommentBoardDTO getCommentBoard(int comnum);
	
	public BoardDTO getBoard(int boardnum);
	
	public int getCommentBoardCount();
	
	public List<CommentBoardDTO> getCommentBoards(int startRow, int endRow, int boardnum);
	
	public void insertCommentBoard(CommentBoardDTO dto);
	
	public int updateCommentBoard(CommentBoardDTO dto);

	public void deleteCommentBoard(int comnum, String writer);
	
	public int delete(CommentBoardDTO dto);
	
	public int allCommentDelete(int boardnum);
}

package org.camping.service;

import java.util.List;
import org.camping.mapper.CommentBoardMapper;
import org.camping.model.BoardDTO;
import org.camping.model.CommentBoardDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentBoardServiceImpl implements CommentBoardService {

	@Autowired
	private CommentBoardMapper mapper;
	
	@Override
	public CommentBoardDTO getCommentBoard(int comnum) {
		return mapper.getCommentBoard(comnum);
	}
	
	@Override
	public BoardDTO getBoard(int boardnum) {
		return mapper.getBoard(boardnum);
	}
	
	@Override
	public List<CommentBoardDTO> getCommentBoards(int startRow, int endRow, int boardnum) {
		return mapper.getCommentBoards(startRow, endRow, boardnum);
	}
	
	@Override
	public int getCommentBoardCount() {
		return mapper.getCommentBoardCount();
	}
	
	@Override
	public void insertCommentBoard(CommentBoardDTO dto) {	// number는 ref(그룹번호).
		int number = mapper.maxNum()+1;
		
		if(dto.getBoardnum() != 0) {				// 답글쓰기 할때만! 그룹ref는 같으니까 안써줘도돼, else는 새글일때! 0이니까 할 필요 없음.
			mapper.stepUp(dto);
			dto.setCom_ref(dto.getCom_ref()+1);		// dto에서 꺼낸거를 다시 set해줌.
			dto.setCom_step(dto.getCom_step()+1);
		}else{
			dto.setCom_ref(number);	// 
		}
		mapper.insertCommentBoard(dto);
	}
	
	@Override
	public int updateCommentBoard(CommentBoardDTO dto) {
		return mapper.updateCommentBoard(dto);
	}
	
	@Override
	public void deleteCommentBoard(int comnum, String writer) {
		mapper.deleteCommentBoard(comnum, writer);
	}
	
	@Override
	public int delete(CommentBoardDTO dto) {
		return mapper.delete(dto);
	}
	
	@Override
	public int allCommentDelete(int boardnum) {
		return mapper.allCommentDelete(boardnum);
	}
}

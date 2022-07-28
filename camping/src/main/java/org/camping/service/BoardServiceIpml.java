package org.camping.service;

import org.camping.model.BoardDTO;
import java.util.List;
import org.camping.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceIpml implements BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public BoardDTO getBoard(int boardnum) {
		mapper.readCountUp(boardnum);
		return mapper.getBoard(boardnum);
	}
	
	@Override
	public List<BoardDTO> getBoards(int startRow, int endRow) {
		return mapper.getBoards(startRow, endRow);
	}
	
	@Override
	public List<BoardDTO> categoryCheck(int category, int startRow, int endRow) {
		return mapper.categoryCheck(category, startRow, endRow); 
	}
	
	@Override
	public int getBoardCount() {
		return mapper.getBoardCount();
	}
	
	@Override
	public String findNickname(String id) {
		return mapper.findNickname(id);
	}
	
	@Override
	public int categoryCheckCount(int category) {
		return mapper.categoryCheckCount(category);
	}
	
	@Override
	public int insertBoard(BoardDTO dto) {
		int result=mapper.insertBoard(dto);
		return result;
	}
	
	@Override
	public int updateBoard(BoardDTO dto) {
		return mapper.updateBoard(dto);
	}
	
	@Override
	public int deleteStatus(BoardDTO dto) {
		return mapper.deleteStatus(dto);
	}

}
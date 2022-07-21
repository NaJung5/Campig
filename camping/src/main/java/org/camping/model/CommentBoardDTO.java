package org.camping.model;

import java.util.Date;
import lombok.Data;

@Data
public class CommentBoardDTO {
	
	public int comnum;			// 댓글 번호
	public int boardnum;		// 글번호
	public String content;		// 댓글내용
	public String writer;		// 댓글쓴이
	public String password;		// 비댓 비번
	public Date reg;			// 등록일시
	public int com_ref;			// 대댓작성시 (원글)댓글번호
	public int com_step;		// 대댓 갯수
}

package org.camping.model;

import java.util.Date;
import lombok.Data;

@Data
public class BoardDTO {
	
	private int boardnum;		// 글번호
	private int category;		// 카테고리
	private String title;		// 제목
	private String content;		// 글내용
	private String writer;		// 작성자
	private String image;		// 첨부이미지
	private String password;	//비밀번호
	private int readcount;		// 조회수
	private Date reg;			// 작성일시
	private int status;			// 글 상태
	
}

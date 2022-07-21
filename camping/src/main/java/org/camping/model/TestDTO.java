package org.camping.model;

import lombok.Data;

@Data 
public class TestDTO { 

	private int boardnum;		// 글번호
	private int catcode;		// 카테고리
	private String title;		// 제목
	private String content;		// 글내용
	private String writer;		// 글쓴이
	private String password;	// 비밀글 비번
	private String image;		// 이미지
}

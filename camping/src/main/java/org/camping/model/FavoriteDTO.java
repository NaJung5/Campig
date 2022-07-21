package org.camping.model;

import lombok.Data;

@Data
public class FavoriteDTO {
	private String id;				// 회원 ID
	private int status;				// 게시판 종류 (캠피장, 장비, 게시판)
	private int num;				// 글 번호
	
}

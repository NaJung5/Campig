package org.camping.model;

import lombok.Data;

@Data
public class ReviewDTO {
	private String id;//아이디
	private int category;//0-장비 , 1-캠핑장
	private int num;//해당 번호
	private int score;//별정
	private String content;//리뷰내용
	private int status;//체크리스트의 status
	private int review;
	
	
}

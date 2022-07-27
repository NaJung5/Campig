package org.camping.model;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;


@Data
public class EquipDTO {
	private int num; //상품번호
	private String title; //상품명
	private int price; //가격
	private double score; //별점
	private int review ; //리뷰 수
	private String content; // 상품상세내용
	private String image; //사진
	private String url_name; // 상품URL
	private String manual ; // 사용법 주소 
	private int category; //상품카테고리
	private String brand; //제조사
	private String fil1 = ""; //fil1
	private String fil2 = ""; //fil2
	private String fil3 = ""; //fil3
	private String fil4 = ""; //fil4
	private String fil5 = ""; //fil5
	private String fil6 = ""; //fil6
	private int fil7; // fil7
	private int fil8; // fil8
	private int fil9; // fil9
	private int fil10; // fil10
	private int fil11; // fil11
	private int fil12; // fil12
	private int favCnt; //즐겨찾기 갯수
	private String uri; // URI_페이지이동처리에 필요
	private String uri2;
	private String uri3;
    private int status; //활성상태
	@DateTimeFormat(pattern="yyyy-MM-dd")//등록,수정일
	private Date reg; 


	
}


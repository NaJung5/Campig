package org.camping.model;

import java.sql.Date;

import lombok.Data;

@Data
public class SpotDTO {
	private int num;		// 캠핑장 고유번호
	private int status;		// 캠핑장 등록상태
	private String name;	// 캠핑장명
	private int score;		// 캠핑장 점수
	private int read;		// 캠핑장 조회수
	private String phone;	// 캠핑장 연락처
	
	private String addr;	// 캠핑장 주소
	private double lng;		// 경도
	private double lat;		// 위도
	private String image;	// 캠핑장 사진
	private String page;	// 캠핑장 홈페이지
	private String cate;	// 캠핑장 카테고리
	private String tag;		// 캠핑장 태그
	private Date reg;		// 캠핑장 등록일
	private String[] addrs;
	private String[] cates;
	public void setAddrs(String[] addrs) {
		this.addr = String.join(" ", addrs);
	}
	public void setCates(String[] cates) {
		this.cate = String.join(",", cates);
	}	
}

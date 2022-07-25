package org.camping.model;

import java.util.Date;

import lombok.Data;

@Data
public class SpotMediaDTO {
	private int sitenum;		// 캠핑장 번호
	private String sitename;	// 캠핑장 이름
	private String content;		// 소개 내용
	private Date reg;			// 등록일
}

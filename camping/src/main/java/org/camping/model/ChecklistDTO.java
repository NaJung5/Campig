package org.camping.model;

import java.util.Date;

import lombok.Data;

@Data
public class ChecklistDTO {
	private String id;		// 가입한 회원 ID
	private int price;		// 예상가격
	private int person;		// 인원수 1=1~2명 / 2=3~4명 / 3=5~6명
	private int season;		// 계절 1=봄가을/2=여름/3=겨울
	private int site;		// 캠핑장 번호
	private int tent;		// 텐트 번호
	private int taf;		// 타프 번호
	private int waterjug;	// 뭍통 번호
	private int stove;		// 조리기구 번호
	private int light;		// 랜턴 번호
	private int mat;		// 매트 번호
	private int sb;			// 침낭 번호
	private int chair;		// 의자 번호
	private int desk;		// 책상 번호
	private int gas;		// 연료 번호
	private int status;		// 체크리스트 상태
	private Date reg;		// 작성일
}

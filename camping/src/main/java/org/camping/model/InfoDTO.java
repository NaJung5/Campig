package org.camping.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
@Data
public class InfoDTO {
	private String id;						// 회원 ID
	private String nickname;				// 별명
	private String pw;						// 비밀번호
	private String mail1;					// email ID
	private String mail2;					// email 주소 ( @이후)
	private String adrs;					// 거주지
	@DateTimeFormat(pattern = "yy-MM-dd")
	private Date birth;						// 생년월일
	private String question;				// 비밀번호 찾기 질문 대답
	private String ans;						// 비밀번호 찾기 질문 답
	private String car;						// 차량 보유 여부
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reg;
	private int status;
	private int gender;
	private Date logintime;
	

}

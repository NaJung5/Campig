package org.camping.model;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberDTO {
	private String id;							// 회원 ID
	private String pw;							// 회원 pw
	private String nickname;					// 회원 별명
	private int gender;						// 회원 성별
	private String mail1;						// email ID 
	private String mail2;						// email @뒷 부분
	private String adrs;						// 집 주소 (adrs1~4 의 주소를 병합해서 저장)
	private String adrs1;						// adrs 1~4 다음 api 주소부분 저장용
	private String adrs2;						
	private String adrs3;
	private String adrs4;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth;							// 회원 생일
	private Date reg;							// 가입 날짜
	private int status;							// 회원상태 0 - 탈퇴 / 1 - 회원 / 2 관리자
	private String question;					// 비밀번호 찾기 질문
	private String ans;							// 비밀번호 찾기 질문 답
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date loginTime;						// 로그인한 시간 (접속할때 마다 변함 sysdate 적용)
	private int car;							// 차량 보유 여부
	private String ans1;						// 설문조사 질문 1
	private String ans2;						// 설문조사 질문 2
	private String ans3;						// 설문조사 질문 3
	private String ans4;						// 설문조사 질문 4
	private String ans5;						// 설문조사 질문 5
	private String ans6;						// 설문조사 질문 6
	private String platform;					// 가입 플랫폼 (네이버, 다음 , 구글 API룰 사용해 가입시 저장)


	public String getAdrs() {
		return adrs1 + " " +adrs2 + " "+ adrs3 + " " +adrs4 ;
	}
	
}
	

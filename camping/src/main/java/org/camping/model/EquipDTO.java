package org.camping.model;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;


@Data
public class EquipDTO {
	private int num; //占쏙옙占쏙옙호
	private String title; //占쏙옙占쏙옙
	private int price; //占쏙옙占쏙옙
	private double score; //占쏙옙占쏙옙
	private int review ; //占쏙옙占쏙옙占�
	private String content; //占쏙옙품占쏙옙占쏙옙
	private String image; //占쏙옙占쏙옙
	private String url_name; // 占쏙옙품占쏙옙占쏙옙URL
	private String manual ; // 占쏙옙품占쏙옙占쏙옙占� 占쏙옙튜占쏙옙 URL
	private int category; //占쏙옙품 카占쌓곤옙 占쏙옙호
	private String brand; //占쏙옙품 占쎄랜占쏙옙
	private String fil1 = ""; //占쏙옙占쏙옙1
	private String fil2 = ""; //占쏙옙占쏙옙2
	private String fil3 = ""; //占쏙옙占쏙옙3
	private String fil4 = ""; //占쏙옙占쏙옙4
	private String fil5 = ""; //占쏙옙占쏙옙5
	private String fil6 = ""; //占쏙옙占쏙옙6
	private int fil7; //占쏙옙占쏙옙7
	private int fil8; //占쏙옙占쏙옙8
	private int fil9; //占쏙옙占쏙옙9
	private int fil10; //占쏙옙占쏙옙10
	private int fil11; //占쏙옙占쏙옙11
	private int fil12; //占쏙옙占쏙옙12
	private int favCnt;
	private String uri;
	private String uri2;
	private String uri3;
    private int status; //占쏙옙품활占쏙옙占쏙옙占쏙옙
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date reg; 


	
}


package org.camping.model;

import lombok.Data;

@Data
public class ReviewDTO {
	private String id;
	private int category;
	private int num;
	private int score;
	private String content;
	private int status;
	private int review;
	
}

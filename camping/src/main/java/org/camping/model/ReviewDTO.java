package org.camping.model;

import lombok.Data;

@Data
public class ReviewDTO {
	private String id;//���̵�
	private int category;//0-��� , 1-ķ����
	private int num;//�ش� ��ȣ
	private int score;//����
	private String content;//���䳻��
	private int status;//üũ����Ʈ�� status
	private int review;
	
	
}

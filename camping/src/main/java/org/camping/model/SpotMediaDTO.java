package org.camping.model;

import java.util.Date;

import lombok.Data;

@Data
public class SpotMediaDTO {
	private int sitenum;		// ķ���� ��ȣ
	private String sitename;	// ķ���� �̸�
	private String content;		// �Ұ� ����
	private Date reg;			// �����
}

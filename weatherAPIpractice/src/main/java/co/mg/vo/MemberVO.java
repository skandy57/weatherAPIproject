package co.mg.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
	private Long member_num;
	private String id;
	private String nickname;
	private String pw;
	private Date signupDate;
	private int isActive;
	private String member_grade;
}

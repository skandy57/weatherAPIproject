package co.mg.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String pw;
	private Date signupDate;
}

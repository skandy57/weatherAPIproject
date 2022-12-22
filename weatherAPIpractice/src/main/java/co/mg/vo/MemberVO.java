package co.mg.vo;

import java.sql.Date;

import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Data
public class MemberVO {
	private Long member_num;
	@NotEmpty(message = "아이디는 필수 입력값 입니다.")
	private String id;
	@NotEmpty(message = "닉네임은 필수 입력값 입니다.")
	private String nickname;
	@NotEmpty(message = "비밀번호는 필수 입력값 입니다.")
	private String pw;
	private Date signupDate;
	private byte isActive;
	private String member_grade;
}

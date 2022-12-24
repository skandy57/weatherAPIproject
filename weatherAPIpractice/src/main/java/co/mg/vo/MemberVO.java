package co.mg.vo;

import java.sql.Date;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class MemberVO {
	private Long member_num;
	@NotEmpty(message = "아이디는 필수 입력값 입니다.")
	@Size(min = 5, max = 20, message = "5자 이상 20자 이하로 입력해주세요.")
	private String id;
	@Size(min = 2, max = 20, message = "2자 이상 20자 이하로 입력해주세요.")
	@NotEmpty(message = "닉네임은 필수 입력값 입니다.")
	private String nickname;
	@NotEmpty(message = "비밀번호는 필수 입력값 입니다.")
	private String pw;
	private Date signupDate;
	private byte isActive;
	private int member_grade;
}

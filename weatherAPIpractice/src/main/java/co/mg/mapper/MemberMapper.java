package co.mg.mapper;

import co.mg.vo.MemberVO;

public interface MemberMapper {
	
	public int reduCheck(String id) throws Exception;
	
	public MemberVO login(MemberVO member) throws Exception;

	public int signUp(MemberVO member) throws Exception;

	public MemberVO myInfoView(Long member_num) throws Exception;

	public int update(MemberVO member) throws Exception;

	public int findPw(MemberVO member) throws Exception;
}

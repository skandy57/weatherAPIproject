package co.mg.service;

import org.springframework.stereotype.Service;

import co.mg.vo.MemberVO;

@Service
public interface MemberService {

	public MemberVO login(MemberVO member) throws Exception;

	public int signUp(MemberVO member) throws Exception;

	public MemberVO myInfoView(Long member_num) throws Exception;

	public int update(MemberVO member)throws Exception;

	public int findPw(MemberVO member)throws Exception;
}

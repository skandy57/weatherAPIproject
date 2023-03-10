package co.mg.service;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;

import co.mg.vo.MemberVO;

@Service
public interface MemberService {

	public int reduCheck(String id) throws Exception;

	public MemberVO login(MemberVO member) throws Exception;

	public int signUp(MemberVO member) throws Exception;

	public MemberVO myInfoView(Long member_num) throws Exception;

	public int update(MemberVO member) throws Exception;

	public int findPw(MemberVO member) throws Exception;

	 public Map<String, String> validateHandling(Errors errors) throws Exception;
}

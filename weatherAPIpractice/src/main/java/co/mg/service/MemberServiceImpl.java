package co.mg.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;

import co.mg.mapper.MemberMapper;
import co.mg.vo.MemberVO;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

	private static final Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);

	private final MemberMapper mapper;

	@Resource(name = "sqlSession")
	SqlSession sqlSession;
	
	public int reduCheck(String id)throws Exception{
		log.info("MemberServiceImpl reduCheck---------");
		return mapper.reduCheck(id);
	}
	public MemberVO login(MemberVO member)throws Exception{
		log.info("MemberServiceImpl login-------------");
		return mapper.login(member);
	}
	
	public int signUp(MemberVO member) throws Exception {
		log.info("MemberServiceImpl signup-----------");
		return mapper.signUp(member);

	}

	public MemberVO myInfoView(Long member_num) throws Exception {
		log.info("MemberServiceImpl myInfoView----------");
		return mapper.myInfoView(member_num);
	}
	
	public int update(MemberVO member)throws Exception{
		log.info("MemberServiceImpl update------------");
		return mapper.update(member);
	}
	public int findPw(MemberVO member)throws Exception{
		return mapper.findPw(member);
	}
	 /* 회원가입 시, 유효성 체크 */
    @Transactional(readOnly = true)
    public Map<String, String> validateHandling(Errors errors) {
        Map<String, String> validatorResult = new HashMap<>();
 
        /* 유효성 검사에 실패한 필드 목록을 받음 */
        for (FieldError error : errors.getFieldErrors()) {
            String validKeyName = String.format("valid_%s", error.getField());
            validatorResult.put(validKeyName, error.getDefaultMessage());
        }
        return validatorResult;
    }
}

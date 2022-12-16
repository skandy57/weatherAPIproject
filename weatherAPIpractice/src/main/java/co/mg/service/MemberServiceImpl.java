package co.mg.service;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

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
}

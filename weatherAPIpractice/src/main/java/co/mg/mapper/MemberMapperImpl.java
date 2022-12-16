package co.mg.mapper;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import co.mg.vo.MemberVO;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MemberMapperImpl implements MemberMapper{
	
	private static final Logger log = LoggerFactory.getLogger(MemberMapperImpl.class);
	
	@Resource(name = "sqlSession")
	SqlSession sqlSession;
	
	@Override
	public MemberVO login(MemberVO member) throws Exception {
		return sqlSession.selectOne("MemberMapper.login",member);
		
	}

	@Override
	public int signUp(MemberVO member) throws Exception {
		return sqlSession.insert("MemberMapper.signUp",member);
		
	}

	@Override
	public MemberVO myInfoView(Long member_num) throws Exception {
		return sqlSession.selectOne("MemberMapper.myInfoView",member_num);
		
	}
	@Override
	public int update(MemberVO member)throws Exception{
		return sqlSession.update("MemberMapper.update", member);
	}
	
	

}

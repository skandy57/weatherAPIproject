package co.mg.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import co.mg.mapper.AdminMapper;
import co.mg.mapper.MemberMapper;
import co.mg.vo.Criteria;
import co.mg.vo.MemberVO;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService{
	private static final Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);

	private final AdminMapper mapper;

	@Resource(name = "sqlSession")
	SqlSession sqlSession;

	@Override
	public List<MemberVO> memberList(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.memberList(cri);
	}
	
	
}

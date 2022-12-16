package co.mg.service;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import co.mg.mapper.MemberMapper;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class AdminServiceImpl {
	private static final Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);

	private final MemberMapper mapper;

	@Resource(name = "sqlSession")
	SqlSession sqlSession;
}

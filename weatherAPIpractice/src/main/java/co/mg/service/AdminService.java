package co.mg.service;

import java.util.List;

import org.springframework.stereotype.Service;

import co.mg.vo.Criteria;
import co.mg.vo.MemberVO;

@Service
public interface AdminService {

	List<MemberVO> memberList(Criteria cri);
}

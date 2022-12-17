package co.mg.mapper;

import java.util.List;

import co.mg.vo.Criteria;
import co.mg.vo.MemberVO;

public interface AdminMapper {

	List<MemberVO> memberList(Criteria cri);
}

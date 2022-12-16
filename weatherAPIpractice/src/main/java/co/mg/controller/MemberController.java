package co.mg.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.mg.service.MemberService;
import co.mg.vo.MemberVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping("/member/*")
public class MemberController {
	
	private final MemberService service;
	
	
	
	@GetMapping("/signUp")
	public String signUp()throws Exception{
		return "member/signUp";
		
	}
	@PostMapping("/signUp")
	public String signUp(MemberVO member)throws Exception{
		service.signUp(member);
		
		return "redirect:/";
	}
	@PostMapping("/myInfoView")
	public String myInfo(Model model,@RequestParam(required = false, value="session_member_num")Long member_num)throws Exception {
		return "member/myInfo";
		
	}
	@PostMapping("/updateView")
	public String update(Model model,HttpSession session,
			@RequestParam(required = false, value="session_member_num")Long member_num)throws Exception{
		model.addAttribute("user_info",service.myInfoView(member_num));
		return "member/update";
	}
	@PostMapping("/update")
	public String update(MemberVO member) throws Exception {
		service.update(member);
		return "redirect:/";
	}
	
}

package co.mg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
		return "member/signUpView";
		
	}
	@PostMapping("/signUp")
	public String signUp(MemberVO member)throws Exception{
		service.signup(member);
		
		return "redirect:/";
	}

}

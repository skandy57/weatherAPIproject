package co.mg.controller;

import java.io.Console;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mg.service.MemberService;
import co.mg.vo.MemberVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequiredArgsConstructor
@RequestMapping("/login/*")
public class LoginController {

	private final MemberService service;

	@GetMapping("/login")
	public String login() throws Exception {
		return "/login/login";
	}

	@PostMapping("/login")
	public String login(@ModelAttribute MemberVO member, HttpSession session) throws Exception {

		MemberVO loginMember = service.login(member);
		log.info(loginMember + " 로그인 시도");
	
		if (loginMember == null) {
			session.setAttribute("msg", "아이디 또는 비밀번호가 다릅니다");
			return "login/loginError";
		} else if (loginMember.getMember_grade() == 0) {
			log.info(loginMember.getId()+"는 탈퇴계정입니다.");
			session.setAttribute("msg", "회원탈퇴한 계정입니다");
			return "login/loginError";
		} else if (loginMember.getMember_grade() == -1) {
			log.info(loginMember.getId()+"는 제재계정입니다.");
			session.setAttribute("msg", "비정상적인 활동으로 제재를 받은 계정입니다");
			return "login/loginError";
		} else if (loginMember.getMember_grade() == 1) {
			log.info(loginMember.getId()+"는 일반계정입니다.");
			session.setAttribute("mem", loginMember);
			return "redirect:/";
		} else {
			session.setAttribute("admin", loginMember);
			return "redirect:/";
		}

	}
	@GetMapping("/logOut")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}

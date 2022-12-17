package co.mg.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mg.service.AdminService;
import co.mg.vo.Criteria;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/*")
public class AdminController {
	
	private final AdminService service;

	@GetMapping("/adminPage")
	public String adminPage(HttpSession session) {
		return "admin/adminPage";
	}
	@GetMapping("/memberList")
	public void memberList(Criteria cri,Model model) {
		model.addAttribute("memberList", service);
	}
}

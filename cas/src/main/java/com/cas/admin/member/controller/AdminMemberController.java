package com.cas.admin.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMemberController {

	/*회원리스트를 보는 메서드*/
	@RequestMapping("/admin/memberList")
	public String adminMemberList(){
		return null;
	}
	/*회원 관리*/
	@RequestMapping("/admin/memberAnalysis")
	public String adminMemberAnalysis(){
		String url = "admin/analysis/memberAnalysis";
		return url;
	}
	
	/*회원을 삭제하는 메서드*/
	@RequestMapping("/admin/memberDelete")
	public String adminMemberDelete(HttpServletRequest request){
		return null;
	}
}

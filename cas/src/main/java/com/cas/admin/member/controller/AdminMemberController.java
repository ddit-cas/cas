package com.cas.admin.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;

public class AdminMemberController {

	/*회원리스트를 보는 메서드*/
	@RequestMapping("/admin/memberList")
	public String adminMemberList(){
		return null;
	}
	
	/*회원을 삭제하는 메서드*/
	@RequestMapping("/admin/memberDelete")
	public String adminMemberDelete(HttpServletRequest request){
		return null;
	}
}

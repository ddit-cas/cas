package com.cas.admin.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminLoginController {

	/*
	 * 맨처음 어드민 페이지 로그인을 위한 로그인폼을 띄워줄 화면
	 */
	@RequestMapping("/admin/loginForm")
	public String adminLoginForm(){
		return null;
	}
	
	/*
	 * 아이디와 비번을 받아서 관리자 아이디가 맞는지 검증후 어드민 메인으로 보내줄 메서드
	 */
	@RequestMapping("/admin/login")
	public String adminLogin(@RequestParam String id, @RequestParam String pwd,
			HttpSession session, Model model){
		return null;
	}
	
	/*어드민계정 로그아웃 하는 메서드*/
	@RequestMapping("/admin/logout")
	public String adminLogout(HttpSession session){
		return null;
	}
}

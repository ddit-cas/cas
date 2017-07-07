package com.cas.admin.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminLoginFormController {

	/*
	 * 맨처음 어드민 페이지 로그인을 위한 로그인폼을 띄워줄 화면
	 */
	@RequestMapping("/admin/loginForm")
	public String adminLoginForm(){
		return null;
	}
}

package com.cas.admin.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainController {

	/*
	 * 어드민 매인화면을 호출하는 메서드
	 */
	@RequestMapping("/admin/main")
	public String adminMain(Model model){
		return null;
	}
}

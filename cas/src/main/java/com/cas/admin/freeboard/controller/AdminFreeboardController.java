package com.cas.admin.freeboard.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminFreeboardController {

	/*자유게시판 리스트를 보여주는 메서드*/
	@RequestMapping("/admin/freeboardList")
	public String adminFreeboardList(Model model){
		return null;
	}
	
	/*게시물을 선택시 세부 내용을 보여주기 위한 메서드*/
	@RequestMapping("/admin/freeboardDetail")
	public String adminFreeboardDetail(HttpServletRequest request){
		return null;
	}
	
	/*자유게시판 게시물을 비활성화하고 리스트로 되돌려주는 메서드*/
	@RequestMapping("/admin/freeboardUpdate")
	public String adminFreeboardUpdate(HttpServletRequest request){
		return null;
	}
}

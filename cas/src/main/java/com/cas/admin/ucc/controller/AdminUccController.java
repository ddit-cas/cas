package com.cas.admin.ucc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminUccController {

	/*영상 게시물 리스트를 보여주는 메서드*/
	@RequestMapping("/admin/uccList")
	public String adminUccList(Model model){
		return null;
	}
	
	/*영상게시물 세부내용을 보는 메서드*/
	@RequestMapping("/admin/uccDetail")
	public String adminUccDetail(HttpServletRequest request,Model model){
		return null;
	}
	
	/*영상 게시물을 지우는 메서드*/
	@RequestMapping("/admin/uccDelete")
	public String adminUccDelete(HttpServletRequest request){
		return null;
	}
}

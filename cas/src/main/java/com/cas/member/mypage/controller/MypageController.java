package com.cas.member.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {

	/*마이페이지 화면으로 가게 하는 메서드*/
	@RequestMapping("/mypage")
	public String memberMypage(HttpSession session,Model model){
		return null;
	}
	
	@RequestMapping("/updateMember")
	public String memberUpdate(HttpSession session){
		return null;
	}
}

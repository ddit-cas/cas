package com.cas.member.freeboard.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberFreeboardController {

	/*
	 * 글 등록을 누를시 글 등록 양식으로 가게 해주는 메서드
	 * 만약 수정에서 오면 양식에 다입력을 해줌
	 */
	@RequestMapping("/member/freeboardForm")
	public String insertFreeboardForm(HttpServletRequest request,Model model){
		return null;
	}
	
	/*글입력양식을 다 입력후 등록을 누르면 인서트 해주는 메서드*/
	@RequestMapping("/member/insertFreeboard")
	public String insertFreeboard(HttpServletRequest request){
		return null;
	}
	
	/*글 수정양식을 다 입력한후 수정을 눌렀을떄 오는 메서드*/
	@RequestMapping("/member/updateFreeboard")
	public String updateFreeboard(HttpServletRequest request){
		return null;
	}
	
	/*회원 본인이 글 삭제를 눌렀을시 오는 메서드*/
	@RequestMapping("/member/deleteFreeboard")
	public String deleteFreeboard(HttpServletRequest request){
		return null;
	}
}

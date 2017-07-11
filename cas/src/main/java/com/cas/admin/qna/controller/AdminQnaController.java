package com.cas.admin.qna.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminQnaController {

	/*회원들의 질문리스트를 볼수 있게 하는 메서드*/
	@RequestMapping("/admin/qnaList")
	public String adminQnaList(Model model){
		return null;
	}
	
	/*회원질문 상세 페이지로 가는 메서드*/
	@RequestMapping("/admin/qnaDetail")
	public String adminQnaDetail(HttpServletRequest request,Model model){
		return null;
	}
	
	/*회원질문에 답변을 다는 폼으로 가는 메서드*/
	@RequestMapping("/admin/qnaReplyForm")
	public String adminQnaReplyForm(HttpServletRequest request){
		return null;
	}
	
	/*회원질문에 답변을 다는 메서드*/
	@RequestMapping("/admin/qnaReply")
	public String adminQnaReply(HttpServletRequest request){
		return null;
	}
}

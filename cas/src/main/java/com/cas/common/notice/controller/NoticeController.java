package com.cas.common.notice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	/*공지사항 리스트로 가는 메서드*/
	@RequestMapping("/noticeList")
	public String noticeList(Model model){
		return "member/story/notice/noticeBoard";
	}
	
	/*공지사항 세부내용을 보는 메서드*/
	@RequestMapping("/noticeDetail")
	public String noticeDetail(HttpServletRequest request,Model model){
		return null;
	}
}

package com.cas.common.freeboard.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FreeboardController {

	/*자유게시판 리스트를 보여주는 메서드*/
	@RequestMapping("/freeboardList")
	public String freeboardList(Model model){
		String url = "member/community/freeBoard/freeBoard";
		return url;
	}
	
	/*자유게시판에서 검색하면 작동하는 메서드*/
	@RequestMapping("/freeboardSearch")
	public String freeboardSearch(HttpServletRequest request,Model model){
		return null;
	}
	
	/*자유게시판 글 세부내용으로 가는 메서드*/
	@RequestMapping("/freeboardDetail")
	public String freeboardDetail(HttpServletRequest request,Model model){
		return null;
	}
}

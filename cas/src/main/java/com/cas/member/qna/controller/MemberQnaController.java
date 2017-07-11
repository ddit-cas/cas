package com.cas.member.qna.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberQnaController {

	/*1대1질문을 할수있는 양식 페이지로 가는 메서드*/
	@RequestMapping("/member/insertQnaForm")
	public String insertQnaForm(){
		return null;
	}
	
	/*양식입력후 질문하면 질문을 등록하는 메서드*/
	@RequestMapping("/member/insertQna")
	public String insertQna(HttpServletRequest request){
		return null;
	}
	
	/*내가 1대1질문한 질문리스트를 보여주는 메서드*/
	@RequestMapping("/member/qnaList")
	public String qnaList(Model model){
		return null;
	}
	
	/*질문 한개의 상세 내용과 답변을 볼수 있게하는 메서드*/
	@RequestMapping("/member/qnaDetail")
	public String qnaDetail(HttpServletRequest request,Model model){
		return null;
	}
}

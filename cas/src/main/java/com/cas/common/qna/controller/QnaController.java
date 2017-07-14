package com.cas.common.qna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {

	/*자주한는 질문과 1:1질문을 할수있는 질문 카테고리의 메인으로 가는 메서드*/
	@RequestMapping("/qnaMain")
	public String qnaMain(){
		return "/member/qna/QNA";
	}
	
	/*자주하는 질문 리스트로 가는 메서드*/
	@RequestMapping("/faqList")
	public String faqList(){
		return "/member/qna/FAQ";
	}
}

package com.cas.common.qna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;

@Controller
public class QnaController {

	@Autowired
	private ArticleService articleService;
	
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	/*자주한는 질문과 1:1질문을 할수있는 질문 카테고리의 메인으로 가는 메서드*/
	@RequestMapping("/qnaMain")
	public String qnaMain(){
		
		
		
		
		
		return "/member/qna/QNA";
	}
	
	/*자주하는 질문 리스트로 가는 메서드*/
	@RequestMapping("/faqList")
	public String faqList(Model model){
		
		List<ArticleVO> list =  articleService.selectArticleList("B002");

		model.addAttribute("faqList", list);
		
		return "/member/qna/FAQ";
	}
}

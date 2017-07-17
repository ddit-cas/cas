package com.cas.member.freeboard.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;

@Controller
public class MemberFreeboardController {

	@Autowired
	private ArticleService articleService;
	
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	/*
	 * 글 등록을 누를시 글 등록 양식으로 가게 해주는 메서드
	 * 만약 수정에서 오면 양식에 다입력을 해줌
	 */
	@RequestMapping("/member/freeboardForm")
	public String insertFreeboardForm(HttpServletRequest request,Model model){
		model.addAttribute("boardCode", "B005");
		return "/daumeditor/editor";
	}
	
	/*글입력양식을 다 입력후 등록을 누르면 인서트 해주는 메서드*/
	@RequestMapping("/member/insertFreeboard")
	public String insertFreeboard(HttpServletRequest request, HttpSession session){
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		ArticleVO article = new ArticleVO();
		article.setBoardCode("B005");
		article.setContentTitle(request.getParameter("title"));
		article.setContentContent(request.getParameter("content"));
		System.out.println(request.getParameter("content"));
		articleService.insertArticle(article);
		
		return "/member/community/insertArticleComplete";
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

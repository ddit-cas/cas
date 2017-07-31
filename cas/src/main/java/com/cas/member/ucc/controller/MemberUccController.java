package com.cas.member.ucc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;

@Controller
public class MemberUccController {

	@Autowired
	private ArticleService articleService;
	
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	/*
	 * 유씻씨영상을 입력하거나 수정하는 양식으로 이동하는 메서드
	 * 만약 수정을눌렀을시 글 아이디를 받아서 수정화면을 보여주고
	 * 글아이디가 없으면 그냥 입력화면을보여줌
	 */
	@RequestMapping("/member/uccForm")
	public String uccForm(HttpServletRequest request,Model model){
		model.addAttribute("boardCode","B006");
		String contentNum = request.getParameter("contentNum");
		if (contentNum!=null) {
			model.addAttribute("articleVO",articleService.selectArticle(contentNum, "B006"));
			model.addAttribute("resultUrl","updateUcc");
		}else{
			model.addAttribute("resultUrl","insertUcc");
		}
		return "/member/community/freeBoard/freeboardForm";
	}
	
	/*유씨씨영상 입력양식을 다 입력후 등록을 누르면 인서트 해주는 메서드*/
	@RequestMapping("/member/insertUcc")
	public String insertFreeboard(ArticleVO articleVO,HttpServletRequest request){
		articleService.insertArticle(articleVO);
		return "redirect:/uccList";
	}
	
	/*글 수정양식을 다 입력한후 수정을 눌렀을떄 오는 메서드*/
	@RequestMapping("/member/updateUcc")
	public String updateFreeboard(ArticleVO articleVO,HttpServletRequest request){
		articleService.updateFreeboard(articleVO);
		return "redirect:/uccList";
	}
	
	/*회원 본인이 글 삭제를 눌렀을시 오는 메서드*/
	@RequestMapping("/member/deleteUcc")
	public String deleteFreeboard(HttpServletRequest request){
		return null;
	}
}

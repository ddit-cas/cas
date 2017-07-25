package com.cas.member.freeboard.controller;

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
		String articleId = request.getParameter("articleId");
		
		ArticleVO articleVO = null;
		if(articleId!=null){
			articleVO = articleService.selectArticle(articleId, "B005");
			model.addAttribute("articleVO",articleVO);
			model.addAttribute("resultUrl","updateFreeboard");
		}else{
			model.addAttribute("resultUrl","insertFreeboard");
		}
		return "/member/community/freeBoard/freeboardForm";
		//성빈님? 성빈형아? 성빈삼촌? 못해먹겠어요 ㅠㅠ
		//도와주시는척하고 자꾸 도망가시면 저도 더이상 참치 않겠읍니다.
	}
	
	/*글입력양식을 다 입력후 등록을 누르면 인서트 해주는 메서드*/
	@RequestMapping("/member/insertFreeboard")
	public String insertFreeboard(HttpServletRequest request, HttpSession session,ArticleVO articleVO){
//		System.out.println("잘돌아와요?");
//		System.out.println(articleVO.getContentContent());
//		ArticleVO article = new ArticleVO();
//		article.setBoardCode("B005");
//		article.setContentTitle(request.getParameter("title"));
//		article.setContentContent(request.getParameter("content"));
//		System.out.println(request.getParameter("content"));
		articleService.insertArticle(articleVO);
		
		return "/member/community/insertArticleComplete";
	}
	
	/*글 수정양식을 다 입력한후 수정을 눌렀을떄 오는 메서드*/
	@RequestMapping("/member/updateFreeboard")
	public String updateFreeboard(HttpServletRequest request,HttpSession session,ArticleVO articleVO){
		articleService.updateFreeboard(articleVO);
		return null;
	}
	
	/*회원 본인이 글 삭제를 눌렀을시 오는 메서드*/
	@RequestMapping("/member/deleteFreeboard")
	public String deleteFreeboard(HttpServletRequest request){
		return null;
	}
}

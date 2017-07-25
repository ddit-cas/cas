package com.cas.common.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;

@Controller
public class NoticeController {
	
	@Autowired
	private ArticleService articleService;
	
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	/*공지사항 리스트로 가는 메서드*/
	@RequestMapping("/noticeList")
	public String noticeList(Model model){
		
		List<ArticleVO> resultList;
		resultList = articleService.selectArticleList("B001");
		model.addAttribute("articleList",resultList);
		System.out.println(resultList.get(0).getContentTitle());
		String url = "/member/story/notice/noticeBoard";
		return url;
	}
	
	@RequestMapping("/noticeSearch")
	public String noticeSearch(HttpServletRequest request){
		String title = request.getParameter("title");
		String wirter = request.getParameter("wirter");
		String date = request.getParameter("date");
		
		String search = request.getParameter("search");
		
		return null;
	}
	
	/*공지사항 세부내용을 보는 메서드*/
	@RequestMapping("/noticeDetail")
	public String noticeDetail(HttpServletRequest request,Model model){
		ArticleVO articleVO = articleService.selectArticle(request.getParameter("contentNum"), "B001");
		model.addAttribute("articleVO",articleVO);
		return "/member/story/notice/noticeDetail";
	}
	/*게시물을 신고하는 메서드*/
	@RequestMapping("/declaration")
	public String declaration(HttpServletRequest request,Model model){
		String url = "/member/story/notice/declaration";
		return url;
	}
}

package com.cas.common.freeboard.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.Paging;

@Controller
public class FreeboardController {

	@Autowired
	private ArticleService articleService;
	
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	/*자유게시판 리스트를 보여주는 메서드*/
	@RequestMapping("/freeboardList")
	public String freeboardList(Model model, HttpServletRequest request){
		
		//자유게시판의 데이터를 전부 가져온다 (자유게시판의 board_code 는 B005) 
		List<ArticleVO> freeboardList = articleService.selectArticleList("B005");
		//현재페이지
		String page = request.getParameter("tab");
		//받은 데이터리스트의 데이터갯수
		int dataRow = freeboardList.size();
		
		Paging paging = new Paging(dataRow, page, 10);
		
		
		System.out.println(paging.toString());
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		model.addAttribute("articleList", freeboardList);//데이터베이스에서 가져온 리스트를 보내준다
		return "member/community/freeBoard/freeBoard";
	}
	
	/*자유게시판에서 검색하면 작동하는 메서드*/
	@RequestMapping("/freeboardSearch")
	public String freeboardSearch(HttpServletRequest request,Model model){
		return null;
	}
	
	/*자유게시판 글 세부내용으로 가는 메서드*/
	@RequestMapping("/freeboardDetail")
	public String freeboardDetail(HttpServletRequest request,Model model){
		ArticleVO articleVO = articleService.selectArticle(request.getParameter("contentNum"), "B005");
		model.addAttribute("articleVO",articleVO);
		return "member/community/freeBoard/freeDetail";
	}
}

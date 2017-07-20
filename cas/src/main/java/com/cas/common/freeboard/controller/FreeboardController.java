package com.cas.common.freeboard.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;

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
		List<ArticleVO> freeboardList = articleService.selectArticleList("B005");
		int maxNum = freeboardList.size()/10+1;
		if(freeboardList.size()/10 > 0){
			maxNum++;
		}
		int index = 0;
		int minNum = 1;

		if(request.getParameter("tab")!=null){
			index =  Integer.parseInt((request.getParameter("tab")));
			if((index*10)<=maxNum){
				maxNum = index*10;
			}
			System.out.println("maxNum="+maxNum);
			minNum = maxNum-9;
			if(minNum<1){
				minNum=1;
			}
			index--;
			System.out.println("index="+index);
		}
		
		model.addAttribute("index", index);
		model.addAttribute("minNum", minNum);
		model.addAttribute("maxNum", maxNum);
		model.addAttribute("articleList", freeboardList);
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
		ArticleVO articleVO = articleService.selectArticle(request.getParameter("articleId"), "B005");
		model.addAttribute("articleVO",articleVO);
		return null;
	}
}

package com.cas.admin.freeboard.controller;

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
public class AdminFreeboardController {
	
	@Autowired
	private ArticleService articleService;
	
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	/*자유게시판 리스트를 보여주는 메서드*/
	@RequestMapping("/admin/freeboardList")
	public String adminFreeboardList(Model model, HttpServletRequest request){
		
		List<ArticleVO> resultList;
		resultList = articleService.selectArticleList("B005");
		model.addAttribute("articleList",resultList);
		String index=request.getParameter("search");
		String key=request.getParameter("writeSearch");
		String boardCode = "B005"; 
		String searchUrl = "&boardCode="+boardCode;
		if(index!=null){
			resultList=articleService.selectFreeSearch(boardCode, index, key);
			searchUrl += "&search="+index+"&writeSearch="+key;
		}
//		//현재페이지
		String page = request.getParameter("tab");
//		//받은 데이터리스트의 데이터갯수
		int dataRow = resultList.size();
		Paging paging = new Paging(dataRow, page, 10);
		model.addAttribute("searchUrl", searchUrl);
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		model.addAttribute("articleList", resultList);
		String url = "admin/board/freeBoard/freeBoardAdmin";
		return url;
	}
	
	/*게시물을 선택시 세부 내용을 보여주기 위한 메서드*/
	@RequestMapping("/admin/freeboardDetail")
	public String adminFreeboardDetail(HttpServletRequest request,Model model){
		ArticleVO articleVO = articleService.selectArticle(request.getParameter("contentNum"), "B005");
		model.addAttribute("articleVO",articleVO);
		return "member/community/freeBoard/freeDetail";
	}
	
	/*자유게시판 게시물을 비활성화하고 리스트로 되돌려주는 메서드*/
	@RequestMapping("/admin/freeboardUpdate")
	public String adminFreeboardUpdate(HttpServletRequest request, ArticleVO article){
		articleService.disAcitve(article);
		return "admin/board/freeBoard/freeBoardAdmin_go";
	}
	
	
}

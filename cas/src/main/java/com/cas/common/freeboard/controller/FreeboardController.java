package com.cas.common.freeboard.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.CommentVO;
import com.cas.db.dto.Paging;
import com.cas.db.dto.ReportVO;
import com.cas.member.comment.service.CommentService;

@Controller
public class FreeboardController {

	@Autowired
	private ArticleService articleService;
	
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	@Autowired
	private CommentService commentService;
	

	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	/*자유게시판 리스트를 보여주는 메서드*/
	@RequestMapping("/freeboardList")
	public String freeboardList(Model model, HttpServletRequest request){
		
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
		return "member/community/freeBoard/freeBoard";
	}
	
	/*자유게시판에서 검색하면 작동하는 메서드*/
	@RequestMapping("/freeboardSearch")
	public String freeboardSearch(HttpServletRequest request,Model model){
		String url="/cas/freeboardList";
		return url;
	}
	
	/*모달창 신고페이지 */
	@RequestMapping(value="/cas/freeboardDetail", method=RequestMethod.POST)
	public String report(HttpServletRequest request,Model model){
//		request.getParameterValues("report_mem");
//		request.getParameterValues("report_content");
//		request.getParameterValues("report_date");
		
		return null;
	}
	
	/*자유게시판 글 세부내용으로 가는 메서드*/
	@RequestMapping("/freeboardDetail")
	public String freeboardDetail(HttpServletRequest request,Model model){
		String contentNum=request.getParameter("contentNum");
		ArticleVO articleVO = articleService.selectArticle(contentNum, "B005");
		List<CommentVO> commentList=commentService.selectComment(contentNum);
	      if(commentList.size()!=0){
	         model.addAttribute("commentList",commentList);
	      }
		model.addAttribute("articleVO",articleVO);
		return "member/community/freeBoard/freeDetail";
	}
}

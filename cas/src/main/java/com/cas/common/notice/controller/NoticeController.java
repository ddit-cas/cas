package com.cas.common.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.CommentVO;
import com.cas.db.dto.Paging;
import com.cas.member.comment.service.CommentService;
import com.cas.notice.service.NoticeService;

@Controller
public class NoticeController {
	
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
	
	@Autowired
	private NoticeService noticeService;
	
	
	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	/*공지사항 리스트로 가는 메서드*/
	@RequestMapping("/noticeList")
	public String noticeList(HttpServletRequest request, Model model){
		List<ArticleVO> resultList;
		resultList = articleService.selectArticleList("B001");
		model.addAttribute("articleList",resultList);
		String index=request.getParameter("search");
		String key=request.getParameter("writeSearch");
		String boardCode = "B001"; 
		String searchUrl = "&boardCode="+boardCode;
		if(index!=null){
			resultList=noticeService.noticeSearch(boardCode, index, key);
			searchUrl += "&search="+index+"&writeSearch="+key;
		}
//		//현재페이지
		String page = request.getParameter("tab");
//		//받은 데이터리스트의 데이터갯수
		int dataRow = resultList.size();
		Paging paging = new Paging(dataRow, page);
		System.out.println(paging.toString());
		model.addAttribute("searchUrl", searchUrl);
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		model.addAttribute("noticeList", resultList);
		return "/member/story/notice/noticeBoard";
	}
	
	/*공지사항 검색하여 리스트 추출 하는 메서드*/
	@RequestMapping("/noticeSearch")
	public String noticeSearch(HttpServletRequest request, Model model){
		return null;
	}
	
	/*공지사항 세부내용을 보는 메서드*/
	@RequestMapping("/noticeDetail")
	public String noticeDetail(HttpServletRequest request,Model model){
		String contentNum = request.getParameter("contentNum");
		System.out.println(contentNum);
		List<CommentVO> commentList=commentService.selectComment(contentNum);
	      if(commentList.size()!=0){
	         model.addAttribute("commentList",commentList);
	      }
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

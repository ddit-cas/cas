package com.cas.admin.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.Paging;
import com.cas.notice.service.NoticeService;

@Controller
public class AdminNoticeController {
	
	@Autowired
	private ArticleService articleService;

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	
	@Autowired
	private NoticeService noticeService;
	
	public void setNoticeService(NoticeService noticeService){
		this.noticeService = noticeService;
	}

	/*관리자가 공지사항을 관리하기위한 공지사항 리스트 화면을 호출하는 메서드*/
	@RequestMapping("/admin/noticeList")
	public String adminNoticeList(Model model){
		List<ArticleVO> resultList;
		resultList = articleService.selectArticleList("B001");
		model.addAttribute("articleList",resultList);
		String url = "admin/board/notice/noticeBoardAdmin";
		return url;
	}
	
	/*
	 * 리스트에서 선택한 공지사항을 자세히 보기 위한 페이지
	 * 공지사항 아이디를 받아서 아이디가 있으면 수정화면
	 * 아이디가 없으면 입력화면을 보여준다.
	 */
	@RequestMapping("/admin/noticeDetail")
	public String adminNoticeDetail(HttpServletRequest request,Model model){
		return null;
	}
	
	/*공지사항을 등록하거나 수정하기 위한 양식 화면으로 가는 메서드*/
	@RequestMapping("/admin/noticeInsertForm")
	public String adminNoticeForm(HttpServletRequest request, HttpSession session, Model model){
		ArticleVO articleVO = articleService.selectArticle(request.getParameter("contentNum"), "B001");
		if(articleVO != null){
			model.addAttribute("articleVO",articleVO);
			model.addAttribute("resultUrl","noticeUpdate");
		}else{
			model.addAttribute("resultUrl","noticeInsert");
		}
		String url = "admin/board/notice/noticeBoardInsertForm";
		return url;
	}
	
	/*공지사항 양식 입력후 등록을 실행하는 메서드*/
	@RequestMapping("/admin/noticeInsert")
	public String adminNoticeInsert(HttpServletRequest request, ArticleVO articleVO){
		System.out.println("가져오냐? : " + articleVO.getContentContent());
		noticeService.insertNotice(articleVO);
		return "admin/board/notice/noticeBoardAdmin_go";
	}
	
	
	/*공지사항 양식 수정후 수정을 실행하는 메서드*/
	@RequestMapping("/admin/noticeUpdate")
	public String adminNoticeUpdate(HttpServletRequest request,ArticleVO article){
		System.out.println("가져와야할텐데 업데이트 : " + article.getContentNum());
		noticeService.updateNotice(article);
		return "admin/board/notice/noticeBoardAdmin_go";
	}
	
	/*등록된 캐러셀을 삭제하는 메서드*/
	@RequestMapping("/admin/noticeDelete")
	public String adminNoticelDelete(HttpServletRequest request,ArticleVO articleVO){
		noticeService.deleteNotice(articleVO);
		return "admin/board/notice/noticeBoardAdmin_go";
	}
	
	@RequestMapping("/admin/noticeSearch")
	public String noticeSearch(HttpServletRequest request, Model model){
		String url="admin/board/notice/noticeBoardAdmin";
		String index=request.getParameter("search");
		String key=request.getParameter("writeSearch");
		String boardCord = request.getParameter("boardCord");
		List<ArticleVO> noticeList= noticeService.noticeSearch(boardCord,index, key);
		
		
		System.out.println(noticeList.get(0).getContentWriter());
//		//현재페이지
		String page = request.getParameter("tab");
//		//받은 데이터리스트의 데이터갯수
		int dataRow = noticeList.size();
		Paging paging = new Paging(dataRow, page);
		System.out.println(paging.toString());
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		model.addAttribute("articleList", noticeList);
		return url;
		
	}
}

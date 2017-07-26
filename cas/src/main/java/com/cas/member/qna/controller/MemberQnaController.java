package com.cas.member.qna.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.MemberVO;
import com.cas.db.dto.Paging;

@Controller
public class MemberQnaController {
	@Autowired
	private ArticleService articleService;
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	/*1대1질문을 할수있는 양식 페이지로 가는 메서드*/
	@RequestMapping("/member/insertQnaForm")
	public String insertQnaForm(HttpSession session, Model model){
		if(session.getAttribute("loginUser")==null){
			
		}else{
			MemberVO member = (MemberVO) session.getAttribute("loginUser");
			model.addAttribute("member", member);
		}
		return "/member/qna/QNA";
	}
	
	/*양식입력후 질문하면 질문을 등록하는 메서드*/
	@RequestMapping("/member/insertQna")
	public String insertQna(HttpServletRequest request){
		
		
		
		
		
		return "redirect:/cas/member/qnaList";
	}
	
	/*내가 1대1질문한 질문리스트를 보여주는 메서드*/
	@RequestMapping("/member/qnaList")
	public String qnaList(HttpSession session, Model model, HttpServletRequest request){
		
		String memId = ((MemberVO)session.getAttribute("loginUser")).getMemId();
		
		List<ArticleVO> list =  articleService.selectArticleList(memId,"B004");

		int dataRow = list.size();
		
		String page = request.getParameter("tab");
		
		Paging paging = new Paging(dataRow, page);
		
		
		System.out.println(paging.toString());
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		model.addAttribute("articleList", list);//데이터베이스에서 가져온 리스트를 보내준다
		
		return "member/myPage/myContact";
	}
	
	/*질문 한개의 상세 내용과 답변을 볼수 있게하는 메서드*/
	@RequestMapping("/member/qnaDetail")
	public String qnaDetail(HttpServletRequest request,Model model){
		return null;
	}
}

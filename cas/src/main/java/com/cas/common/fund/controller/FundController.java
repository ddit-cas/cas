package com.cas.common.fund.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;





import com.cas.db.dto.CommentVO;
import com.cas.db.dto.ContentFundVO;
import com.cas.db.dto.FundVO;
import com.cas.db.dto.IngFundVO;
import com.cas.db.dto.LikeVO;
import com.cas.db.dto.MemberVO;
import com.cas.db.dto.Paging;
import com.cas.fund.service.FundService;
import com.cas.member.comment.service.CommentService;
import com.cas.promotion.service.PromotionService;

@Controller
public class FundController {
	@Autowired
	private CommentService commentService;
	
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	@Autowired
	private FundService fundService;
	
	public void setFundService(FundService fundService) {
		this.fundService = fundService;
	}
	
	@Autowired
	private PromotionService promotionService;

	public void setPromotionService(PromotionService promotionService) {
		this.promotionService = promotionService;
	}

	/*현재 진행중인 크라우드 펀딩목록으로 가는 메서드*/
	@RequestMapping("/fundList")
	public String fundList(Model model, HttpServletRequest request){

		List<IngFundVO>fundList = fundService.selectIngFundList();
		model.addAttribute("articleList",fundList);
//		//현재페이지
		String page = request.getParameter("tab");
		if(page==null){
			page="1";
		}
//		//받은 데이터리스트의 데이터갯수
		int dataRow = fundList.size();
		Paging paging = new Paging(dataRow, page, 6);
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		
		model.addAttribute("fund",fundList);
		String url = "member/fund/progressList";
		return url;
	}
	
	/*종료된 크라우드펀딩목록으로 가는 메서드*/
	@RequestMapping("/endFundList")
	public String endFundList(Model model,HttpServletRequest request){
		
		List<ContentFundVO> resultList = fundService.selectEndFund();
		System.out.println("종료펀드 들어와라 제발 : " + resultList.get(0).getContentContent());
		model.addAttribute("resultList",resultList);
		String url = "member/fund/endFundList";
		return url;
	}
	
	/*크라우드펀딩 상세 내용으로 가는 메서드*/
	@RequestMapping("/fundDetail")
	public String fundDetail(Model model,HttpServletRequest request,HttpSession session){
		IngFundVO fund=fundService.selectIngFund(request.getParameter("contentNum"));
		fund.setContentNum(request.getParameter("contentNum"));
		model.addAttribute("fund",fund);
		System.out.println();
		LikeVO like = new LikeVO();
		like.setContentNum(request.getParameter("contentNum"));
		List<CommentVO> commentList=commentService.selectComment(request.getParameter("contentNum"));
      	if(commentList.size()!=0){
  			model.addAttribute("commentList",commentList);
      	}
		if(session.getAttribute("loginUser")!=null){
			like.setLoginUser(((MemberVO)session.getAttribute("loginUser")).getMemId());
			model.addAttribute("isLike",promotionService.isLike(like));
		}
		String url = "member/fund/progressListDetail";
		return url;
	}
	
	
}

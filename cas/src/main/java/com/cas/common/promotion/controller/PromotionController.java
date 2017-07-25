package com.cas.common.promotion.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.db.dto.CommentVO;
import com.cas.db.dto.PromotionListVO;
import com.cas.db.dto.PromotionVO;
import com.cas.member.comment.service.CommentService;
import com.cas.promotion.service.PromotionService;

@Controller
public class PromotionController {
	@Autowired
	private PromotionService promotionService;
	@Autowired
	private CommentService commentService;
	
	public void setPromotionService(PromotionService promotionService) {
		this.promotionService = promotionService;
	}
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	
	/*공연홍보게시판 리스트로 가는 메서드*/
	@RequestMapping("/promotionList")
	public String promotionList(Model model){
		List<PromotionListVO> promotionList=promotionService.selectPromotionList();
		model.addAttribute("promotionList", promotionList);
		return "member/community/show/showBoard";
	}
	
	/*공연홍보게시물을 검색하는메서드*/
	@RequestMapping("/promotionSearch")
	public String promotionSearch(Model model){
		return null;
	}
	
	/*공연홍보 게시물 세부내용으로 가는 메서드*/
	@RequestMapping("/promotionDetail")
	public String promotionDetail(HttpServletRequest request,Model model){
		String contentNum=(String)request.getParameter("contentNum");
		PromotionVO promotionVO=promotionService.selectPromotionDetail(contentNum);
		List<CommentVO> commentList=commentService.selectComment(contentNum);
		model.addAttribute("promotionVO",promotionVO);
		model.addAttribute("commentList",commentList);
		return "member/community/show/showDetail";
	}
}

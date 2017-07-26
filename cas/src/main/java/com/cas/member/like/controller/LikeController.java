package com.cas.member.like.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.db.dto.MemberVO;
import com.cas.db.dto.RecomVO;
import com.cas.like.service.LikeService;

@Controller
public class LikeController {

	@Autowired
	private LikeService likeService;
	
	public void setLikeService(LikeService likeService) {
		this.likeService = likeService;
	}

	/*좋아요 시켜주는 멧드*/
	@RequestMapping("/member/likeContent")
	public String likeContent(HttpServletRequest request,HttpSession session,RecomVO recom){
		recom.setContentNum(request.getParameter("contentNum"));
		recom.setRecomMem(((MemberVO)session.getAttribute("loginUser")).getMemId());
		likeService.insertRecom(recom);
		return null;
	}
	
	/*좋아요 취소시켜주는 메서드*/
	@RequestMapping("/member/unlikeContent")
	public String unlikeContent(HttpServletRequest reqeust){
		likeService.deleteRecom(reqeust.getParameter("contentNum"));
		return null;
	}
}

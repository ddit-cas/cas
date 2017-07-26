package com.cas.member.like.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping("/likeContent")
	public String likeContent(RecomVO recom){
		
		return null;
	}
}

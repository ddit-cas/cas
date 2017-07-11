package com.cas.common.promotion.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PromotionController {

	/*공연홍보게시판 리스트로 가는 메서드*/
	@RequestMapping("/promotionList")
	public String promotionList(Model model){
		return null;
	}
	
	/*공연홍보게시물을 검색하는메서드*/
	@RequestMapping("/promotionSearch")
	public String promotionSearch(Model model){
		return null;
	}
	
	/*공연홍보 게시물 세부내용으로 가는 메서드*/
	@RequestMapping("/promotionDetail")
	public String promotionDetail(HttpServletRequest request,Model model){
		return null;
	}
}

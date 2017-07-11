package com.cas.admin.promotion.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPromotionController {

	/*공연홍보 게시물 리스트를 보여주는 메서드*/
	@RequestMapping("/admin/promotionList")
	public String adminPromotionList(Model model){
		return null;
	}
	
	/*공연홍보 게시물 세부내용을 보여주느 메서드*/
	@RequestMapping("/admin/promotionDetail")
	public String adminPromotionDetail(HttpServletRequest request){
		return null;
	}
	
	/*공연홍보 게시물을 비활성화하는메서드*/
	@RequestMapping("/admin/promotionDelete")
	public String adminPromotionDelete(HttpServletRequest request){
		return null;
	}
}

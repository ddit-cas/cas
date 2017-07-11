package com.cas.member.promotion.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberPromotionController {

	/*
	 * 공연홍보를 입력하거나 수정하는 양식으로 이동하는 메서드
	 * 만약 수정을눌렀을시 글 아이디를 받아서 수정화면을 보여주고
	 * 글아이디가 없으면 그냥 입력화면을보여줌
	 */
	@RequestMapping("/member/PromotionForm")
	public String insertPromotionForm(HttpServletRequest request,Model model){
		return null;
	}
	
	/*공연 홍보 입력양식을 다 입력후 등록을 누르면 인서트 해주는 메서드*/
	@RequestMapping("/member/insertPromotion")
	public String insertFreeboard(HttpServletRequest request){
		return null;
	}
	
	/*글 수정양식을 다 입력한후 수정을 눌렀을떄 오는 메서드*/
	@RequestMapping("/member/updatePromotion")
	public String updateFreeboard(HttpServletRequest request){
		return null;
	}
	
	/*회원 본인이 글 삭제를 눌렀을시 오는 메서드*/
	@RequestMapping("/member/deletePromotion")
	public String deleteFreeboard(HttpServletRequest request){
		return null;
	}
}

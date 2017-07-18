package com.cas.member.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {

	/*마이페이지 화면으로 가게 하는 메서드*/
	@RequestMapping("/member/mypage")
	public String memberMypage(HttpSession session,Model model){
		String url = "/member/myPage/myPageModify";
		return url;
	}
	
	/*내정보를 수정하는 메서드*/
	@RequestMapping("/member/updateMember")
	public String memberUpdate(HttpSession session,HttpServletRequest request){
		String url = "/member/myPage/myPageModify";
		return url;
	}
	
	/*회원 개인이 올린 유씨씨들만 볼수있게 하는 메서드*/
	@RequestMapping("/member/uccList")
	public String memberUccList(HttpSession session,Model model){
		String url = "/member/myPage/myMovie";
		return url;
	}
	
	/*
	 * 회원 개인이 등록한 크라우드 펀딩 리스트를 보여주는 메서드
	 * 진행중인 펀딩과 종료중인 펀딩 등 을 확인 가능하게한다.
	 */
	@RequestMapping("/member/fundList")
	public String memberFundList(HttpSession session,Model model){
		String url = "/member/myPage/myfundList";
		return url;
	}
	
	/*펀딩을 취소하는 메서드
	@RequestMapping("/member/fundCancel")
	public String memberFundCancel(HttpSession session){
		String url = "/member/myPage/myfundCancel";
		return url;
	}*/
	
	/*회원개인이 투자한 내역을 볼 수있다.*/
	@RequestMapping("/member/investmentList")
	public String memberInvestment(HttpSession session,Model model){
		String url = "/member/myPage/myinvestmentList";
		return url;
	}
	
	/*회원이 투자한것을 취소하는 메서드
	@RequestMapping("/member/investmentCancel")
	public String memberInvestmentCancel(HttpSession session){
		return null;
	}*/
	
	/*회원의포인트 상황을 보는 메서드*/
	@RequestMapping("/member/point")
	public String memberPoint(HttpSession session,Model model){
		return null;
	}
	
	/*내가 좋아요한 카서들 리스트가 나옴 클릭시 그 카서의 상세 페이지로 이동함*/
	@RequestMapping("/member/cimList")
	public String memberCim(HttpSession session,Model model){
		String url = "/member/myPage/myCim";
		return url;
	}
	
	/*탈퇴하는 메서드*/
	@RequestMapping("/member/withdrawal")
	public String memberWithdrawal(HttpSession session){
		String url = "/member/myPage/withdrawal";
		return url;
	}
}

package com.cas.common.fund.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FundController {

	/*현재 진행중인 크라우드 펀딩목록으로 가는 메서드*/
	@RequestMapping("/fundList")
	public String fundList(Model model){
		return null;
	}
	
	/*종료된 크라우드펀딩목록으로 가는 메서드*/
	@RequestMapping("/endFundList")
	public String endFundList(Model model,HttpServletRequest request){
		return null;
	}
	
	/*크라우드펀딩 상세 내용으로 가는 메서드*/
	@RequestMapping("/fundDetail")
	public String fundDetail(Model model,HttpServletRequest request){
		return null;
	}
}

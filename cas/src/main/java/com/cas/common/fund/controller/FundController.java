package com.cas.common.fund.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.db.dto.IngFundVO;
import com.cas.fund.service.FundService;

@Controller
public class FundController {

	@Autowired
	private FundService fundService;
	
	public void setFundService(FundService fundService) {
		this.fundService = fundService;
	}

	/*현재 진행중인 크라우드 펀딩목록으로 가는 메서드*/
	@RequestMapping("/fundList")
	public String fundList(Model model){
		List<IngFundVO>fundList = fundService.selectIngFundList();
		model.addAttribute("fundList",fundList);
		String url = "member/fund/progressList";
		return url;
	}
	
	/*현재 진행중인 크라우드 펀딩에서 투자하기 메서드*/
	@RequestMapping("/fundInvest")
	public String fundInvest(Model model){
		String url = "member/fund/investment";
		return url;
	}
	
	/*종료된 크라우드펀딩목록으로 가는 메서드*/
	@RequestMapping("/endFundList")
	public String endFundList(Model model,HttpServletRequest request){
		String url = "member/fund/endFundList";
		return url;
	}
	
	/*크라우드펀딩 상세 내용으로 가는 메서드*/
	@RequestMapping("/fundDetail")
	public String fundDetail(Model model,HttpServletRequest request){
		model.addAttribute("fund",fundService.selectIngFund(request.getParameter("contentNum")));
		String url = "member/fund/progressListDetail";
		return url;
	}
}

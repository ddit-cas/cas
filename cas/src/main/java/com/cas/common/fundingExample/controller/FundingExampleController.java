package com.cas.common.fundingExample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FundingExampleController {

	/*펀딩 성공사례 리스트를 보여주는 메서드*/
	@RequestMapping("/fundingExampleList")
	public String fundingExampleList(Model model){
		String url = "member/story/successCase/cas-success";
		return url;
	}
	
	/*
	 * 펀딩성공사례 리스트에서 하나의 행을 클릭시 자세한내용을 보여줄 메서드
	 */
	@RequestMapping("/fundingExampleDetail")
	public String fundingExampleDetail(HttpServletRequest request,Model model){
		String url = "member/story/successCase/cas-success-detail";
		return url;
	}
}

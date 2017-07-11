package com.cas.common.caser.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CaserController {

	/*카서 메인 페이지로 가는 메서드*/
	@RequestMapping("/caser")
	public String caserMainController(Model model){
		return null;
	}
	
	/*카서에서 검색을 하면 오는 메서드*/
	@RequestMapping("/caserSearch")
	public String caserSearch(HttpServletRequest request, Model model){
		return null;
	}
	
	/*카서의 상세 페이지로 가는 메서드*/
	@RequestMapping("/csaerDetail")
	public String caserDetail(HttpServletRequest request, Model model){
		return null;
	}
}

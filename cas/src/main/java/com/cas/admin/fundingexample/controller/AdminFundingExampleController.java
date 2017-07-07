package com.cas.admin.fundingexample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

public class AdminFundingExampleController {

	/*펀딩 성공사례 리스트를 보여주는 메서드*/
	@RequestMapping("/admin/fundingExampleList")
	public String fundingExampleList(Model model){
		return null;
	}
	
	/*펀딩성공사례 리스트에서 하나의 행을 클릭시 자세한내용을 보여줄 메서드*/
	@RequestMapping("/admin/fundingExampleDetail/{articleId}")
	public String fundingExampleDetail(@PathVariable String articleId){
		return null;
	}
	
	@RequestMapping("/admin/fundingExampleInsert")
	public String fundingExampleInsert(HttpServletRequest request){
		return null;
	}
	
	@RequestMapping("/admin/fundingExampleUpdate")
	public String fundingExampleUpdate(HttpServletRequest request){
		return null;
	}
}

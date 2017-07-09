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
	
	/*
	 * 펀딩성공사례 리스트에서 하나의 행을 클릭시 자세한내용을 보여줄 메서드
	 * 폼형식으로 보여줌
	 * 아이디가 있을경우 수정화면이 되어서 수정양식으로 보여주고
	 * 아이디가 없을경우 인서트 양식으로 보여줌
	 */
	@RequestMapping("/admin/fundingExampleDetail")
	public String fundingExampleDetail(HttpServletRequest request,Model model){
		return null;
	}
	
	/*펀딩성공사례를 새로 등록해주고 리스트화면으로 되돌리는 메서드*/
	@RequestMapping("/admin/fundingExampleInsert")
	public String fundingExampleInsert(HttpServletRequest request){
		return null;
	}
	
	/*펀딩 성공사례를 수정해주고 리스트 화면으로 되돌리는 메서드*/
	@RequestMapping("/admin/fundingExampleUpdate")
	public String fundingExampleUpdate(HttpServletRequest request){
		return null;
	}
	
	/*펀딩 성공사례를 삭제해주고 리스트 화면으로 되돌리는 메서드*/
	@RequestMapping("/admin/fundingExampleUpdate")
	public String fundingExampleDelete(HttpServletRequest request){
		return null;
	}
}

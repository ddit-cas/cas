package com.cas.admin.report.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminReportController {

	/*회원들이 신고한 리스트를 보여주는 화면으로 가는 메서드*/
	@RequestMapping("/admin/reportList")
	public String adminReportList(Model model){
		return null;
	}
	
	/*
	 * 신고한 리스트를 클릭하면 상세 내용을 볼수 있게 하는 메서드
	 * 리포트 아이디를 통해서 신고내용을 볼수 있게한다.
	 */
	@RequestMapping("/admin/reportDetail")
	public String adminReportDetail(HttpServletRequest request, Model model){
		return null;
	}
	
	/*
	 * 신고한 게시물로 가는 메서드
	 * 가면 삭제 버튼이 있다.
	 */
	@RequestMapping("/admin/reportArticle")
	public String adminReportArticle(HttpServletRequest request){
		return null;
	}
	
	/*신고당한 게시물의 삭제버튼을 눌렀을떄 오는 메서드*/
	@RequestMapping("/admin/reportDelete")
	public String adminReportDelete(HttpServletRequest request){
		return null;
	}
}
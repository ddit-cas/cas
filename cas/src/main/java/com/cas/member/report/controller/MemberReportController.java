package com.cas.member.report.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.db.dto.ReportVO;
import com.cas.report.service.ReportService;

@Controller
public class MemberReportController {
	
	@Autowired
	private ReportService reportService;
	
	public void setReportService(ReportService reportService){
		this.reportService = reportService;
	}
	
	/*게시글을 신고하는 양식으로 가는 메서드*/
	@RequestMapping("/member/reportForm")
	public String reportArticleForm(HttpServletRequest request,HttpSession session){
		return null;
	}

	/*게시글을 신고하는 메서드*/
	@RequestMapping("/member/report")
	public String reportArticle(){
		ReportVO report = new ReportVO();
		report.setReportNum("1");
		report.setContentNum("1");
		report.setReportContent("핵노잼");
		report.setReportMem("a001");
		report.setReportNum("1");
		
		int result = reportService.insertReport(report);
		System.out.println("controller : "+result);
		return null;
	}
}

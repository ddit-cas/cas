package com.cas.member.report.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.db.dto.MemberVO;
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
	public String reportArticle(HttpServletRequest request,HttpSession session){
		ReportVO report = new ReportVO();
		System.out.println("게시글을 신고하는 메숴드  :"+request.getParameter("chk"));
		System.out.println("게시글을 신고하는 메숴드2  :"+request.getParameter("textbox"));
		System.out.println("번호가뭐니  :"+request.getParameter("boardCode"));
		System.out.println("신고당한놈!  :"+request.getParameter("contentWriter"));
		System.out.println("컨텐트 넘버!  :"+request.getParameter("contentNum"));
		String boardCode = request.getParameter("boardCode");
		String url = null;
		if(request.getParameter("chk") != null){
			
			report.setReportContent(request.getParameter("chk"));
		}else if(request.getParameter("chkbox") != null){
			report.setReportContent(request.getParameter("textbox"));
		}
		report.setReportMem(((MemberVO)session.getAttribute("loginUser")).getMemId());
		report.setContentNum(request.getParameter("contentNum"));
		
		reportService.insertReport(report);
		
		if(boardCode.equals("B005") ){
			url = "member/community/freeBoard/freeBoard_go";
		}else if(boardCode.equals("B006")){
			url = "member/community/pr/VideoBoard_go";
		}else if(boardCode.equals("B007")){
			url="member/community/show/showDetail_go";
		}
		return url;
	}
}

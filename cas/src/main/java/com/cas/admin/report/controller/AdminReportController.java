package com.cas.admin.report.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.db.dto.ContentReportVO;
import com.cas.db.dto.Paging;
import com.cas.db.dto.ReportVO;
import com.cas.report.service.ReportService;

@Controller
public class AdminReportController {

	@Autowired
	private ReportService reportService;


	public void setReportService(ReportService reportService){
		this.reportService = reportService;
	}

	/*회원들이 신고한 리스트를 보여주는 화면으로 가는 메서드*/
	@RequestMapping("/admin/reportList")
	public String adminReportList(HttpServletRequest request, Model model){
		List<ReportVO> reportList = reportService.selectReportList();
		//현재페이지
		String page = request.getParameter("tab");
		//				//받은 데이터리스트의 데이터갯수
		int dataRow = reportList.size();
		Paging paging = new Paging(dataRow, page);
		System.out.println(paging.toString());
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		model.addAttribute("reportList",reportList);
		String url = "admin/board/declartion/declartionPage";
		return url;
	}

	/*
	 * 신고한 리스트를 클릭하면 상세 내용을 볼수 있게 하는 메서드
	 * 리포트 아이디를 통해서 신고내용을 볼수 있게한다.
	 */
	@RequestMapping("/admin/reportDetail")
	public String adminReportDetail(HttpServletRequest request, Model model){
		String contentNum = request.getParameter("contentNum");
		System.out.println("콘텐츠 번호 : "+contentNum);
		List<ContentReportVO> reportList = reportService.selectReport(contentNum);
		System.out.println("vo에서 받은 신고 번호 : "+reportList.get(0).getReportContent());
		model.addAttribute("report",reportList);
		String url = "admin/board/declartion/declartionPage-detail";
		return url;
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
		String contentNum = request.getParameter("contentNum");
		reportService.deleteArticle(contentNum);
		reportService.realDeleteReport(contentNum);
		return "admin/board/declartion/declartionPage_go";
	}
}

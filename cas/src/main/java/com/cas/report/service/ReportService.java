package com.cas.report.service;

import java.util.List;

import com.cas.db.dto.ReportVO;


public interface ReportService {

	/*신고리스트를 가져오는메서드*/
	public List<ReportVO> selectReportList();
	
	/*신고세부내용을  가져오는메서드*/
	public ReportVO selectReport(String reportId);
	
	/*신고당한 게시글을 삭제하는 메서드*/
	public void deleteArticle();
	
}
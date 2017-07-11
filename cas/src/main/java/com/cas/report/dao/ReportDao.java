package com.cas.report.dao;

import java.util.List;

import com.cas.db.dto.Article;
import com.cas.db.dto.Report;

public interface ReportDao {

	/*신고리스트를 가져오는메서드*/
	public List<Report> selectReportList();
	
	/*신고세부내용을  가져오는메서드*/
	public Report selectReport(String reportId);
	
	/*신고당한 게시글을 삭제하는 메서드*/
	public void deleteArticle();
}

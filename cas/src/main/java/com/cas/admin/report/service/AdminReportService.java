package com.cas.admin.report.service;

import java.util.List;

import com.cas.admin.db.dto.Article;
import com.cas.admin.db.dto.Report;


public interface AdminReportService {

	/*신고리스트를 가져오는메서드*/
	public List<Report> selectReportList();
	
	/*신고세부내용을  가져오는메서드*/
	public Report selectReport();
	
	/*신고당한 게시글을 가져오는메서드*/
	public Article selectArticle();
	
	/*신고당한 게시글을 삭제하는 메서드*/
	public void deleteArticle();
	
}
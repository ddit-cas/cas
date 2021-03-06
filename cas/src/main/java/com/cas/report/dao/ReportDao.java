package com.cas.report.dao;

import java.util.List;

import com.cas.db.dto.ContentReportVO;
import com.cas.db.dto.ReportVO;

public interface ReportDao {

	/*신고리스트를 가져오는메서드*/
	public List<ReportVO> selectReportList();
	
	/*신고세부내용을  가져오는메서드*/
	public List<ContentReportVO> selectReport(String reportId);
	
	/*신고당한 게시글을 삭제하는 메서드*/
	public void deleteArticle(String contentNum);
	
	public void realDeleteReport(String contentNum);
	
	/* 멤버들의 신고를 등록하는 메서드 */
	public int insertReport(ReportVO report);
}

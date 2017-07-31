package com.cas.report.service.impl;

import java.util.List;

import com.cas.db.dto.ContentReportVO;
import com.cas.db.dto.ReportVO;
import com.cas.report.dao.ReportDao;
import com.cas.report.service.ReportService;

public class ReportServiceImpl implements ReportService{

	private ReportDao reportDao;
	
	public void setReportDao(ReportDao reportDao){
		this.reportDao = reportDao;
	}
	
	@Override
	public List<ReportVO> selectReportList() {
		List<ReportVO> resultList;
		resultList = reportDao.selectReportList();
		return resultList;
	}

	@Override
	public void deleteArticle(String contentNum) {
		 reportDao.deleteArticle(contentNum);
		
	}

	@Override
	public List<ContentReportVO> selectReport(String contentNum) {
		List<ContentReportVO> report = reportDao.selectReport(contentNum);
		return report;
	}

	@Override
	public int insertReport(ReportVO report) {
		int result =reportDao.insertReport(report);
		return result;
	}

	@Override
	public void realDeleteReport(String contentNum) {
		reportDao.realDeleteReport(contentNum);
		
	}

}

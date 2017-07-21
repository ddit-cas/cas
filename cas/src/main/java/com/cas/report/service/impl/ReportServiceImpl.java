package com.cas.report.service.impl;

import java.util.List;

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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteArticle() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ReportVO selectReport(String reportId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertReport(ReportVO report) {
		int result =reportDao.insertReport(report);
		System.out.println(result);
		return result;
	}

}

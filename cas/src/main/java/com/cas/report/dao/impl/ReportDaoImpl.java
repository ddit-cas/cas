package com.cas.report.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.ContentReportVO;
import com.cas.db.dto.ReportVO;
import com.cas.report.dao.ReportDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class ReportDaoImpl implements ReportDao{
	
	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient){
		this.sqlMapClient=sqlMapClient;
	}

	@Override
	public List<ReportVO> selectReportList() {
		List<ReportVO> resultList = null;
		try {
			resultList = sqlMapClient.queryForList("selectReport");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	@Override
	public void deleteArticle(String contentNum) {
		try {
			sqlMapClient.update("deleteReport",contentNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public List<ContentReportVO> selectReport(String contentNum) {
		List<ContentReportVO> result = null;
		System.out.println("DAO param-"+contentNum);
		try {
			result =  sqlMapClient.queryForList("selectDetail2",contentNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int insertReport(ReportVO report) {
		int result=0;
		try {
			result=sqlMapClient.update("insertReport", report);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public void realDeleteReport(String contentNum) {
		try {
			sqlMapClient.delete("realDelete",contentNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}

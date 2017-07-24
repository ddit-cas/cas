package com.cas.report.dao.impl;

import java.sql.SQLException;
import java.util.List;

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
		int result=0;
		try {
			result=sqlMapClient.update("insertReport", report);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}

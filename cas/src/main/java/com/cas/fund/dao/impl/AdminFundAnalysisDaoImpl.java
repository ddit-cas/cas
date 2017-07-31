package com.cas.fund.dao.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.IngFundVO;
import com.cas.fund.dao.AdminFundAnalysisDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class AdminFundAnalysisDaoImpl implements AdminFundAnalysisDao{

	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient){
		this.sqlMapClient = sqlMapClient;
	}
	
	@Override
	public int selectAllFundCount() {

		int result=-1;
		try {
			result = (Integer) sqlMapClient.queryForObject("totalFundCount");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@Override
	public int selectLastMonthAllFundCount() {
		int result=-1;
		try {
			result = (Integer) sqlMapClient.queryForObject("lastMonthEntrollmentFund");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int selectThisMonthAllFundCount() {
		int result =-1;
		try {
			result = (Integer) sqlMapClient.queryForObject("monthEntrollmentFund");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<ArticleVO> selectTodayAllFundCount() {
		List<ArticleVO> resultList= null; 
		try {
			resultList = (List<ArticleVO>) sqlMapClient.queryForList("dayEntrollmentFund");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return resultList;
	}
	
	@Override
	public int selectTodayFundCount(){
		int result =-1;
		try {
			result = (Integer) sqlMapClient.queryForObject("dateEntrollmentFund");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@Override
	public int selectSuccessFundCount() {
		
		int result=-1;
		try {
			result = (Integer) sqlMapClient.queryForObject("fundSuccessCount");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int selectFailedFundCount() {
		int result=-1;
		try {
			result = (Integer) sqlMapClient.queryForObject("fundFailedCount");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int selectCancelFundCount() {
		int result=-1;
		try {
			result = (Integer) sqlMapClient.queryForObject("fundCancelCount");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<IngFundVO> selectSearchFundList(String key, String index) {
		List<IngFundVO> resultList =null;
		Map<String,String> map = new HashMap<String,String>();
		map.put("index", index);
		map.put("key", key);
		System.out.println("adminfunddao key : "+key);
		System.out.println("adminfunddao index : "+index);
		
		try {
			resultList = sqlMapClient.queryForList("selectSearchFundAnalysis",map);
			System.out.println(resultList.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
	}

}

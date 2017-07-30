package com.cas.fund.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.FundVO;
import com.cas.db.dto.IngFundVO;
import com.cas.db.dto.MostViewFundVO;
import com.cas.fund.dao.FundDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class FundDaoImpl implements FundDao{

	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient) {
		this.sqlMapClient = sqlMapClient;
	}

	@Override
	public List<IngFundVO> selectIngFundList() {
		List<IngFundVO> ingFundList = null;
		try {
			ingFundList=sqlMapClient.queryForList("ingFundList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(ingFundList.get(0).getContentNum());
		return ingFundList;
	}

	@Override
	public IngFundVO selectIngFund(String contentNum) {
		IngFundVO ingFund = null;
		try {
			ingFund=(IngFundVO) sqlMapClient.queryForObject("ingFund",contentNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ingFund;
	}

	@Override
	public boolean insertFund(FundVO fund, ArticleVO article) {
		boolean result = false;
		try {
			
			int answer = sqlMapClient.update("insertFund",fund);
			String fundSeq = (String)sqlMapClient.queryForObject("selectFundSeqNum");
			article.setFundingNum(fundSeq);
			sqlMapClient.insert("insertArticle",article);
			
			if(answer > 0){
				result = true;
			}else{
				result = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public void updateFund(FundVO fund) {
		// TODO Auto-generated method stub
	}

	@Override
	public void deleteFund(FundVO fund) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<IngFundVO> selectTopFundList() {
		List<IngFundVO> topFundList = null;
		try {
			topFundList = sqlMapClient.queryForList("selectTopFundList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return topFundList;
	}

	@Override
	public List<MostViewFundVO> selectTopClickFundList(String classify) {
		List<MostViewFundVO> topViewFundList = null;
		try {
			System.out.println(classify);
			topViewFundList = sqlMapClient.queryForList("selectTopViewFundList",classify);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return topViewFundList;
	}

	@Override
	public List<MostViewFundVO> selectShortFundList(int rownum) {
		List<MostViewFundVO> shortFundList = null;
		try {
			shortFundList = sqlMapClient.queryForList("shortFundList",rownum);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return shortFundList;
	}
}

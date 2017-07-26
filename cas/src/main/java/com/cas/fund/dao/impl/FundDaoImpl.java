package com.cas.fund.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.FundVO;
import com.cas.db.dto.IngFundVO;
import com.cas.fund.dao.FundDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class FundDaoImpl implements FundDao{

	private SqlMapClient sqlMapClient;
	public void setSqlMapClient(SqlMapClient sqlMapClient) {
		this.sqlMapClient = sqlMapClient;
	}

	@Override
	public List<IngFundVO> selectIngFundList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public IngFundVO selectIngFund(String contentNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertFund(FundVO fund, ArticleVO article) {
		boolean result = false;
		try {
			
			int answer = sqlMapClient.update("insertFund",fund);
			String fundSeq = (String)sqlMapClient.queryForObject("selectFundSeqNum");
			article.setFundingNum(fundSeq);
			System.out.println(fundSeq);
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

}

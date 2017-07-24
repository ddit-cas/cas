package com.cas.fund.dao.impl;

import java.util.List;

import com.cas.db.dto.FundVO;
import com.cas.db.dto.IngFundVO;
import com.cas.fund.dao.FundDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class FundDaoImpl implements FundDao{

	private SqlMapClient SqlMapClient;

	public void setSqlMapClient(SqlMapClient sqlMapClient) {
		SqlMapClient = sqlMapClient;
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
	public void insertFund(FundVO fund) {
		// TODO Auto-generated method stub
		
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

package com.cas.fund.service.impl;

import java.util.List;

import com.cas.db.dto.FundVO;
import com.cas.db.dto.IngFundVO;
import com.cas.fund.dao.FundDao;
import com.cas.fund.service.FundService;

public class FundServiceImpl implements FundService{

	private FundDao fundDao;
	
	public void setFundDao(FundDao fundDao) {
		this.fundDao = fundDao;
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
	public boolean insertFund(FundVO fund) {
		return fundDao.insertFund(fund);
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

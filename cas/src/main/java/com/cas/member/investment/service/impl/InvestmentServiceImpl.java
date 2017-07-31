package com.cas.member.investment.service.impl;

import java.util.List;

import com.cas.db.dto.InvestmentVO;
import com.cas.member.investment.dao.InvestmentDao;
import com.cas.member.investment.service.InvestmentService;

public class InvestmentServiceImpl implements InvestmentService {

	private InvestmentDao investmentDao;
	
	public void setInvestmentDao(InvestmentDao investmentDao){
		this.investmentDao = investmentDao;
	}
	
	@Override
	public int insertInvestment(InvestmentVO invest) {
		return investmentDao.insertInvestment(invest);
	}

	@Override
	public List<InvestmentVO> selectInvestmentList(String memId) {
		return investmentDao.selectInvestmentList(memId);
	}


}

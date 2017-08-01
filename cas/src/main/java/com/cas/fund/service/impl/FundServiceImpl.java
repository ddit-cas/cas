package com.cas.fund.service.impl;

import java.util.List;

import org.springframework.scheduling.annotation.Scheduled;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.ContentFundVO;
import com.cas.db.dto.FundVO;
import com.cas.db.dto.IngFundVO;
import com.cas.db.dto.MostViewFundVO;
import com.cas.fund.dao.FundDao;
import com.cas.fund.service.FundService;

public class FundServiceImpl implements FundService{

	private FundDao fundDao;
	
	public void setFundDao(FundDao fundDao) {
		this.fundDao = fundDao;
	}
	
	@Override
	@Scheduled(cron="0 0 0 * * *")
	public void updateEndFund(){
		fundDao.updateEndFund();
		System.out.println("스케쥴 잘되나요?");
	}
	
	@Override
	public List<IngFundVO> selectIngFundList() {
		return fundDao.selectIngFundList();
	}

	@Override
	public IngFundVO selectIngFund(String contentNum) {
		return fundDao.selectIngFund(contentNum);
	}

	@Override
	public boolean insertFund(FundVO fund, ArticleVO article) {
		return fundDao.insertFund(fund, article);
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
		return fundDao.selectTopFundList();
	}

	@Override
	public List<MostViewFundVO> selectTopClickFundList(String classify) {
		return fundDao.selectTopClickFundList(classify);
	}

	@Override
	public List<MostViewFundVO> selectShortFundList(int rownum) {
		return fundDao.selectShortFundList(rownum);
	}

	@Override
	public List<ContentFundVO> selectEndFund(String fundingNum) {
		List<ContentFundVO> resultList = null;
		resultList = fundDao.selectEndFund(fundingNum);
		return resultList;
	}
}
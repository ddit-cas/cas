package com.cas.fund.service.impl;

import java.util.List;
import java.util.Map;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.IngFundVO;
import com.cas.fund.dao.AdminFundAnalysisDao;
import com.cas.fund.service.AdminFundAnalysisService;

public class AdminFundAnalysisServiceImpl implements AdminFundAnalysisService{

	private AdminFundAnalysisDao adminFundAnalysisDao;
	
	public void setAdminFundAnalysisDao(AdminFundAnalysisDao adminFundAnalysisDao){
		this.adminFundAnalysisDao = adminFundAnalysisDao;
	}
	
	@Override
	public int selectAllFundCount() {
		return adminFundAnalysisDao.selectAllFundCount();
	}

	@Override
	public int selectLastMonthAllFundCount() {
		return adminFundAnalysisDao.selectLastMonthAllFundCount();
	}

	@Override
	public int selectThisMonthAllFundCount() {
		return adminFundAnalysisDao.selectThisMonthAllFundCount();
	}

	@Override
	public List<ArticleVO> selectTodayAllFundCount() {
		return adminFundAnalysisDao.selectTodayAllFundCount();
	}
	
	@Override
	public int selectTodayFundCount(){
		return adminFundAnalysisDao.selectTodayFundCount();
	}
	
	@Override
	public int selectSuccessFundCount() {
		return adminFundAnalysisDao.selectSuccessFundCount();
	}

	@Override
	public int selectFailedFundCount() {
		return adminFundAnalysisDao.selectFailedFundCount();
	}

	@Override
	public int selectCancelFundCount() {
		return adminFundAnalysisDao.selectCancelFundCount();
	}

	@Override
	public List<IngFundVO> selectSearchFundList(String key, String index) {
		return adminFundAnalysisDao.selectSearchFundList(key, index);
	}

}

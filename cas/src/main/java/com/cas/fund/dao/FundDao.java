package com.cas.fund.dao;

public interface FundDao {

	/*지난달 펀딩에 투자된 총액을 가져옴*/
	public int selectLastMonthAllFundMount();
	
	/*이번달 펀딩에 투자된 총액을 가져옴*/
	public int selectThisMonthAllFundMount();
	
	/*오늘 펀딩에 투자된 총액을 가져옴*/
	public int selectTodayMonthAllFundMount();
	
	/*모든 크라우드펀딩의 숫자를 가져옴*/
	public int selectAllFundCount();
	
	/*목표 달성한 펀딩수*/
	public int selectClearedFundCount();

	/*목표 달성에 실패한 펀딩수*/
	public int selectFailedFundCount();
	
	/*진행중인 펀딩수*/
	public int selectIngFundCount();
	
	/*지난달 목표 달성한 펀딩수*/
	public int selectLastMonthClearedFundCount();
	
	/*지난달 목표 달성 실패한 펀딩수*/
	public int selectLastMonthFailedFundCount();
	
	/*이번달 목표 달성한 펀딩수*/
	public int selectThisMonthClearCount();
	
	/*이번달 목표 달성 실패한 펀딩수*/
	public int selectThisMonthFailedFundCount();
	
}

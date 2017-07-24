package com.cas.fund.dao;

import java.util.List;

import com.cas.db.dto.FundVO;
import com.cas.db.dto.IngFundVO;

public interface FundDao {

	/*현재 진행중인 펀드를 가져오는 메서드*/
	public List<IngFundVO> selectIngFundList();
	
	/*선택된 현재 진행중인 펀드를 가져오는 메서드*/
	public IngFundVO selectIngFund(String contentNum);
	
	/*펀드를 인서트 하는 메서드*/
	public void insertFund(FundVO fund);
	
	/*펀드를 업데이트 하는 메서드*/
	public void updateFund(FundVO fund);
	
	/*펀드를 딜리트 하는 메서드*/
	public void deleteFund(FundVO fund);
}

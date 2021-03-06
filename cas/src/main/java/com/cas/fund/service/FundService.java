package com.cas.fund.service;

import java.util.List;

import org.springframework.scheduling.annotation.Scheduled;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.ContentFundVO;
import com.cas.db.dto.FundVO;
import com.cas.db.dto.IngFundVO;
import com.cas.db.dto.MostViewFundVO;

public interface FundService {
	
	/*현재 진행중인 펀드를 가져오는 메서드*/
	public List<IngFundVO> selectIngFundList();
	
	/*선택된 현재 진행중인 펀드를 가져오는 메서드*/
	public IngFundVO selectIngFund(String contentNum);
	
	/*펀드를 인서트 하는 메서드*/
	public boolean insertFund(FundVO fund, ArticleVO article);
	
	/*펀드를 업데이트 하는 메서드*/
	public void updateFund(FundVO fund);
	
	/*펀드를 딜리트 하는 메서드*/
	public void deleteFund(FundVO fund);

	/*5위까지의 크라우드 펀드를 가져오는 메서드*/
	public List<IngFundVO> selectTopFundList();

	/*많이 클릭된 펀드를 보는 메서드*/
	public List<MostViewFundVO> selectTopClickFundList(String classify);

	/*개수가 모자란 펀드를 가져오는 메서드*/
	public List<MostViewFundVO> selectShortFundList(int rownum);
	
	public void updateEndFund();
	
	public List<ContentFundVO> selectEndFund();
}

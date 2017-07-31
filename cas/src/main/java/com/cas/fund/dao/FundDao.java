package com.cas.fund.dao;

import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.FundVO;
import com.cas.db.dto.IngFundVO;
import com.cas.db.dto.MostViewFundVO;

public interface FundDao {

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

	/*순위권 펀딩을 가져오는 메서드*/
	public List<IngFundVO> selectTopFundList();

	/*연령대 성별로 많이본 펀드리스트를 가져오는 메서드*/
	public List<MostViewFundVO> selectTopClickFundList(String classify);

	/*개수가 모자란 펀드리스트를 가져오는 메서드*/
	public List<MostViewFundVO> selectShortFundList(int rownum);

	/*날짜가종료된 펀딩들을 엔드로 만드는 메서드*/
	public void updateEndFund();
}

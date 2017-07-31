package com.cas.fund.dao;

import java.util.List;
import java.util.Map;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.IngFundVO;

public interface AdminFundAnalysisDao {
	
	/*모든 크라우드펀딩의 숫자를 가져옴*/
	public int selectAllFundCount();

	/*지난달 펀딩 등록수*/
	public int selectLastMonthAllFundCount();
	
	/*이번달 펀딩 등록수*/
	public int selectThisMonthAllFundCount();
	
	/*일별 펀딩 등록수*/
	public List<ArticleVO> selectTodayAllFundCount();
	
	/*금일 등록 펀딩수*/
	public int selectTodayFundCount();
	
	/*목표 달성한 펀딩수*/
	public int selectSuccessFundCount();

	/*목표 달성에 실패한 펀딩수*/
	public int selectFailedFundCount();
	
	/*진행중 취소한 펀딩수*/
	public int selectCancelFundCount();
	
	/*크라우드 펀딩 검색*/
	public List<IngFundVO> selectSearchFundList(String key, String index);
}

package com.cas.fundingexample.service;

import java.util.List;

import com.cas.db.dto.ArticleVO;

public interface FundingExampleService {

	/*펀딩성공사례리스트를 가져오는 메서드*/
	public List<ArticleVO> selectFudningExampleList();
	
	/*펀딩성공사례 하나를 가져오는 메서드*/
	public ArticleVO selectFundingExample(String articleId);
	
	/*펀딩성공사례를 등록하는 메서드*/
	public boolean insertFundingExample(ArticleVO fundingExample);
	
	/*펀딩성공사례를 수정한느 메서드*/
	public boolean updateFundingExample(ArticleVO fundingExample);
	
	/*펀딩성공사례를 삭제하는 메서드*/
	public boolean deleteFundingExample(String articleId);
}

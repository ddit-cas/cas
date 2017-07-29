package com.cas.member.investment.service;

import java.util.List;

import com.cas.db.dto.InvestmentVO;

public interface InvestmentService {
	
	/*투자하면 DB에 인서트되는 메서드*/
	public int insertInvestment(String memId);
	
	/*펀딩번호로 투자했던 리스트를 불러오는 메서드*/
	public List<InvestmentVO> selectInvestmentList(String memId);
}

package com.cas.member.investment.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.InvestmentVO;
import com.cas.member.investment.dao.InvestmentDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class InvestmentDaoImpl implements InvestmentDao {
	private SqlMapClient sqlMapClient;
	public void setSqlMapClient(SqlMapClient sqlMapClient){
		this.sqlMapClient = sqlMapClient;
	}

	@Override
	public int insertInvestment(String memId) {
		int result = 0;
		try {
			result = sqlMapClient.update("insertInvest", memId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<InvestmentVO> selectInvestmentList(String fundingNum) {
		List<InvestmentVO> resultList = null;
		try {
			resultList = sqlMapClient.queryForList("selectInvest", fundingNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
	}
}

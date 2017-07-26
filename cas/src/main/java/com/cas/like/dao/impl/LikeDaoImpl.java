package com.cas.like.dao.impl;

import java.sql.SQLException;

import com.cas.db.dto.RecomVO;
import com.cas.like.dao.LikeDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class LikeDaoImpl implements LikeDao{

	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient) {
		this.sqlMapClient = sqlMapClient;
	}

	@Override
	public void insertRecom(RecomVO recom) {
		try {
			sqlMapClient.update("insertRecom",recom);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void deleteRecom(String contentNum) {
		try {
			sqlMapClient.update("deleteRecom",contentNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

package com.cas.caser.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.caser.dao.CaserDao;
import com.cas.db.dto.CaserVO;
import com.ibatis.sqlmap.client.SqlMapClient;

public class CaserDaoImpl implements CaserDao{
	
	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient){
		this.sqlMapClient = sqlMapClient;
		
	}
	
	@Override
	public List<CaserVO> selectCaserList() {
		List<CaserVO> resultList = null;
		CaserVO caser = new CaserVO();
		try {
			resultList = sqlMapClient.queryForList("selectCaserList",caser);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return resultList;
	}

}

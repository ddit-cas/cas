package com.cas.point.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.PointVO;
import com.cas.point.dao.PointDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class PointDaoImpl implements PointDao{

	private SqlMapClient sqlMapclient;
	
	public void setSqlMapClient(SqlMapClient sqlMapclient){
		this.sqlMapclient = sqlMapclient;
	}
	
	@Override
	public List<PointVO> selectTotalRechargePoint(String chargingMem) {
		List<PointVO> resultList = null;
		try {
			resultList = (List<PointVO>) sqlMapclient.queryForList("selectPoint", chargingMem);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	@Override
	public List<PointVO> selectMonthlyTotalRechargePoint() {
		List<PointVO> resultList = null;
		try {
			resultList = sqlMapclient.queryForList("selectChargeTotalPoint");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	@Override
	public void insertPoint(String chargingMem) {
		try {
			sqlMapclient.update("insertPoint", chargingMem);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

package com.cas.caser.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cas.caser.dao.CaserDao;
import com.cas.db.dto.CaserDetailVO;
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

	@Override
	public List<CaserVO> selectCaserSearchList(String index, String key) {
		List<CaserVO> resultList = null;
		Map<String,String> map=new HashMap<String,String>();
		map.put("index", index);
		map.put("key", key);
		
		try {
			resultList = sqlMapClient.queryForList("selectCaserSearchList",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
				
		return resultList;
	}

	@Override
	public List<CaserDetailVO> selectCaserDetail(String memId) {
		List<CaserDetailVO> caserList = null;
		
		try {
			caserList = sqlMapClient.queryForList("selectCaserDetail",memId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return caserList;
	}

	@Override
	public List<CaserDetailVO> selectBasicCaserDetail(String memId) {
		List<CaserDetailVO> resultList = null;
		try {
			resultList = sqlMapClient.queryForList("selectBasicCaserDetail",memId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
	}

}

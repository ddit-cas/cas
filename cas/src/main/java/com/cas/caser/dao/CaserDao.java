package com.cas.caser.dao;

import java.util.List;

import com.cas.db.dto.CaserDetailVO;
import com.cas.db.dto.CaserVO;

public interface CaserDao {
	
	public List<CaserVO> selectCaserList();
	
	public List<CaserVO> selectCaserSearchList(String index, String key);
	
	public List<CaserDetailVO> selectCaserDetail(String memId);

}

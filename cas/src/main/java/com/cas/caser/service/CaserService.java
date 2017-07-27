package com.cas.caser.service;

import java.util.List;

import com.cas.db.dto.CaserDetailVO;
import com.cas.db.dto.CaserVO;

public interface CaserService {
	
	public List<CaserVO> selectCaserList();
	
	public List<CaserVO> selectCaserSearchList(String index, String key);
	
	public List<CaserDetailVO> selectCaserDetail(String memId);

	public List<CaserDetailVO> selectBasicCaserDetail(String memId);
}

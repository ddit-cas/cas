package com.cas.caser.service.impl;

import java.util.List;

import com.cas.caser.dao.CaserDao;
import com.cas.caser.service.CaserService;
import com.cas.db.dto.CaserDetailVO;
import com.cas.db.dto.CaserVO;

public class CaserServiceImpl implements CaserService{
	
	private CaserDao caserDao;
	
	public void setCaserDao(CaserDao caserDao){
		this.caserDao=caserDao;
	}
	
	@Override
	public List<CaserVO> selectCaserList() {
		List<CaserVO> resultList;
		resultList = caserDao.selectCaserList();
		return resultList;
	}

	@Override
	public List<CaserVO> selectCaserSearchList(String index, String key) {
		List<CaserVO> resultList;
		resultList = caserDao.selectCaserSearchList(index, key);
		return resultList;
	}

	@Override
	public List<CaserDetailVO> selectCaserDetail(String memId) {
		List<CaserDetailVO> caserList;
		caserList = caserDao.selectCaserDetail(memId);
		return caserList;
	}

	@Override
	public List<CaserDetailVO> selectBasicCaserDetail(String memId) {
		List<CaserDetailVO> resultList;
		resultList = caserDao.selectBasicCaserDetail(memId);
		return resultList;
	}

}

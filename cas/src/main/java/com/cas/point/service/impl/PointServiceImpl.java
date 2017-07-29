package com.cas.point.service.impl;

import java.util.List;

import com.cas.db.dto.PointVO;
import com.cas.point.dao.PointDao;
import com.cas.point.service.PointService;

public class PointServiceImpl implements PointService{

	private PointDao pointDao;
	public void setPointDao(PointDao pointDao){
		this.pointDao = pointDao;
	}
	
	@Override
	public List<PointVO> selectTotalRechargePoint(String ChargingMem) {
		return pointDao.selectTotalRechargePoint(ChargingMem);
	}

	@Override
	public List<PointVO> selectMonthlyTotalRechargePoint() {
		return pointDao.selectMonthlyTotalRechargePoint();
	}

	@Override
	public void insertPoint(String chargingMem) {
		pointDao.insertPoint(chargingMem);
	}

}

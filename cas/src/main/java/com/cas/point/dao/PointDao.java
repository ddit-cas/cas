package com.cas.point.dao;

import java.util.List;

import com.cas.db.dto.PointVO;

public interface PointDao {

	/*개인별 충전금액*/
	public List<PointVO> selectTotalRechargePoint(String chargingMem);
	
	/*월별 충전& 환급 금액의 총합*/
	public List<PointVO> selectMonthlyTotalRechargePoint();
	
	/*충전 및 환급 할 때 insert*/
	public void insertPoint(String chargingMem);
}

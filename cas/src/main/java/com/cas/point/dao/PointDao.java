package com.cas.point.dao;

public interface PointDao {

	/*총 충전금액*/
	public int selectTotalRechargePoint();
	
	/*지난달 총 충전금액*/
	public int selectLastMonthTotalRechargePoint();
	
	/*이번달 총 충전금액*/
	public int selectThisMonthTotalRechargePoint();
	
	/*평균 충전금액*/
	public int selectAvarageRechargePoint();
	
	/*총 충전횟수*/
	public int selectTotalRechargeCount();
	
	/*지난달 총 충전횟수*/
	public int selectLastMonthTotalRechargeCount();
	
	/*이번달 총 충전회숫*/
	public int selectThisMonthTotalRechargeCount();
	
	/*평균 충전횟수*/
	public int selectAvarageRechargeCount();
}

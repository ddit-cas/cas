package com.cas.carousel.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.carousel.dao.CarouselDao;
import com.cas.db.dto.CarouselVO;
import com.ibatis.sqlmap.client.SqlMapClient;

public class CarouselDaoImpl implements CarouselDao{

	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient) {
		this.sqlMapClient = sqlMapClient;
	}

	@Override
	public List<CarouselVO> selectCarouselList() {
		List<CarouselVO> carouselList = null;
		try {
			carouselList = sqlMapClient.queryForList("selectCarouselList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return carouselList;
	}

	@Override
	public CarouselVO selectCarousel(String carouselNum) {
		CarouselVO carouselVO = null;
		try {
			carouselVO = (CarouselVO) sqlMapClient.queryForObject("selectCarousel",carouselNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return carouselVO;
	}

	@Override
	public boolean insertCarousel(CarouselVO carousel) {
		boolean result = false;
		int resultNum = 0;
		try {
			resultNum = sqlMapClient.update("insertCarousel",carousel);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (resultNum>0) {
			result=true;
		}
		return result;
	}

	@Override
	public boolean updateCarousel(CarouselVO carousel) {
		boolean result = false;
		int resultNum = 0;
		try {
			resultNum = sqlMapClient.update("updateCarousel",carousel);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (resultNum>0) {
			result=true;
		}
		return result;
	}

	@Override
	public boolean deleteCarousel(String carouselNum) {
		boolean result = false;
		int resultNum = 0;
		try {
			resultNum = sqlMapClient.update("deleteCarousel",carouselNum);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (resultNum>0) {
			result=true;
		}
		return result;
	}

}

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
			System.out.println("다오에서 ㅜㅊㄹ력하는 사이즈" +carouselList.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return carouselList;
	}

	@Override
	public CarouselVO selectCarousel(String carouselId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertCarousel(CarouselVO carousel) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateCarousel(CarouselVO carousel) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteCarousel(String carouselId) {
		// TODO Auto-generated method stub
		return false;
	}

}

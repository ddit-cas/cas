package com.cas.carousel.service.impl;

import java.util.List;

import com.cas.carousel.dao.CarouselDao;
import com.cas.carousel.service.CarouselService;
import com.cas.db.dto.CarouselVO;

public class CarouselServiceImpl implements CarouselService{

	private CarouselDao carouselDao;
	
	public void setCarouselDao(CarouselDao carouselDao) {
		this.carouselDao = carouselDao;
	}

	@Override
	public List<CarouselVO> selectCarouselList() {
		return carouselDao.selectCarouselList();
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

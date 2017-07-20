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
	public CarouselVO selectCarousel(String carouselNum) {
		return carouselDao.selectCarousel(carouselNum);
	}

	@Override
	public boolean insertCarousel(CarouselVO carousel) {
		return carouselDao.insertCarousel(carousel);
	}

	@Override
	public boolean updateCarousel(CarouselVO carousel) {
		return carouselDao.updateCarousel(carousel);
	}

	@Override
	public boolean deleteCarousel(String carouselId) {
		return carouselDao.deleteCarousel(carouselId);
	}

}

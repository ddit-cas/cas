package com.cas.carousel.service;

import java.util.List;

import com.cas.db.dto.CarouselVO;

public interface CarouselService {

	/*캐러셀리스트를 가져올 메서드*/
	public List<CarouselVO> selectCarouselList();
	
	/*하나의 캐러세를 가져올 메서드*/
	public CarouselVO selectCarousel(String carouselId);
	
	/*캐러셀을 삽입할 메서드*/
	public boolean insertCarousel(CarouselVO carousel);
	
	/*캐러셀을 수정할 메서드*/
	public boolean updateCarousel(CarouselVO carousel);
	
	/*캐러셀을 삭제할 메서드*/
	public boolean deleteCarousel(String carouselId);
}

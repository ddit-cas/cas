package com.cas.carousel.service;

import java.util.List;

import com.cas.db.dto.Carousel;

public interface CarouselService {

	/*캐러셀리스트를 가져올 메서드*/
	public List<Carousel> selectCarouselList();
	
	/*하나의 캐러세를 가져올 메서드*/
	public Carousel selectCarousel(String carouselId);
	
	/*캐러셀을 삽입할 메서드*/
	public boolean insertCarousel(Carousel carousel);
	
	/*캐러셀을 수정할 메서드*/
	public boolean updateCarousel(Carousel carousel);
	
	/*캐러셀을 삭제할 메서드*/
	public boolean deleteCarousel(String carouselId);
}

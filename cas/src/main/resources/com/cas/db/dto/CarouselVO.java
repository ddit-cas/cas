package com.cas.db.dto;

public class CarouselVO {

	private String carouselNum;
	private String contentUrl;
	private String carouselTitle;
	private String carouselContent;
	private String carouselImage;
	private String contentTitle;
	
	public String getCarouselNum() {
		return carouselNum;
	}
	public String getContentTitle() {
		return contentTitle;
	}
	public void setContentTitle(String contentTitle) {
		this.contentTitle = contentTitle;
	}
	public void setCarouselNum(String carouselNum) {
		this.carouselNum = carouselNum;
	}
	public String getContentUrl() {
		return contentUrl;
	}
	public void setContentUrl(String contentUrl) {
		this.contentUrl = contentUrl;
	}
	public String getCarouselTitle() {
		return carouselTitle;
	}
	public void setCarouselTitle(String carouselTitle) {
		this.carouselTitle = carouselTitle;
	}
	public String getCarouselContent() {
		return carouselContent;
	}
	public void setCarouselContent(String carouselContent) {
		this.carouselContent = carouselContent;
	}
	public String getCarouselImage() {
		return carouselImage;
	}
	public void setCarouselImage(String carouselImage) {
		this.carouselImage = carouselImage;
	}
}

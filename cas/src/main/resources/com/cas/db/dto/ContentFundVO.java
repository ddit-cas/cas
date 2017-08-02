package com.cas.db.dto;

public class ContentFundVO {
	
	private String contentNum;
	private String contentImg;
	private String fundingTargetAmount;
	private String fundingPresentAmount;
	private String contentTitle;
	private String memName;
	private String state;
	
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getContentNum() {
		return contentNum;
	}
	public void setContentNum(String contentNum) {
		this.contentNum = contentNum;
	}
	public String getContentImg() {
		return contentImg;
	}
	public void setContentImg(String contentImg) {
		this.contentImg = contentImg;
	}
	public String getFundingTargetAmount() {
		return fundingTargetAmount;
	}
	public void setFundingTargetAmount(String fundingTargetAmount) {
		this.fundingTargetAmount = fundingTargetAmount;
	}
	public String getFundingPresentAmount() {
		return fundingPresentAmount;
	}
	public void setFundingPresentAmount(String fundingPresentAmount) {
		this.fundingPresentAmount = fundingPresentAmount;
	}
	public String getContentTitle() {
		return contentTitle;
	}
	public void setContentTitle(String contentTitle) {
		this.contentTitle = contentTitle;
	}

}

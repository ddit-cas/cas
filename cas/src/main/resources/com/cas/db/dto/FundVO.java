package com.cas.db.dto;

public class FundVO {

	private String fundingNum;			//펀딩 번호 시퀀스
	private int fundingTargetAmount;	//목표금액
	private int fundingPresentAmount;	//현재 모금 금액
	private String fundingEndDate;		//펀딩 종료일
	private String fundingStartDate;	//펀딩 시작일
	private String stateCode;			//펀딩 상태(목표달성:F001, 목표미달성:F002, 진행중펀딩:F003, 대기중펀딩:F004, 취소한펀딩:F005)
	
	public String getFundingNum() {
		return fundingNum;
	}
	public void setFundingNum(String fundingNum) {
		this.fundingNum = fundingNum;
	}
	public int getFundingTargetAmount() {
		return fundingTargetAmount;
	}
	public void setFundingTargetAmount(int fundingTargetAmount) {
		this.fundingTargetAmount = fundingTargetAmount;
	}
	public int getFundingPresentAmount() {
		return fundingPresentAmount;
	}
	public void setFundingPresentAmount(int fundingPresentAmount) {
		this.fundingPresentAmount = fundingPresentAmount;
	}
	public String getFundingEndDate() {
		return fundingEndDate;
	}
	public void setFundingEndDate(String fundingEndDate) {
		this.fundingEndDate = fundingEndDate;
	}
	public String getFundingStartDate() {
		return fundingStartDate;
	}
	public void setFundingStartDate(String fundingStartDate) {
		this.fundingStartDate = fundingStartDate;
	}
	public String getStateCode() {
		return stateCode;
	}
	public void setStateCode(String stateCode) {
		this.stateCode = stateCode;
	}

}

package com.cas.db.dto;

public class FundVO {

	private String fundingNum;
	private int fundingTargetAmount;
	private int fundingPresentAmount;
	private String fundingEndDate;
	private String fundingStartDate;
	private String stateCode;
	
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

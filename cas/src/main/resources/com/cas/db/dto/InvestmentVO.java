package com.cas.db.dto;

public class InvestmentVO {

	private String fundingNum;
	private int invesCount;
	private int invesAmount;
	private String invesDate;
	private String invesEndDate;
	private String invesMem;
	
	public String getFundingNum() {
		return fundingNum;
	}
	public void setFundingNum(String fundingNum) {
		this.fundingNum = fundingNum;
	}
	public int getInvesCount() {
		return invesCount;
	}
	public void setInvesCount(int invesCount) {
		this.invesCount = invesCount;
	}
	public int getInvesAmount() {
		return invesAmount;
	}
	public void setInvesAmount(int invesAmount) {
		this.invesAmount = invesAmount;
	}
	public String getInvesDate() {
		return invesDate;
	}
	public void setInvesDate(String invesDate) {
		this.invesDate = invesDate;
	}
	public String getInvesEndDate() {
		return invesEndDate;
	}
	public void setInvesEndDate(String invesEndDate) {
		this.invesEndDate = invesEndDate;
	}
	public String getInvesMem() {
		return invesMem;
	}
	public void setInvesMem(String invesMem) {
		this.invesMem = invesMem;
	}
	
}

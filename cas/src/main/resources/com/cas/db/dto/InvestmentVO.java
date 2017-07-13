package com.cas.db.dto;

public class InvestmentVO {

	private String undingNum;
	private int nvesCount;
	private int nvesAmount;
	private String nvesDate;
	private String nvesEnd_date;
	private String nvesMem;
	
	public String getUndingNum() {
		return undingNum;
	}
	public void setUndingNum(String undingNum) {
		this.undingNum = undingNum;
	}
	public int getNvesCount() {
		return nvesCount;
	}
	public void setNvesCount(int nvesCount) {
		this.nvesCount = nvesCount;
	}
	public int getNvesAmount() {
		return nvesAmount;
	}
	public void setNvesAmount(int nvesAmount) {
		this.nvesAmount = nvesAmount;
	}
	public String getNvesDate() {
		return nvesDate;
	}
	public void setNvesDate(String nvesDate) {
		this.nvesDate = nvesDate;
	}
	public String getNvesEnd_date() {
		return nvesEnd_date;
	}
	public void setNvesEnd_date(String nvesEnd_date) {
		this.nvesEnd_date = nvesEnd_date;
	}
	public String getNvesMem() {
		return nvesMem;
	}
	public void setNvesMem(String nvesMem) {
		this.nvesMem = nvesMem;
	}
}

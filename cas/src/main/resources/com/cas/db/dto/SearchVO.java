package com.cas.db.dto;

public class SearchVO {

	private String classifyCode;
	private String searchWord;
	private String searchTime;
	
	public String getClassifyCode() {
		return classifyCode;
	}
	public void setClassifyCode(String classifyCode) {
		this.classifyCode = classifyCode;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public String getSearchTime() {
		return searchTime;
	}
	public void setSearchTime(String searchTime) {
		this.searchTime = searchTime;
	}
}

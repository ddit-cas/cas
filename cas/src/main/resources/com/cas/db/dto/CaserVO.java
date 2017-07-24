package com.cas.db.dto;

public class CaserVO {
	
	private String memId;
	private String memName;
	private String memActive;
	private String memEmail;
	private String memBirthdate;
	private String memFrofileimage;
	
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemFrofileimage() {
		return memFrofileimage;
	}
	public void setMemFrofileimage(String memFrofileimage) {
		this.memFrofileimage = memFrofileimage;
	}
	
	public String getMemActive() {
		return memActive;
	}
	public void setMemActive(String memActive) {
		this.memActive = memActive;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemBirthdate() {
		return memBirthdate;
	}
	public void setMemBirthdate(String memBirthdate) {
		this.memBirthdate = memBirthdate;
	}

}

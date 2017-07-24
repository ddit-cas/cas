package com.cas.db.dto;

public class CommentVO {
	private String contentNum;
	private String contentRegisDate;
	private String contentTitle;
	private String contentContent;
	private String contentParentsContent;
	private String contentWriter;
	private String contentCount;
	
	
	public String getContentCount() {
		return contentCount;
	}
	public void setContentCount(String contentCount) {
		this.contentCount = contentCount;
	}
	public String getContentNum() {
		return contentNum;
	}
	public void setContentNum(String contentNum) {
		this.contentNum = contentNum;
	}
	public String getContentRegisDate() {
		return contentRegisDate;
	}
	public void setContentRegisDate(String contentRegisDate) {
		this.contentRegisDate = contentRegisDate;
	}
	public String getContentTitle() {
		return contentTitle;
	}
	public void setContentTitle(String contentTitle) {
		this.contentTitle = contentTitle;
	}
	public String getContentContent() {
		return contentContent;
	}
	public void setContentContent(String contentContent) {
		this.contentContent = contentContent;
	}
	public String getContentParentsContent() {
		return contentParentsContent;
	}
	public void setContentParentsContent(String contentParentsContent) {
		this.contentParentsContent = contentParentsContent;
	}
	public String getContentWriter() {
		return contentWriter;
	}
	public void setContentWriter(String contentWriter) {
		this.contentWriter = contentWriter;
	}
}

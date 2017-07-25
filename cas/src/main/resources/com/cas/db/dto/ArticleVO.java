package com.cas.db.dto;

public class ArticleVO {

	private String contentNum;				//시퀀스
	private String boardCode;				//게시판 코드
	private String contentTitle;			//글 제목
	private String contentContent;			//글 내용
	private String contentRegisDate;		//등록일
	private String contentParentsContent;	//댓글인 경우, 부모글의 시퀀스
	private String contentWriter;			//등록자 혹은 작성자
	private String contentImportance;		//중요도체크
	private String contentState;			//게시글 활성화 상태
	private String consertNum;				// 공연홍보 게시판과 연결
	private String contentImg;				//이미지 등록
	private String boardName;				//게시판 종류(자유게시판, 공연홍보, 펀딩)
	private String fundingNum;				//펀딩과 연결
	
	



	public String getFundingNum() {
		return fundingNum;
	}
	public void setFundingNum(String fundingNum) {
		this.fundingNum = fundingNum;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public String getConsertNum() {
		return consertNum;
	}
	public void setConsertNum(String consertNum) {
		this.consertNum = consertNum;
	}
	public String getContentImg() {
		return contentImg;
	}
	public void setContentImg(String contentImg) {
		this.contentImg = contentImg;
	}
	public String getContentNum() {
		return contentNum;
	}
	public void setContentNum(String contentNum) {
		this.contentNum = contentNum;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
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
	public String getContentRegisDate() {
		return contentRegisDate;
	}
	public void setContentRegisDate(String contentRegisDate) {
		this.contentRegisDate = contentRegisDate;
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
	public String getContentImportance() {
		return contentImportance;
	}
	public void setContentImportance(String contentImportance) {
		this.contentImportance = contentImportance;
	}
	public String getContentState() {
		return contentState;
	}
	public void setContentState(String contentState) {
		this.contentState = contentState;
	}

}

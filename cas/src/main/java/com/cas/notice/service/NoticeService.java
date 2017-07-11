package com.cas.notice.service;

import java.util.List;

import com.cas.db.dto.Article;

public interface NoticeService {

	/*공지사항 리스트를 가져오는 메서ㅗ다*/
	public List<Article> selectNoticeList();
	
	/*공지사항 하나를 가져오는 메서드*/
	public Article selectNotice();
	
	/*공지사항을 등록하는 메셔드*/
	public boolean insertNotice(Article article);
	
	/*공지사항을 수정하는 메서드*/
	public boolean updateNotice(Article article);
	
	/*공지사항을 삭제하는 메서드*/
	public boolean updateNotice(String articleId);
}
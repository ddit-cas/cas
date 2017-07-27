package com.cas.notice.service.impl;

import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.CaserVO;
import com.cas.notice.dao.NoticeDao;
import com.cas.notice.service.NoticeService;

public class NoticeServiceImpl implements NoticeService{
	
	private NoticeDao noticeDao;
	
	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}
	
	@Override
	public List<ArticleVO> selectNoticeList(String boardCode) {
		List<ArticleVO> noticeList=null;
		noticeList= noticeDao.selectNoticeList(boardCode);
		return noticeList;
	}

	@Override
	public ArticleVO selectNotice(String articleId,String boardCode) {
		return noticeDao.selectNotice(articleId, boardCode);
	}

	@Override
	public boolean insertNotice(ArticleVO article) {
		
		return noticeDao.insertNotice(article);
	}

	@Override
	public boolean updateNotice(ArticleVO article) {
		return noticeDao.updateNotice(article);
	}

	

	@Override
	public List<ArticleVO> noticeSearch(String boardCode,String index, String key) {
		List<ArticleVO> resultList;
		resultList = noticeDao.noticeSearch(boardCode, index, key);
		return resultList;
	}

	@Override
	public boolean deleteNotice(ArticleVO article) {
		
		return noticeDao.deleteNotice(article);
	}

}

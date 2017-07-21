package com.cas.notice.service.impl;

import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.notice.dao.NoticeDao;
import com.cas.notice.service.NoticeService;

public class NoticeServiceImpl implements NoticeService{
	
	@Override
	public List<ArticleVO> selectNoticeList() {
		return null;
	}

	@Override
	public ArticleVO selectNotice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertNotice(ArticleVO article) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateNotice(ArticleVO article) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateNotice(String articleId) {
		// TODO Auto-generated method stub
		return false;
	}

}

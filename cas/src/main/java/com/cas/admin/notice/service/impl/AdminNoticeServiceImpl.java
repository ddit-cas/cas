package com.cas.admin.notice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.cas.admin.db.dto.Article;
import com.cas.admin.notice.dao.AdminNoticeDao;
import com.cas.admin.notice.service.AdminNoticeService;

public class AdminNoticeServiceImpl implements AdminNoticeService{

	private AdminNoticeDao adminNoticeDao;
	
	public void setAdminNoticeDao(AdminNoticeDao adminNoticeDao){
		this.adminNoticeDao=adminNoticeDao;
	}
	
	@Override
	public List<Article> selectNoticeList() {
		adminNoticeDao.selectNoticeList();
		return null;
	}

	@Override
	public Article selectNotice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertNotice(Article article) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateNotice(Article article) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateNotice(String articleId) {
		// TODO Auto-generated method stub
		return false;
	}

}

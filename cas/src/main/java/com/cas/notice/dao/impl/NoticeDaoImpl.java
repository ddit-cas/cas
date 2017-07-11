package com.cas.notice.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.Article;
import com.cas.notice.dao.NoticeDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class NoticeDaoImpl implements NoticeDao{

	private SqlMapClient client;	
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	@Override
	public List<Article> selectNoticeList() {
		try {
			client.queryForList("asdfasdf");
		} catch (SQLException e) {
			e.printStackTrace();
		}
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

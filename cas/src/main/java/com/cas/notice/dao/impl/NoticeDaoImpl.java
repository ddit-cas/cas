package com.cas.notice.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.notice.dao.NoticeDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class NoticeDaoImpl implements NoticeDao{

	private SqlMapClient client;	
	
	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	@Override
	public List<ArticleVO> selectNoticeList(String boardCode) {
		List<ArticleVO> resultList = null;
		try {
			resultList = client.queryForList("B001");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	@Override
	public ArticleVO selectNotice(String articleId,String boardCode) {
		ArticleVO noticevo=new ArticleVO();
		noticevo.setBoardCode(boardCode);
		noticevo.setContentNum(articleId);
		
		ArticleVO result = null;
		try {
			result=(ArticleVO) client.queryForObject("selectNotice",noticevo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
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

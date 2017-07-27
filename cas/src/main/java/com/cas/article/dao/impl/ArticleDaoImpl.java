package com.cas.article.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.article.dao.ArticleDao;
import com.cas.db.dto.ArticleVO;
import com.ibatis.sqlmap.client.SqlMapClient;

public class ArticleDaoImpl implements ArticleDao{

	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient){
		this.sqlMapClient=sqlMapClient;
	}
	
	@Override
	public List<ArticleVO> selectArticleList(String boardCode) {
		List<ArticleVO> resultList = null;
		ArticleVO article = new ArticleVO();
		article.setBoardCode(boardCode);
		try {
			resultList=sqlMapClient.queryForList("selectArticleList",article);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return resultList;
	}
	@Override
	public List<ArticleVO> selectArticleList(String memId, String boardCode) {
		List<ArticleVO> resultList = null;
		ArticleVO article = new ArticleVO();
		article.setBoardCode(boardCode);
		article.setContentWriter(memId);
		try {
			resultList=sqlMapClient.queryForList("selectMemberArticle",article);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return resultList;
	}

	@Override
	public ArticleVO selectArticle(String articleId,String boardCode) {
		ArticleVO vo = new ArticleVO();
		vo.setBoardCode(boardCode);
		vo.setContentNum(articleId);
		ArticleVO result = null;
		try {
			result = (ArticleVO) sqlMapClient.queryForObject("selectArticle",vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<ArticleVO> selectArticleReplyList(String articleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateFreeboard(ArticleVO article) {
		boolean result = false;
		try {
			int res = sqlMapClient.update("updateArticle",article);
			if(res>0){
				result=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean insertArticle(ArticleVO article) {
		boolean result = false;
		try {
			int res = sqlMapClient.update("insertArticle",article);
			if(res>0){
				result=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<ArticleVO> selectTopUccList() {
		List<ArticleVO> topUccList = null;
		try {
			topUccList = sqlMapClient.queryForList("selectTopUccList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return topUccList;
	}

}

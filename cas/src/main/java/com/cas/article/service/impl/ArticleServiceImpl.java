package com.cas.article.service.impl;

import java.util.List;

import com.cas.article.dao.ArticleDao;
import com.cas.article.dao.impl.ArticleDaoImpl;
import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;

public class ArticleServiceImpl implements ArticleService{

	private ArticleDao articleDao;
	
	public void setArticleDao(ArticleDao articleDao){
		this.articleDao=articleDao;
	}
	
	@Override
	public List<ArticleVO> selectArticleList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArticleVO selectArticle(String articleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ArticleVO> selectArticleReplyList(String articleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateFreeboard(ArticleVO article) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insertArticle(ArticleVO article) {
		return articleDao.insertArticle(article);
	}

}

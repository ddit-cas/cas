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
	public List<ArticleVO> selectArticleList(String boardCode) {
		List<ArticleVO> resultList = null;
		resultList = articleDao.selectArticleList(boardCode);
		return resultList;
	}
	
	@Override
	public List<ArticleVO> selectArticleList(String memId, String boardCode) {
		List<ArticleVO> resultList = null;
		resultList = articleDao.selectArticleList(memId, boardCode);
		return resultList;
	}

	@Override
	public ArticleVO selectArticle(String articleId,String boardCode) {
		return articleDao.selectArticle(articleId, boardCode);
	}

	@Override
	public List<ArticleVO> selectArticleReplyList(String articleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateFreeboard(ArticleVO article) {
		return articleDao.updateFreeboard(article);
	}

	@Override
	public boolean insertArticle(ArticleVO article) {
		return articleDao.insertArticle(article);
	}

	@Override
	public List<ArticleVO> selectTopUccList() {
		return articleDao.selectTopUccList();
	}
	
	@Override
	public List<ArticleVO> selectFreeSearch(String index, String key) {
	List<ArticleVO> resultList;
	resultList = articleDao.selectFreeSearch(index, key);
	return resultList;
	}

}

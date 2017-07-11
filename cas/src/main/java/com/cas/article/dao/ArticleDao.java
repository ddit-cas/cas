package com.cas.article.dao;

import java.util.List;

import com.cas.db.dto.Article;

public interface ArticleDao {

	/*자유게시판 글 목록을 가져오는 메서드*/
	public List<Article> selectArticleList();
	
	/*자유게시판 게시물 한개를 가져오는 메서드*/
	public Article selectArticle(String articleId);
	
	/*자유게시글을 활성화 상태면 비활성화 시키고 비활성화 상태면 활성화 시켜주는 메서드*/
	public boolean updateFreeboard(Article article);
	
	/*게시물의 댓글들을 가져오는 메서드*/
	public List<Article> selectArticleReplyList(String articleId);
}

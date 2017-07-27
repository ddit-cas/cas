package com.cas.article.service;

import java.util.List;

import com.cas.db.dto.ArticleVO;

public interface ArticleService {

	/*자유게시판 글 목록을 가져오는 메서드*/
	public List<ArticleVO> selectArticleList(String boardCode);
	/*자유게시판 글 목록을 가져오는 메서드*/
	public List<ArticleVO> selectArticleList(String memId, String boardCode);
	
	/*게시물을 등록하는 메서드*/
	public boolean insertArticle(ArticleVO article);
	
	/*자유게시판 게시물 한개를 가져오는 메서드*/
	public ArticleVO selectArticle(String articleId,String boardCode);
	
	/*자유게시판에 검색하여 리스트를 추출 하는 메서드*/
	public List<ArticleVO> selectFreeSearch(String boardCode, String index,String key);
	
	/*자유게시글을 활성화 상태면 비활성화 시키고 비활성화 상태면 활성화 시켜주는 메서드
	 * 혹은 글장석자가 수정할시 작동하는 메서드*/
	public boolean updateFreeboard(ArticleVO article);
	
	/*게시물의 댓글들을 가져오는 메서드*/
	public List<ArticleVO> selectArticleReplyList(String articleId);
	
	public List<ArticleVO> selectTopUccList();
}

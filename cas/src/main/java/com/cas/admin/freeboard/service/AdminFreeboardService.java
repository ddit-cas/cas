package com.cas.admin.freeboard.service;

import java.util.List;

import com.cas.admin.db.dto.Article;

public interface AdminFreeboardService {

	/*자유게시판 글 목록을 가져오는 메서드*/
	public List<Article> selectFreeboardList();
	
	/*자유게시판 게시물 한개를 가져오는 메서드*/
	public Article selectFreeboard(String articleId);
	
	/*자유게시글을 활성화 상태면 비활성화 시키고 비활성화 상태면 활성화 시켜주는 메서드*/
	public boolean updateFreeboard(Article article);
}

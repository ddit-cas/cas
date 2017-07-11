package com.cas.admin.main.dao;

import java.util.List;

import com.cas.db.dto.Article;
import com.cas.db.dto.Fund;
import com.cas.db.dto.Member;

public interface AdminMainDao {

	/*
	 * 메인화면에 뿌려줄 회원리스트를 가져올 메서드
	 * 최근 몇개까지 가져올지 파라미터로 받음
	 */
	public List<Member> selectMemberList(int count);
	
	/*
	 * 메인화면에 뿌려줄 펀딩리스트를 가져올 메서드
	 * 최근 몇개까지 가져올지 파라미터로 받음
	 */
	public List<Fund> selectFundList(int count);
	
	/*
	 * 메인화면에 뿌려줄 게시글리스트를 가져올 메서드
	 * 최근 몇개까지 가져올지 파라미터로 받음
	 */
	public List<Article> selectArticleList(int count);
}

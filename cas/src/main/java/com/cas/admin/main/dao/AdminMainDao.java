package com.cas.admin.main.dao;

import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.FundVO;
import com.cas.db.dto.MemberVO;

public interface AdminMainDao {

	/*
	 * 메인화면에 뿌려줄 회원리스트를 가져올 메서드
	 * 최근 몇개까지 가져올지 파라미터로 받음
	 */
	public List<MemberVO> selectMemberList(int count);
	
	/*
	 * 메인화면에 뿌려줄 펀딩리스트를 가져올 메서드
	 * 최근 몇개까지 가져올지 파라미터로 받음
	 */
	public List<FundVO> selectFundList(int count);
	
	/*
	 * 메인화면에 뿌려줄 게시글리스트를 가져올 메서드
	 * 최근 몇개까지 가져올지 파라미터로 받음
	 */
	public List<ArticleVO> selectArticleList(int count);
}

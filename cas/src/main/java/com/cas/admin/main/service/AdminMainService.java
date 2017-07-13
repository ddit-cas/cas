package com.cas.admin.main.service;

import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.FundVO;
import com.cas.db.dto.MemberVO;

public interface AdminMainService {

	/*메인화면에 뿌려줄 회원리스트를 가져올 메서드*/
	public List<MemberVO> selectMemberList();
	
	/*메인화면에 뿌려줄 펀딩리스트를 가져올 메서드*/
	public List<FundVO> selectFundList();
	
	/*메인화면에 뿌려줄 게시글리스트를 가져올 메서드*/
	public List<ArticleVO> selectArticleList();
}

package com.cas.admin.main.service;

import java.util.List;

import com.cas.admin.db.dto.Article;
import com.cas.admin.db.dto.Fund;
import com.cas.admin.db.dto.Member;

public interface AdminMainService {

	/*메인화면에 뿌려줄 회원리스트를 가져올 메서드*/
	public List<Member> selectMemberList();
	
	/*메인화면에 뿌려줄 펀딩리스트를 가져올 메서드*/
	public List<Fund> selectFundList();
	
	/*메인화면에 뿌려줄 게시글리스트를 가져올 메서드*/
	public List<Article> selectArticleList();
}

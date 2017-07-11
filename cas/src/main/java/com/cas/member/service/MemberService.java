package com.cas.member.service;

import java.util.List;

import com.cas.db.dto.Member;

public interface MemberService {

	/*회원 리스트를 가져오는 메서드*/
	public List<Member> memberList();
	
	/*회원을 수정하는 메서드*/
	public boolean updateMember(Member member);
	
	/*회원 아이디 검증 메서드*/
	public boolean checkId(String id);
	
	/*회원 비밀빈호 검증 메서드*/
	public boolean checkPwd(String pwd);
	
	/*회원 아이디를 찾아온ㄴ 메서드*/
	public String selectId(String name,String email);
}
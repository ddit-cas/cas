package com.cas.member.dao;

import java.util.List;

import com.cas.db.dto.Member;

public interface MemberDao {

	/*회원 리스트를 가져오는 메서드*/
	public List<Member> memberList();
	
	/*회원을 수정하는 메서드*/
	public boolean updateMember(Member member);
	
	/*회원 아이디를 가져오는 메서드*/
	public String selectMemberId(String id);
	
	/*회원 비번을 가져오는 메서드*/
	public String selectMemberPwd(String pwd);
	
	/*회원 아이디를 찾아오는 ㅔㅁ서드*/
	public String selectId(String name,String email);
}

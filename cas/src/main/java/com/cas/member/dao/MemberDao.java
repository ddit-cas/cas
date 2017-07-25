package com.cas.member.dao;

import java.util.List;

import com.cas.db.dto.MemberVO;
import com.cas.db.dto.TeamVO;

public interface MemberDao {

	/*회원 가입 정보를 DB에 삽입하는 메서드*/
	public int insertMember(MemberVO member);
	
	/*회원 리스트를 가져오는 메서드*/
	public List<MemberVO> memberList();
	
	/*닉네임 중복 확인하는 메서드*/
	public String memberCheckNick(String nick);
	
	/*회원을 수정하는 메서드*/
	public boolean updateMember(MemberVO member);
	
	/*회원 아이디를 가져오는 메서드*/
	public String selectMemberId(String id);
	
	/*회원 비번을 가져오는 메서드*/
	public String selectMemberPwd(String id);
	
	/*회원 아이디를 찾아오는 메서드*/
	public String selectId(String name,String email);

	/*회원하나를 가져오는 메서드*/
	public MemberVO selectMember(String memId);

	/*공연홍보글이나 크라우드 펀딩 클릭시 클릭정보를 입력하는 메서드*/
	public void insertClickData(String contentNum, String classify);

	/*팀원 정보를 인서트하는 메서드*/
	public void insertTeamList(List<TeamVO> teamList);
}

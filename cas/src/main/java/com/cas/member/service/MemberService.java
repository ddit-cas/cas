package com.cas.member.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cas.db.dto.MemberVO;
import com.cas.db.dto.TeamVO;

public interface MemberService {
	
	/*월별 회원수 정보를 가져오는 메서드*/
	public List<MemberVO> selectMemberCount();
	
	/*회원 가입 정보를 DB에 삽입하는 메서드*/
	public int insertMember(MemberVO member);
	
	/*회원 리스트를 가져오는 메서드*/
	public List<MemberVO> memberList();
	
	/*아이디와 닉네임 중복 확인하는 메서드*/
	public List<MemberVO> memberCheckIdList();
	
	/*회원을 수정하는 메서드*/
	public boolean updateMember(MemberVO member);
	
	/*회원 아이디 검증 메서드*/
	public boolean checkId(String id);
	
	/*회원 비밀빈호 검증 메서드*/
	public boolean checkPwd(String id,String pwd);
	
	/*회원 아이디를 찾아온ㄴ 메서드*/
	public String selectId(String name,String email);
	
//	회원객체를 가져오느ㅜㄴ 메서드
	public MemberVO selectMember(String memId);

	/*공연홍보글이나 크라우드 펀딩 클릭시 클릭정보를 입력하는 메서드*/
	public void insertClickData(String contentNum, String classify);

	/*팀원들을 인서트하는 메서드*/
	public void insertTeamList(List<TeamVO> teamList);
	
	/*회원 검색*/
	public List<MemberVO> selectSeachMember(String index, String key);
	
	/*회원 삭제 및 탈퇴*/
	public int deleteMember(String memId);
}

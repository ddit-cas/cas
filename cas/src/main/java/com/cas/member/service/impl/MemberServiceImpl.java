package com.cas.member.service.impl;

import java.util.List;

import com.cas.db.dto.MemberVO;
import com.cas.member.dao.MemberDao;
import com.cas.member.service.MemberService;

public class MemberServiceImpl implements MemberService{

	private MemberDao memberDao;
	
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public int insertMember(MemberVO member) {
		int result = memberDao.insertMember(member);
		return result;
	}
	
	@Override
	public List<MemberVO> memberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberVO> memberCheckIdList() {
		return memberDao.memberList();
	}
	
	@Override
	public boolean updateMember(MemberVO member) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkId(String id) {
		boolean result =false;
		if(id.equals(memberDao.selectMemberId(id))){
			System.out.println("서비스임플 아이디 체크 들어오니?");
			result = true;
		}
		return result;
	}

	@Override
	public boolean checkPwd(String id,String pwd) {
		boolean result =false;
		if(pwd.equals(memberDao.selectMemberPwd(id))){
			System.out.println("왜페일임?");
			result = true;
		}
		return result;
	}

	@Override
	public String selectId(String name, String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO selectMember(String memId) {
		return memberDao.selectMember(memId);
	}

	@Override
	public void insertClickData(String contentNum, String classify) {
		memberDao.insertClickData(contentNum,classify);
	}

}

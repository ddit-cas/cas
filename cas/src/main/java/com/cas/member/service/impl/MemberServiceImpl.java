package com.cas.member.service.impl;

import java.util.List;

import com.cas.db.dto.MemberVO;
import com.cas.member.dao.MemberDao;
import com.cas.member.service.MemberService;

public class MemberServiceImpl implements MemberService{

	private MemberDao memberDao;
	
	public void setMemberDao(MemberDao memberDao){
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
		return memberDao.memberCheckIdList();
	}
	
	@Override
	public boolean updateMember(MemberVO member) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkId(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkPwd(String pwd) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String selectId(String name, String email) {
		// TODO Auto-generated method stub
		return null;
	}

	

}

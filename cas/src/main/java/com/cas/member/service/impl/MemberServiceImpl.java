package com.cas.member.service.impl;

import java.util.List;

import com.cas.db.dto.MemberVO;
import com.cas.member.dao.MemberDao;
import com.cas.member.dao.impl.MemberDaoImpl;
import com.cas.member.service.MemberService;

public class MemberServiceImpl implements MemberService{

	private MemberDao memDao;
	
	public void setMemberDao(MemberDao memDao){
		this.memDao = memDao;
	}
	
	@Override
	public int insertMember(MemberVO member) {
		int result = memDao.insertMember(member);
		return result;
	}
	
	@Override
	public List<MemberVO> memberList() {
		// TODO Auto-generated method stub
		return null;
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

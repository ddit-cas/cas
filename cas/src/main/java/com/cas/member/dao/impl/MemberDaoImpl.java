package com.cas.member.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.MemberVO;
import com.cas.member.dao.MemberDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class MemberDaoImpl implements MemberDao {

	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient) {
		this.sqlMapClient = sqlMapClient;
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
	public String selectMemberId(String id) {
		String memId = null;
		try {
			memId = (String) sqlMapClient.queryForObject("selectMemberId",id);
			System.out.println("다으옴플에서 아이디 뭐라 뜨냐?"+memId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memId;
	}

	@Override
	public String selectMemberPwd(String id) {
		String memPwd = null;
		try {
			memPwd = (String) sqlMapClient.queryForObject("selectMemberPwd",id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memPwd;
	}

	@Override
	public String selectId(String name, String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO selectMember(String memId) {
		MemberVO member = null;
		try {
			member = (MemberVO) sqlMapClient.queryForObject("selectMember",memId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
	}

}

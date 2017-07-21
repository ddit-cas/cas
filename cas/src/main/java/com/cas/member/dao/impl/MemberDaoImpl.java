package com.cas.member.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.MemberVO;
import com.cas.member.dao.MemberDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class MemberDaoImpl implements MemberDao {

	private SqlMapClient sqlMapClient;
	public void setSqlMapClient(SqlMapClient sqlMapClient){
		this.sqlMapClient = sqlMapClient;
	}
	
	@Override
	public int insertMember(MemberVO member) {
		int result = -1;
		try {
			result = sqlMapClient.update("insertMember", member);
		} catch (SQLException e) {
			e.printStackTrace();
		}
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
	public String selectMemberId(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String selectMemberPwd(String pwd) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String selectId(String name, String email) {
		// TODO Auto-generated method stub
		return null;
	}

}

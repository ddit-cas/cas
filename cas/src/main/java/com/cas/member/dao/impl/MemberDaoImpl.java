package com.cas.member.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cas.db.dto.MemberVO;
import com.cas.db.dto.ReadInfoVO;
import com.cas.member.dao.MemberDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class MemberDaoImpl implements MemberDao {

	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient) {
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
		return null;
	}
	
	@Override
	public String memberCheckNick(String nick) {
		String result=null;
		try {
			result = (String)sqlMapClient.queryForObject("selectMemberNick");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public boolean updateMember(MemberVO member) {
		try {
			int result=sqlMapClient.update("updateMember",member);
			System.out.println(result);
			System.out.println(member.getMemName());
			System.out.println(member.getMemId());
			System.out.println("여기다오임플인데안오나요?");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return true;
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

	@Override
	public void insertClickData(String contentNum, String classify) {
		ReadInfoVO readinfo = new ReadInfoVO();
		readinfo.setClassify(classify);
		readinfo.setContentNum(contentNum);
		try {
			sqlMapClient.update("insertClickInfo",readinfo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

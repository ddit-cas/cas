package com.cas.member.dao.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cas.db.dto.MemberVO;
import com.cas.db.dto.ReadInfoVO;
import com.cas.db.dto.TeamVO;
import com.cas.member.dao.MemberDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class MemberDaoImpl implements MemberDao {

	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient) {
		this.sqlMapClient = sqlMapClient;
	}

	@Override
	public List<MemberVO> selectMemberCount(){
		List<MemberVO> resultList = null;
		try {
			resultList = (List<MemberVO>) sqlMapClient.queryForList("selectMonthlySignupCount");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
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
		List<MemberVO> resultList = null;
		try {
			resultList = sqlMapClient.queryForList("selectMemberList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
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
		boolean result = false;
		int confirm =-1;
		try {
			confirm=sqlMapClient.update("updateMember",member);
			
			if(confirm<0){
				result=false;
			}else{
				result=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public String selectMemberId(String id) {
		String memId = null;
		try {
			memId = (String) sqlMapClient.queryForObject("selectMemberId",id);
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

	@Override
	public void insertTeamList(List<TeamVO> teamList) {
		try {
			for (int i = 0; i < teamList.size(); i++) {
				sqlMapClient.update("insertTeam",teamList.get(i));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<MemberVO> selectSeachMember(String index, String key) {
		List<MemberVO> resultList = null;
		Map<String, String> map = new HashMap<String, String>();
		map.put("index", index);
		map.put("key", key);
		try {
			resultList = sqlMapClient.queryForList("selectSearchMemberAnalysis",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	@Override
	public int deleteMember(String memId) {
		int result = -1;
		try {
			result = sqlMapClient.update("deleteMember", memId);
			if(result<0){
				System.out.println("회원삭제 실패");
			}else{
				System.out.println("회원삭제 성공");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

}

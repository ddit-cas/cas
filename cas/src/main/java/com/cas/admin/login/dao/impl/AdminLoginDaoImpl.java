package com.cas.admin.login.dao.impl;

import com.cas.admin.login.dao.AdminLoginDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class AdminLoginDaoImpl implements AdminLoginDao{
	
	private SqlMapClient sqlMapClient;
	public void setSqlMapClient(SqlMapClient sqlMapClient) {
		this.sqlMapClient = sqlMapClient;
	}

	@Override
	public String SelectAdminId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String SelectAdminPwd() {
		// TODO Auto-generated method stub
		return null;
	}

}

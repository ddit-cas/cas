package com.cas.admin.login.dao;

public interface AdminLoginDao {

	/*관리자 아이디를 빼오는 부분*/
	public String SelectAdminId();
	
	/*관리자 비번을 빼오는 부분*/
	public String SelectAdminPwd();
}

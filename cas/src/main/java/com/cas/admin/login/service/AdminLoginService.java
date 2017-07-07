package com.cas.admin.login.service;

public interface AdminLoginService {

	/*
	 * 관리자 아이디가 맞는지 검증하는 메서드 
	 */
	public boolean checkAdminId(String id);
	
	/*
	 * 관리자 비번이 맞는지 검증하는 메서드 
	 */
	public boolean checkAdminPwd(String pwd);
}

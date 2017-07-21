package com.cas.member.data.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.cas.db.dto.MemberVO;


public class MemberDataController extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		boolean result = false;
		
		if (excludesUrl(request)&&session.getAttribute("loginUser")!=null) {
			
		}
		
		return result;
	}

	private boolean excludesUrl(HttpServletRequest request) {
		String uri = request.getRequestURI().toString().trim();
		if(uri.contains("Detail")){
			return true;
		}else{
			return false;
		}
	}
	
}

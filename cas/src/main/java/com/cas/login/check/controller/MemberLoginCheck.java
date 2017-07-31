package com.cas.login.check.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.cas.member.service.MemberService;

@Controller
public class MemberLoginCheck extends HandlerInterceptorAdapter{

		@Override
		public boolean preHandle(HttpServletRequest request,
				HttpServletResponse response, Object handler) throws Exception {
			if (null==request.getSession().getAttribute("loginUser")) {
				PrintWriter out = response.getWriter();

				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");

	            out.println("<script>sweetAlert('로그인 필수!', '로그인 후에 이용하실 수 있습니다.', 'error');"
	            		+ " $('.confirm').on('click',function(){"
	            		+ "location.href='/cas/loginForm'}) </script>"); 

	            out.flush(); 
				
//				response.sendRedirect("/cas/loginForm");
			
				return false;
			}else{
				return true;
			}
		}	
	}
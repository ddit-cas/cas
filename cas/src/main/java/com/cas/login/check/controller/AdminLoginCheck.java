package com.cas.login.check.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.cas.db.dto.MemberVO;
import com.cas.member.service.MemberService;

@Controller
public class AdminLoginCheck extends HandlerInterceptorAdapter{

		@Override
		public boolean preHandle(HttpServletRequest request,
				HttpServletResponse response, Object handler) throws Exception {
			System.out.println("여기왜안오니?");
			if (null==request.getSession().getAttribute("loginUser")||!((MemberVO)request.getSession().getAttribute("loginUser")).getRankCode().equals("R001")) {
				PrintWriter out = response.getWriter();

				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");

	            out.println("<script>alert('접근권한이 없읍니다.'); location.href='/cas/main' </script>"); 

	            out.flush(); 
				
//				response.sendRedirect("/cas/loginForm");
			
				return false;
			}else{
				return true;
			}
		}	
	}
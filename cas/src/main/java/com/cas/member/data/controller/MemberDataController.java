package com.cas.member.data.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.cas.db.dto.MemberVO;
import com.cas.member.service.MemberService;

@Controller
public class MemberDataController extends HandlerInterceptorAdapter{

	@Autowired
	private MemberService memberService;
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		
		boolean result = false;
		
		if (containsUrl(request)&&member!=null) {
			String contentNum = request.getParameter("articleId");
			String classify = member.getClassifyCode(); 
			memberService.insertClickData(contentNum,classify);
			
			result=true;
		}
		return result;
	}

	private boolean containsUrl(HttpServletRequest request) {
		String uri = request.getRequestURI().toString().trim();
		if(uri.contains("fundDetail")||uri.contains("promotionDetail")){
			return true;
		}else{
			return false;
		}
	}
	
}

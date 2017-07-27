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
		HttpSession session = request.getSession(false);
		
		System.out.println(request.getRequestURI().toString().trim());
		
		if (containsUrl(request)&&session.getAttribute("loginUser")!=null) {
			MemberVO member = (MemberVO) session.getAttribute("loginUser");
			String contentNum = request.getParameter("contentNum");
			String classify = member.getClassifyCode(); 
			System.out.println("게시글 넘버"+contentNum+"코드"+classify);
			memberService.insertClickData(contentNum,classify);
			
		}
		return true;
	}	

	private boolean containsUrl(HttpServletRequest request) {
		String uri = request.getRequestURI().toString().trim();
		if(uri.contains("fundDetail")||uri.contains("promotionDetail")){
			if(request.getParameter("contentNum")!=null){
				return true;
			}else{
				return false;
			}
		}else{
			return false;
		}
	}
	
}

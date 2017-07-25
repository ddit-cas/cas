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
		
		System.out.println(request.getRequestURI().toString().trim());
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		
		if (containsUrl(request)&&member!=null) {
			String contentNum = request.getParameter("articleId");
			String classify = member.getClassifyCode(); 
			System.out.println("게시글 넘버"+contentNum+"코드"+classify);
			memberService.insertClickData(contentNum,classify);
			
		}
		return true;
	}	

	private boolean containsUrl(HttpServletRequest request) {
		String uri = request.getRequestURI().toString().trim();
		if(uri.contains("fundDetail")||uri.contains("promotionDetail")){
			if(request.getParameter("articleId")!=null){
				return true;
			}else{
				return false;
			}
		}else{
			return false;
		}
	}
	
}

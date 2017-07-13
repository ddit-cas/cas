package com.cas.common.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	/*메인화면으로 가는 메서드*/
	@RequestMapping("/main")
	public String mainGo(){
		return "member/main";
	}
	
	/*검색해주는 메서드*/
	@RequestMapping("/search")
	public String searchGo(HttpServletRequest request){
		return null;
	}
}

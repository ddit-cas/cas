package com.cas.common.ucc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UccController {

	/*유씨씨영상 리스트를 보여주는 메서드*/
	@RequestMapping("/uccList")
	public String uccList(Model model){
		return null;
	}
	
	/*유씨시 영상을검색하는 메서드*/
	@RequestMapping("/uccSearch")
	public String uccSearch(HttpServletRequest request,Model model){
		return null;
	}
	
	/*유씨씨 영상의 상세내용을 보는 메서드*/
	@RequestMapping("/uccDetail")
	public String uccDetail(HttpServletRequest request,Model model){
		return null;
	}
}

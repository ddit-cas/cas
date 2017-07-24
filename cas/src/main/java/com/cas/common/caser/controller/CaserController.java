package com.cas.common.caser.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.caser.service.CaserService;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.CaserVO;

@Controller
public class CaserController {
	
	@Autowired
	private CaserService caserService;
	
	public void setCaserService(CaserService caserService) {
		this.caserService = caserService;
	}

	/*카서 메인 페이지로 가는 메서드*/
	@RequestMapping("/caser")
	public String caserMainController(Model model){
		return null;
	}
	
	/*카서에서 검색을 하면 오는 메서드*/
	@RequestMapping("/caserSearch")
	public String caserSearch(HttpServletRequest request, Model model){
		
		String url = "member/caser/memberSearch";
		return url;
	}
	
	/*카서의 상세 페이지로 가는 메서드*/
	@RequestMapping("/caserDetail")
	public String caserDetail(HttpServletRequest request, Model model){
		
		String url="member/caser/profileDetail";
		
		return url;
	}
	
	/*카서들의 프로필을 볼 수 있는 페이지*/
	@RequestMapping("/profileView")
	public String profileView(Model model){
		List<CaserVO> caserList = caserService.selectCaserList();
		model.addAttribute("caserList", caserList);
		
		String url = "member/caser/profileView";
		return url;
	}
}

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
import com.cas.db.dto.CaserDetailVO;
import com.cas.db.dto.CaserVO;
import com.cas.db.dto.MemberVO;
import com.cas.db.dto.Paging;

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
		String index=request.getParameter("select_chk_1");
		String key=request.getParameter("select_chk_2");
		List<CaserVO> caserList = caserService.selectCaserSearchList(index,key);
//		System.out.println("검색조건 : "+key);
//		//현재페이지
//		String page = request.getParameter("tab");
//		//받은 데이터리스트의 데이터갯수
//		int dataRow = caserList.size();
//		Paging paging = new Paging(dataRow, page);
//		System.out.println(paging.toString());
//		model.addAttribute("index", paging.getIndex());//현재페이지
//		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
//		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
//		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
//		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		model.addAttribute("caserList", caserList);
		
		
		
		String url = "member/caser/profileView";
		return url;
	}
	
	/*카서의 상세 페이지로 가는 메서드*/
	@RequestMapping("/caserDetail")
	public String caserDetail(HttpServletRequest request, Model model){
		String memId = request.getParameter("memId");
		System.out.println(memId);
		List<CaserDetailVO> caserList = caserService.selectCaserDetail(memId);			
		model.addAttribute("caserList",caserList);
		System.out.println("사이즈"+caserList.size());
		
		String url="member/caser/profileDetail";
		
		return url;
	}
	
	/*카서들의 프로필을 볼 수 있는 페이지*/
	@RequestMapping("/profileView")
	public String profileView(HttpServletRequest request,Model model){
		List<CaserVO> caserList = caserService.selectCaserList();
		//현재페이지
				String page = request.getParameter("tab");
				//받은 데이터리스트의 데이터갯수
				int dataRow = caserList.size();
				
				Paging paging = new Paging(dataRow, page);
				System.out.println(paging.toString());
				model.addAttribute("index", paging.getIndex());//현재페이지
				model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
				model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
				model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
				model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
				model.addAttribute("caserList", caserList);
		
		String url = "member/caser/profileView";
		return url;
	}
}

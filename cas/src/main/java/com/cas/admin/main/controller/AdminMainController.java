package com.cas.admin.main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.IngFundVO;
import com.cas.db.dto.MemberVO;
import com.cas.db.dto.Paging;
import com.cas.fund.service.AdminFundAnalysisService;
import com.cas.member.service.MemberService;

@Controller
public class AdminMainController {

	@Autowired
	public MemberService memberService;
	
	@Autowired
	public AdminFundAnalysisService adminFundAnalysisService;
	
	@Autowired
	private ArticleService articleService;
	/*
	 * 어드민 매인화면을 호출하는 메서드
	 */
	@RequestMapping("/admin/main")
	public String adminMain(Model model, HttpServletRequest request){
		String url = "admin/main/admin_main";
		
	//회원 검색
		String memIndex = request.getParameter("memIndex");
		String memKey = request.getParameter("memKey");
		System.out.println("index : "+memIndex);
		List<MemberVO> memList = memberService.selectSeachMember(memIndex, memKey); 
		model.addAttribute("memList", memList);
		model.addAttribute("memSelector", "memIndex="+memIndex+"&memKey="+memKey+"&memTab");
		//페이징 처리	
		//현재페이지
		String memPage = request.getParameter("memTab");
		if(memPage == null){
			memPage = "1";
		}
		//받은 데이터리스트의 데이터갯수
		int memDataRow = memList.size();
		Paging memPaging = new Paging(memDataRow, memPage);
		System.out.println(memPaging.toString());
		model.addAttribute("memIndex", memPaging.getIndex());//현재페이지
		model.addAttribute("memFirstRow", memPaging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("memLastRow", memPaging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("memMinNum", memPaging.getMinNum());//최소 페이징넘버
		model.addAttribute("memMaxNum", memPaging.getMaxNum());//최대 페이징넘버
		
	//펀딩게시판
		String fundIndex = request.getParameter("fundIndex");
		String fundKey = request.getParameter("fundKey");
		List<IngFundVO>fundList = adminFundAnalysisService.selectSearchFundList(fundKey, fundIndex);
		model.addAttribute("fundList",fundList);	
		model.addAttribute("fundSelector", "fundIndex="+fundIndex+"&fundKey="+fundKey+"&fundTab");
		//페이징 처리	
		//현재페이지
		String fundPage = request.getParameter("FundTab");
		if(fundPage == null){
			fundPage = "1";
		}
		//받은 데이터리스트의 데이터갯수
		int fundDataRow = fundList.size();
		Paging fundPaging = new Paging(fundDataRow, fundPage);
		System.out.println(fundPaging.toString());
		model.addAttribute("fundIndex", fundPaging.getIndex());//현재페이지
		model.addAttribute("fundFirstRow", fundPaging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("fundLastRow", fundPaging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("fundMinNum", fundPaging.getMinNum());//최소 페이징넘버
		model.addAttribute("fundMaxNum", fundPaging.getMaxNum());//최대 페이징넘버
		
	//자유게시판
		List<ArticleVO> freeList = articleService.selectArticleList("B005");
		model.addAttribute("freeList",freeList);	
		model.addAttribute("freeSelector","freeTab");
		//페이징 처리	
		//현재페이지
		String freePage = request.getParameter("freeTab");
		if(freePage == null){
			freePage = "1";
		}
		//받은 데이터리스트의 데이터갯수
		int freeDataRow = freeList.size();
		Paging freePaging = new Paging(freeDataRow, freePage, 5);
		System.out.println(freePaging.toString());
		model.addAttribute("freeIndex", fundPaging.getIndex());//현재페이지
		model.addAttribute("freeFirstRow", fundPaging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("freeLastRow", fundPaging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("freeMinNum", fundPaging.getMinNum());//최소 페이징넘버
		model.addAttribute("freeMaxNum", fundPaging.getMaxNum());//최대 페이징넘버
		
	//홍보게시판
		List<ArticleVO> proList = articleService.selectArticleList("B007");
		model.addAttribute("proList",proList);	
		model.addAttribute("proSelector", "&proTab");
		//페이징 처리	
		//현재페이지
		String proPage = request.getParameter("proTab");
		if(proPage == null){
			proPage = "1";
		}
		//받은 데이터리스트의 데이터갯수
		int proDataRow = proList.size();
		Paging proPaging = new Paging(proDataRow, proPage, 5);
		System.out.println(proPaging.toString());
		model.addAttribute("proIndex", proPaging.getIndex());//현재페이지
		model.addAttribute("proFirstRow", proPaging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("proLastRow", proPaging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("proMinNum", proPaging.getMinNum());//최소 페이징넘버
		model.addAttribute("proMaxNum", proPaging.getMaxNum());//최대 페이징넘버

	//ucc게시판
		List<ArticleVO> uccList = articleService.selectArticleList("B006");
		model.addAttribute("uccList",uccList);	
		model.addAttribute("uccSelector", "&uccTab");
		//페이징 처리	
		//현재페이지
		String uccPage = request.getParameter("uccTab");
		if(uccPage == null){
			uccPage = "1";
		}
		//받은 데이터리스트의 데이터갯수
		int uccDataRow = uccList.size();
		Paging uccPaging = new Paging(uccDataRow, uccPage);
		System.out.println(uccPaging.toString());
		model.addAttribute("uccIndex", uccPaging.getIndex());//현재페이지
		model.addAttribute("uccFirstRow", uccPaging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("uccLastRow", uccPaging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("uccMinNum", uccPaging.getMinNum());//최소 페이징넘버
		model.addAttribute("uccMaxNum", uccPaging.getMaxNum());//최대 페이징넘버
				
		return url;
	}
}

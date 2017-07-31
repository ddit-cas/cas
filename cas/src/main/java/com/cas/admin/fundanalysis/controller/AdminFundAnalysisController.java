package com.cas.admin.fundanalysis.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.IngFundVO;
import com.cas.db.dto.Paging;
import com.cas.fund.service.AdminFundAnalysisService;
import com.cas.fund.service.FundService;

@Controller
public class AdminFundAnalysisController {

	@Autowired
	public FundService fundService;
	
	@Autowired
	public AdminFundAnalysisService adminFundAnalysisService;
			
	/*펀딩 통계를 보여주는 화면을 호출하는 메서드*/
	@RequestMapping("/admin/fundAnalysis")
	public String fundAnalysis(Model model, HttpServletRequest request){
		
		String url="admin/analysis/fundAnalysis";
		String index = request.getParameter("searchFundAnalysis1");
		String key = request.getParameter("searchFundAnalysis2");
		String tab = "tab";
		//검색 결과	
		List<IngFundVO>fundList = adminFundAnalysisService.selectSearchFundList(key, index);
		model.addAttribute("fundList",fundList);	
		model.addAttribute("selector", "searchFundAnalysis1="+index+"&searchFundAnalysis2="+key+"&"+tab);
		
	//페이징 처리	
		//현재페이지
		String page = request.getParameter("tab");
		if(page == null){
			page = "1";
		}
		System.out.println("페이지 : "+page);
		//받은 데이터리스트의 데이터갯수
		int dataRow = fundList.size();
		
		Paging paging = new Paging(dataRow, page);
		System.out.println(paging.toString());
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		
	//종료된 펀딩 도넛 그래프
		int successFundCount = adminFundAnalysisService.selectSuccessFundCount();
		int failedFundCount = adminFundAnalysisService.selectFailedFundCount();
		int cancelFundCount = adminFundAnalysisService.selectCancelFundCount();
		HashMap<String, Integer> fundCount = new HashMap<String, Integer>();
		fundCount.put("success", successFundCount);
		fundCount.put("failed", failedFundCount);
		fundCount.put("cancel", cancelFundCount);
		model.addAttribute("fundCount",fundCount);
	
	//라인그래프
		//그래프에 쓰일 감춰진 data
		List<ArticleVO> todayFundCount = adminFundAnalysisService.selectTodayAllFundCount();
		model.addAttribute("todayFundCount", todayFundCount);
		//전체 등록 펀딩수
		int allFundCount = adminFundAnalysisService.selectAllFundCount();
		//금월 등록 펀딩수
		int monthFundCount = adminFundAnalysisService.selectThisMonthAllFundCount();
		//전월 등록 펀딩수
		int lastMonthFundCount = adminFundAnalysisService.selectLastMonthAllFundCount();
		//금일 등록 펀딩수
		int todateFundCount = adminFundAnalysisService.selectTodayFundCount();
		//월 평균
		int monthAvg = (allFundCount /12); 
		model.addAttribute("allFundCount", allFundCount);
		model.addAttribute("monthFundCount", monthFundCount);
		model.addAttribute("lastMonthFundCount", lastMonthFundCount);
		model.addAttribute("toDateFundCount", todateFundCount);
		model.addAttribute("monthAvg", monthAvg);
		
		return url;
	}
}

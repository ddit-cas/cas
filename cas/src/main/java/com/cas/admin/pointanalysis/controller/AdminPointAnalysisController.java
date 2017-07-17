package com.cas.admin.pointanalysis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPointAnalysisController {

	/*포인트 통계를 보여줄 화면을 호출할 메서드*/
	@RequestMapping("/admin/pointAnalysis")
	public String pointAnalysis(){
		
		String url = "admin/analysis/pointAnalysis";
		
		return url;
	}

	/*개인별 포인트 통계를 보여줄 화면을 호출할 메서드*/
	@RequestMapping("/admin/pointAnalysisDetail")
	public String pointAnalysisDetail(){
		
		String url = "admin/analysis/pointAnalysisDetail";
		
		return url;
	}
}

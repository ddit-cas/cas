package com.cas.admin.fundanalysis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminFundAnalysisController {

	/*펀딩 통계를 보여주ㄴ는 화면을 호출하는 메서드*/
	@RequestMapping("/admin/fundAnalysis")
	public String fundAnalysis(){
		String url = "admin/analysis/fundAnalysis";
		return url;
	}
}

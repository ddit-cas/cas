package com.cas.admin.pointanalysis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPointAnalysisController {

	/*포인트 통계를 보여줄 화면을 호출할 메서드*/
	@RequestMapping("/admin/pointAnalysis")
	public String pointAnalysis(){
		return null;
	}
}

package com.cas.common.calender.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CalenderController {

	/*행사일정을 달력으로 보여주는 메서드*/
	@RequestMapping("/calender")
	public String calender(Model model){
		return null;
	}
}

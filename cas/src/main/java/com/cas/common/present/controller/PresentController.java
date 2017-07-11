package com.cas.common.present.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PresentController {

	/*cas소개 페이지로 가는 메서드*/
	@RequestMapping("/promotion")
	public String promotionGo(){
		return null;
	}
	
	/*오시는길 페이지로 간ㄴ 메서드*/
	@RequestMapping("/map")
	public String comingMap(){
		return null;
	}
}

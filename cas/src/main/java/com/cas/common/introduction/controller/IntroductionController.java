package com.cas.common.introduction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroductionController {

	/*cas소개 페이지로 가는 메서드*/
	@RequestMapping("/promotion")
	public String promotionGo(){
		String url = "member/story/introduce/cas-introduce";
		return url;
	}
	
	/*오시는길 페이지로 간ㄴ 메서드*/
	@RequestMapping("/map")
	public String comingMap(){
		String url = "member/story/introduce/cas-contact";
		return url;
	}
	@RequestMapping("/partner")
	public String partner(){
		String url = "member/story/introduce/cas-partner";
		return url;
	}
}

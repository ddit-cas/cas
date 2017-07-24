package com.cas.common.main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.carousel.service.CarouselService;
import com.cas.db.dto.CarouselVO;

@Controller
public class MainController {

	@Autowired
	private CarouselService caruselService;
	
	public void setCaruselService(CarouselService caruselService) {
		this.caruselService = caruselService;
	}

	/*메인화면으로 가는 메서드*/
	@RequestMapping("/main")
	public String mainGo(Model model){
		List<CarouselVO> carouselList = caruselService.selectCarouselList();
		model.addAttribute("carouselList", carouselList);
		return "member/main";
	}
	
	/*검색해주는 메서드*/
	@RequestMapping("/search")
	public String searchGo(HttpServletRequest request){
		return null;
	}
}

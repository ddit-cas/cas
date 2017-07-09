package com.cas.admin.carousel.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminCarouselController {

	/*어드민에서 관리할 캐러셀 리스트를 보여줄 화면으로 가는 유알엘을 반환하는 메서드*/
	@RequestMapping("/admin/carousel")
	public String carouselList(){
		return null;
	}
	
	/*
	 * 어드민에서 캐러셀을 추가하거나 캐러셀을 추가할때 세부 화면으로 가는 메서드
	 * 캐러셀 아이디 파라미터로 해당 캐러셀아이디를 가져와서 모델에 셋어트리뷰트해서 양식을 보여준다.
	 * 만약 캐러셀아이디가 없으면 빈 양식을 보여준다. 
	 */
	@RequestMapping("/admin/carouselDetail")
	public String carouselDetail(HttpServletRequest request,Model model){
		return null;
	}
	
	/*캐러셀 양식 입력후 등록을 실행하는 메서드*/
	@RequestMapping("/admin/carouselInsert")
	public String carouselInsert(HttpServletRequest request){
		return null;
	}
	
	/*캐러셀 양식 입력후 수정을 실행하는 메서드*/
	@RequestMapping("/admin/carouselUpdate")
	public String carouselUpdate(HttpServletRequest request){
		return null;
	}
	
	/*등록된 캐러셀을 삭제하는 메서드*/
	@RequestMapping("/admin/carouselDelete")
	public String carouselDelete(HttpServletRequest request){
		return null;
	}
}

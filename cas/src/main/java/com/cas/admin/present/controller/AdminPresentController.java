package com.cas.admin.present.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPresentController {

	/*cas란? 페이지를 수정할수있는 화면으로 가는 메서드*/
	@RequestMapping("/admin/present")
	public String adminPresentDetail(){
		return null;
	}
	
	/*수정한 cas란? 을 입력하면 실행되는 메서드*/
	@RequestMapping("/admin/Updatepresent")
	public String adminPresentUpdate(){
		return null;
	}
}

package com.cas.admin.notice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.admin.notice.service.AdminNoticeService;

@Controller
public class AdminNoticeController {

	private AdminNoticeService adminNoticeService;
	
	public void setAdminNoticeService(AdminNoticeService adminNoticeService){
		this.adminNoticeService=adminNoticeService;
	}
	
	/*관리자가 공지사항을 관리하기위한 공지사항 리스트 화면을 호출하는 메서드*/
	@RequestMapping("/admin/noticeList")
	public String adminNoticeList(){
		adminNoticeService.selectNoticeList();
		return "redirect:noticeList";
	}
	
	/*
	 * 리스트에서 선택한 공지사항을 자세히 보기 위한 페이지
	 * 공지사항 아이디를 받아서 아이디가 있으면 수정화면
	 * 아이디가 없으면 입력화면을 보여준다.
	 */
	@RequestMapping("/admin/noticeDetail")
	public String adminNoticeDetail(HttpServletRequest request,Model model){
		return null;
	}
	
	/*공지사항을 등록하거나 수정하기 위한 양식 화면으로 가는 메서드*/
	@RequestMapping("/admin/noticeInsertForm")
	public String adminNoticeForm(){
		return null;
	}
	
	/*공지사항 양식 입력후 등록을 실행하는 메서드*/
	@RequestMapping("/admin/noticeInsert")
	public String adminNoticeInsert(HttpServletRequest request){
		return null;
	}
	
	/*공지사항 양식 수정후 수정을 실행하는 메서드*/
	@RequestMapping("/admin/noticeUpdate")
	public String adminNoticeUpdate(HttpServletRequest request){
		return null;
	}
	
	/*등록된 캐러셀을 삭제하는 메서드*/
	@RequestMapping("/admin/noticeDelete")
	public String adminNoticelDelete(HttpServletRequest request){
		return null;
	}
}

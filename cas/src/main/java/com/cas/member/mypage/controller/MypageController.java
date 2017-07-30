package com.cas.member.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.MemberVO;
import com.cas.db.dto.Paging;
import com.cas.db.dto.PointVO;
import com.cas.member.service.MemberService;

@Controller
public class MypageController {

	@Autowired
	private MemberService memService;
	public void setMemService(MemberService memService) {
		this.memService = memService;
	}
	
	@Autowired
	private ArticleService articleService;
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	/*마이페이지 화면으로 가게 하는 메서드*/
	@RequestMapping("/member/mypage")
	public String memberMypage(){
		String url = "/member/myPage/myPageModify";
		return url;
	}
	
	/*내정보를 수정하는 메서드*/
	@RequestMapping("/member/updateMember")
	public String memberUpdate(MemberVO member, HttpSession session,HttpServletRequest request){
		
		session.removeAttribute("loginUser");
		session.setAttribute("loginUser", member);
		memService.updateMember(member);
		
		String url = "/member/myPage/myPageModify";
		return url;
	}
	
	/*회원 개인이 올린 유씨씨들만 볼수있게 하는 메서드*/
	@RequestMapping("/member/uccList")
	public String memberUccList(HttpSession session,Model model){
		
		String memId = ((MemberVO)session.getAttribute("loginUser")).getMemId();
		List<ArticleVO> resultList =  articleService.selectArticleList(memId, "B006");
		
		model.addAttribute("firstRow", 0);//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", resultList.size()-1);//한 페이지에서 마지막 게시글번호
		model.addAttribute("myUccList", resultList);//데이터베이스에서 가져온 리스트를 보내준다
		
		return "/member/myPage/myMovie";
	}
	
	/*회원 개인이 올린 유씨씨들만 볼수있게 하는 메서드*/
	@RequestMapping("/member/uccDetail")
	public String memberUccDetail(HttpSession session,Model model){
		String url = "/member/myPage/myMoviceDetail";
		return url;
	}
	
	/*
	 * 회원 개인이 등록한 크라우드 펀딩 리스트를 보여주는 메서드
	 * 진행중인 펀딩과 종료중인 펀딩 등 을 확인 가능하게한다.
	 */
	@RequestMapping("/member/fundList")
	public String memberFundList(HttpSession session,Model model){
		String url = "/member/myPage/myfundList";
		return url;
	}
	
	/*펀딩을 취소하는 메서드
	@RequestMapping("/member/fundCancel")
	public String memberFundCancel(HttpSession session){
		String url = "/member/myPage/myfundCancel";
		return url;
	}*/
	
	/*회원개인이 투자한 내역을 볼 수있다.*/
	@RequestMapping("/member/investmentList")
	public String memberInvestment(HttpSession session,Model model){
		String url = "/member/myPage/myinvestmentList";
		return url;
	}
	
	/*회원이 투자한것을 취소하는 메서드
	@RequestMapping("/member/investmentCancel")
	public String memberInvestmentCancel(HttpSession session){
		return null;
	}*/
	
	/*회원의포인트 상황을 보는 메서드*/
	@RequestMapping("/member/point")
	public String memberPoint(HttpSession session,Model model){
		String url = "/member/myPage/myPoint";
		return url;
	}
	/*회원이 포인트 충전하는 폼으로 가는 메서드*/
	@RequestMapping("/member/chargeForm")
	public String memberChargeForm(HttpSession session,Model model){
		String url = "/member/myPage/chargeForm";
		return url;
	}
	
	/*회원이 포인트 충전하는 메서드*/
	@RequestMapping("/member/charge")
	public String memberCharge(HttpSession session,Model model,PointVO point){
		model.addAttribute("point",point);
		String url = "/member/myPage/charge";
		return url;
	}
	
	/*회원이 포인트 충전하는 메서드*/
	@RequestMapping("/member/insertPoint")
	public String memberInsertPoint(HttpSession session,Model model,PointVO point){
		model.addAttribute("point",point);
		String url = "/member/myPage/charge";
		return url;
	}
	
	/*회원이 환전하는 메서드*/
	@RequestMapping("/member/exchange")
	public String memberExchange(HttpSession session,Model model){
		String url = "/member/myPage/exchange";
		return url;
	}
	
	/*내가 좋아요한 카서들 리스트가 나옴 클릭시 그 카서의 상세 페이지로 이동함*/
	@RequestMapping("/member/cimList")
	public String memberCim(HttpSession session,Model model){
		String url = "/member/myPage/myCim";
		return url;
	}
	/*회원이 문의한 리스트로 볼수 있는 메소드*/
	@RequestMapping("/member/myContact")
	public String memberMycontact(HttpSession session,Model model, HttpServletRequest request){
		
		String memId = ((MemberVO)session.getAttribute("loginUser")).getMemId();
		
		//자유게시판의 데이터를 전부 가져온다 (자유게시판의 board_code 는 B005) 
		List<ArticleVO> freeboardList = articleService.selectArticleList(memId,"B004");
		//현재페이지
		String page = request.getParameter("tab");
		//받은 데이터리스트의 데이터갯수
		int dataRow = freeboardList.size();
		
		Paging paging = new Paging(dataRow, page);
		
		System.out.println(paging.toString());
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		model.addAttribute("articleList", freeboardList);//데이터베이스에서 가져온 리스트를 보내준다
		
		return "/member/myPage/myContact";
	}
	
	/*탈퇴하는 메서드*/
	@RequestMapping("/member/withdrawal")
	public String memberWithdrawal(HttpSession session){
		String url = "/member/myPage/withdrawal";
		return url;
	}
}

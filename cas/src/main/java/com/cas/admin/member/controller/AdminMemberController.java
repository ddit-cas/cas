package com.cas.admin.member.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.db.dto.FundVO;
import com.cas.db.dto.MemberVO;
import com.cas.db.dto.MostViewFundVO;
import com.cas.db.dto.Paging;
import com.cas.fund.service.FundService;
import com.cas.member.service.MemberService;

@Controller
public class AdminMemberController {

	@Autowired
	public MemberService memberService;
	
	@Autowired
	public FundService fundService;
	
	/*회원 통계를 보는 메서드*/
	@RequestMapping("/admin/memberAnalysis")
	public String adminMemberAnalysis(HttpServletRequest request, Model model){
		//라인 그래프 데이터 설정
		String url = "admin/analysis/memberAnalysis";
		List<MemberVO> memCountList = memberService.selectMemberCount();
		model.addAttribute("memCount", memCountList);
		
		//회원 검색
		String index = request.getParameter("index");
		String key = request.getParameter("key");
		System.out.println("index : "+index);
		List<MemberVO> memList = memberService.selectSeachMember(index, key); 
		model.addAttribute("memList", memList);
		model.addAttribute("selector", "index="+index+"&key="+key+"&tab");
//페이징 처리	
		//현재페이지
		String page = request.getParameter("tab");
		if(page == null){
			page = "1";
		}
		//받은 데이터리스트의 데이터갯수
		int dataRow = memList.size();
		Paging paging = new Paging(dataRow, page);
		System.out.println(paging.toString());
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		
		return url;
	}
	
	/*회원정보 상세를 보는 메서드*/
	@RequestMapping("/admin/memberDetail")
	public String adminMemberDetail(HttpServletRequest request, Model model){
		String url = "admin/analysis/memberAnalysisDetail";
		
		String memId = request.getParameter("searchRow");
		
		MemberVO memVO = memberService.selectMember(memId);
		String classfyCode = memVO.getClassifyCode();
		//나이
		String ageStr = memVO.getMemBirthdate().substring(0, 4);
		System.out.println("태어난 해 : "+ageStr);
		int tAge = Integer.parseInt(ageStr);
		Date date = new Date();
		int thisYear = 1900+Integer.parseInt(date.getYear()+"");
		int age = thisYear - tAge +1;
		memVO.setMemAge(age+"");
		System.out.println("삭제여부 : "+memVO.getEnabled());
		//성별
		String gender = memVO.getClassifyCode().substring(3, 4);
		String confirmSex = "";
		if("m".equals(gender)){
			confirmSex = "남";
		}else{
			confirmSex = "여";
		}
		model.addAttribute("memberDetail", memVO);
		model.addAttribute("memberDetailSex", confirmSex);
		
		return url;
	}
	
	/*회원을 삭제하는 메서드*/
	@RequestMapping("/admin/memberDelete")
	public String adminMemberDelete(HttpServletRequest request){
		
		String url = "";
		String memId = request.getParameter("memId");
		System.out.println("삭제 멤버 : "+memId);
		
		int result = memberService.deleteMember(memId);
		if(result <0){
			url = "admin/member/failedMemberDelete";
		}else{
			url = "admin/member/successMemberDelete";
		}
		return url;
	}
}

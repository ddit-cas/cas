package com.cas.common.promotion.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.CommentVO;
import com.cas.db.dto.MemberVO;
import com.cas.db.dto.Paging;
import com.cas.db.dto.PromotionListVO;
import com.cas.db.dto.PromotionVO;
import com.cas.db.dto.LikeVO;
import com.cas.db.dto.ScheduleVO;
import com.cas.member.comment.service.CommentService;
import com.cas.promotion.service.PromotionService;

@Controller
public class PromotionController {
	@Autowired
	private PromotionService promotionService;
	@Autowired
	private CommentService commentService;
	
	public void setPromotionService(PromotionService promotionService) {
		this.promotionService = promotionService;
	}
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	
	/*공연홍보게시판 리스트로 가는 메서드*/
	@RequestMapping("/promotionList")
	public String promotionList(Model model, HttpServletRequest request){
		

		List<PromotionListVO> promotionList=promotionService.selectPromotionList();
		String boardCode = "B005"; 
		String searchUrl = "&boardCode="+boardCode;
//		//현재페이지
		String page = request.getParameter("tab");
		if(request.getParameter("tab")==null){
			page = "1";
		}
//		//받은 데이터리스트의 데이터갯수
		int dataRow = promotionList.size();
		Paging paging = new Paging(dataRow, page);
		model.addAttribute("searchUrl", searchUrl);
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		model.addAttribute("promotionList", promotionList);
		
		return "member/community/show/showBoard";
	}
	
	/*공연홍보게시물을 검색하는메서드*/
	@RequestMapping("/promotionSearch")
	public String promotionSearch(Model model){
		return null;
	}
	
	
	@RequestMapping("/showSchedule")
	public String showSchedule(Model model){
		return "member/story/showSchedule/showSchedule";
	}
	
	/*공연홍보 게시물 세부내용으로 가는 메서드*/
	@RequestMapping("/promotionDetail")
	public String promotionDetail(HttpSession session,HttpServletRequest request,Model model){
		String contentNum=(String)request.getParameter("contentNum");
		PromotionVO promotionVO=promotionService.selectPromotionDetail(contentNum);
		List<CommentVO> commentList=commentService.selectComment(contentNum);
		
		
		if(session.getAttribute("loginUser")!=null){
			LikeVO like=new LikeVO();
			like.setContentNum(contentNum);
			like.setLoginUser(((MemberVO)session.getAttribute("loginUser")).getMemId());
			
			int isLike= promotionService.isLike(like);
			model.addAttribute("isLike",isLike);
		}else{
			model.addAttribute("isLike",0);
		}
		
		model.addAttribute("recomCount",promotionService.selectRecomCount(contentNum));
		model.addAttribute("promotionVO",promotionVO);
		if(commentList.size()!=0){
			model.addAttribute("commentList",commentList);
		}
		return "member/community/show/showDetail";
	}
	
	@ResponseBody
	@RequestMapping("findMonthShow")
	public Object findMonthShow(Model model,ScheduleVO schedule){
		List<PromotionListVO> showList=promotionService.selectMonthShow(schedule);
		return showList;
	}
	
	@ResponseBody
	@RequestMapping("findDayShow")
	public Object findDayShow(Model model,ScheduleVO schedule){
		System.out.println("들어왔다"+schedule.getSelectDate());
		List<PromotionListVO> showList=promotionService.selectDayShow(schedule);
		return showList;
	}
}

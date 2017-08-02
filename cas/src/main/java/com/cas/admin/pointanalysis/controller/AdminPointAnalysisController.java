package com.cas.admin.pointanalysis.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.IngFundVO;
import com.cas.db.dto.InvestmentVO;
import com.cas.db.dto.MemberVO;
import com.cas.db.dto.Paging;
import com.cas.db.dto.PointVO;
import com.cas.member.investment.service.InvestmentService;
import com.cas.member.service.MemberService;
import com.cas.point.service.PointService;

@Controller
public class AdminPointAnalysisController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	PointService pointService;
	
	@Autowired
	ArticleService articleService;
	
	@Autowired
	InvestmentService investmentService;
	
	/*포인트 통계를 보여줄 화면을 호출할 메서드*/
	@RequestMapping("/admin/pointAnalysis")
	public String pointAnalysis(HttpServletRequest request, Model model){
		String url="admin/analysis/pointAnalysis";
		
		String index = request.getParameter("index");
		String key = request.getParameter("key");
		String tab = "tab";
		//검색 결과
		List<MemberVO>pointList = memberService.selectSeachMember(index, key);
		model.addAttribute("pointList",pointList);	
		model.addAttribute("selector", "index="+index+"&key="+key+"&"+tab);
	//페이징 처리	
		//현재페이지
		String page = request.getParameter("tab");
		//받은 데이터리스트의 데이터갯수
		int dataRow = pointList.size();
		Paging paging = new Paging(dataRow, page);
		System.out.println(paging.toString());
		model.addAttribute("index", paging.getIndex());//현재페이지
		model.addAttribute("firstRow", paging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRow", paging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNum", paging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNum", paging.getMaxNum());//최대 페이징넘버
		
		
		//그래프 데이터
		List<PointVO> dataList = pointService.selectMonthlyTotalRechargePoint();
		//구름 충전 월별 총액, 환급 내역
		int chargingJan = 0;
		int chargingFeb = 0;
		int chargingMar = 0;
		int chargingApr = 0;
		int chargingMay = 0;
		int chargingJun = 0;
		int chargingJul = 0;
		int chargingAug = 0;
		int chargingSep = 0;
		int chargingOct = 0;
		int chargingNov = 0;
		int chargingDes = 0;
		//구름 환급 월별 총액 
		int refundJan = 0;
		int refundFeb = 0;
		int refundMar = 0;
		int refundApr = 0;
		int refundMay = 0;
		int refundJun = 0;
		int refundJul = 0;
		int refundAug = 0;
		int refundSep = 0;
		int refundOct = 0;
		int refundNov = 0;
		int refundDes = 0;
		
		HashMap<String, String> monthlyChargingMap = new HashMap<String, String>();
		HashMap<String, String> monthlyRefundMap = new HashMap<String, String>();
		//1월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("01".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundJan += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundJanAmount",refundJan*(-1)+"");
		//1월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("01".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingJan += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingJanAmount", chargingJan+"");
		//2월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("02".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundFeb += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundFebAmount",refundFeb*(-1)+"");
		//2월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("02".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingFeb += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingFebAmount", chargingFeb+"");
		//3월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("03".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundMar += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundMarAmount",refundMar*(-1)+"");
		//3월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("03".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingMar += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingMarAmount", chargingMar+"");
		//4월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("04".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundApr += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundAprAmount",refundApr*(-1)+"");
		//4월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("04".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingApr += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingAprAmount", chargingApr+"");
		//5월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("05".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundMay += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundMayAmount",refundMay*(-1)+"");
		//5월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("05".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingMay += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingMayAmount", chargingMay+"");
		//6월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("06".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundJun += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundJunAmount",refundJun*(-1)+"");
		//6월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("06".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingJun += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingJunAmount", chargingJun+"");
		//7월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("07".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundJul += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundJulAmount",refundJul*(-1)+"");
		//7월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("07".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingJul += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingJulAmount", chargingJul+"");
		//8월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("08".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundAug += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundAugAmount",refundAug*(-1)+"");
		//8월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("08".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingAug += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingAugAmount", chargingAug+"");
		//9월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("09".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundSep += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundSepAmount",refundSep*(-1)+"");
		//9월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("09".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingSep += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingSepAmount", chargingSep+"");
		//10월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("10".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundOct += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundOctAmount",refundOct*(-1)+"");
		//10월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("10".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingOct += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingOctAmount", chargingOct+"");
		//11월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("11".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundNov += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundNovAmount",refundNov*(-1)+"");
		//11월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("11".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingNov += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingNovAmount", chargingNov+"");
		//12월 환급
		for (int i = 0; i < dataList.size(); i++) {
			if ("12".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()<0){
					refundDes += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyRefundMap.put("refundDesAmount",refundDes*(-1)+"");
		//12월 충전
		for (int i = 0; i < dataList.size(); i++) {
			if ("12".equals(dataList.get(i).getChargingDate().substring(5, 7))) {
				if(dataList.get(i).getChargingAmount()>=0){
					chargingDes += dataList.get(i).getChargingAmount();
				}
			}
		}
		monthlyChargingMap.put("chargingDesAmount", chargingDes+"");
		
		model.addAttribute("monthlyRefund", monthlyRefundMap);
		model.addAttribute("monthlyCharging", monthlyChargingMap);
		
		return url;
		
	}

	/*포인트 상세 화면을 호출할 메서드*/
	@RequestMapping("/admin/pointAnalysisDetail")
	public String pointAnalysisDetail(HttpServletRequest request, Model model){
		String url="admin/analysis/pointAnalysisDetail";
		
		//검색 결과
		String chargingMem = request.getParameter("memId");
		System.out.println(chargingMem);
		MemberVO pointDetailMem = memberService.selectMember(chargingMem);
		List<PointVO> pointDetailList = pointService.selectTotalRechargePoint(chargingMem);
		//구름 사용 내역
		List<InvestmentVO> investmentList = memberService.selectInvestMentList(chargingMem);
		System.out.println("펀딩명 : "+investmentList.get(0).getInvesEndDate());
		model.addAttribute("investment", investmentList);
		//구름 충전, 환급 내역
		int chargingAmount = 0;
		int refundAmount = 0;
		
		List<PointVO> chargingList = new ArrayList<PointVO>();
		List<PointVO> refundList = new ArrayList<PointVO>();
		for (int i = 0; i < pointDetailList.size(); i++) {
			if(pointDetailList.get(i).getChargingAmount()<0){
				PointVO refund = new PointVO();
				refund.setChargingDate(pointDetailList.get(i).getChargingDate());
				refund.setChargingAmount(pointDetailList.get(i).getChargingAmount()*-1);
				refundList.add(refund);
				refundAmount += pointDetailList.get(i).getChargingAmount();
			}else{
				PointVO charging = new PointVO();
				charging.setChargingDate(pointDetailList.get(i).getChargingDate());
				charging.setChargingAmount(pointDetailList.get(i).getChargingAmount());
				chargingList.add(charging);
				chargingAmount += pointDetailList.get(i).getChargingAmount();
			}
		
		}
		refundAmount = refundAmount*(-1);
		System.out.println("사이즈 : "+refundList.size());
		model.addAttribute("pointDetailMem",pointDetailMem);
		model.addAttribute("chargingList",chargingList);
		model.addAttribute("refundList",refundList);
		model.addAttribute("chargingAmount",chargingAmount);
		model.addAttribute("refundAmount",refundAmount);
		model.addAttribute("selector1", "memId="+chargingMem+"&tabPointHistory");
		model.addAttribute("selector2", "memId="+chargingMem+"&tabCharging");
		model.addAttribute("selector3", "memId="+chargingMem+"&tabRefund");
		
		//페이징 처리	
		//현재페이지
		String pagePointHistory = request.getParameter("tabPointHistory");
		if(request.getParameter("tabPointHistory")==null){
			pagePointHistory = "1";
		}
		System.out.println("pagePointHistory페이지 : "+ pagePointHistory);
		//받은 데이터리스트의 데이터갯수
		int dataRowPointHistory = investmentList.size();
		Paging pagingPoint = new Paging(dataRowPointHistory, pagePointHistory);
		System.out.println(pagingPoint.toString());
		model.addAttribute("indexPointHistory", pagingPoint.getIndex());//현재페이지
		model.addAttribute("firstRowPointHistory", pagingPoint.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRowPointHistory", pagingPoint.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNumPointHistory", pagingPoint.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNumPointHistory", pagingPoint.getMaxNum());//최대 페이징넘버
		//현재페이지
		String pageCharge = request.getParameter("tabCharging");
		if(pageCharge==null){
			pageCharge = "1";
		}
		System.out.println("pageCharge페이지 : "+ pageCharge);
		//받은 데이터리스트의 데이터갯수
		int dataRowCharge = chargingList.size();
		Paging pagingCharging = new Paging(dataRowCharge, pageCharge);
		System.out.println(pagingCharging.toString());
		model.addAttribute("indexCharging", pagingCharging.getIndex());//현재페이지
		model.addAttribute("firstRowCharging", pagingCharging.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRowCharging", pagingCharging.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNumCharging", pagingCharging.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNumCharging", pagingCharging.getMaxNum());//최대 페이징넘버
		//현재페이지
		String pageRefund = request.getParameter("tabRefund");
		if(pageRefund==null){
			pageRefund = "1";
		}
		//받은 데이터리스트의 데이터갯수
		int dataRowRefund = refundList.size();
		System.out.println("refund페이지 : "+ pageRefund);
		Paging pagingRefund = new Paging(dataRowRefund, pageRefund);
		System.out.println(pagingRefund.toString());
		model.addAttribute("indexRefund", pagingRefund.getIndex());//현재페이지
		model.addAttribute("firstRowRefund", pagingRefund.getFirstPageRow());//한 페이지에서 첫 게시글번호
		model.addAttribute("lastRowRefund", pagingRefund.getLastPageRow());//한 페이지에서 마지막 게시글번호
		model.addAttribute("minNumRefund", pagingRefund.getMinNum());//최소 페이징넘버
		model.addAttribute("maxNumRefund", pagingRefund.getMaxNum());//최대 페이징넘버
		
		return url;
	}
}

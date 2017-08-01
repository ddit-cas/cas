package com.cas.common.main.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.carousel.service.CarouselService;
import com.cas.caser.service.CaserService;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.CarouselVO;
import com.cas.db.dto.IngFundVO;
import com.cas.db.dto.MemberVO;
import com.cas.db.dto.MostViewFundVO;
import com.cas.db.dto.PromotionListVO;
import com.cas.db.dto.PromotionVO;
import com.cas.fund.service.FundService;
import com.cas.promotion.service.PromotionService;

@Controller
public class MainController {

	/*캐러셀 서비스*/
	@Autowired
	private CarouselService caruselService;
	
	public void setCaruselService(CarouselService caruselService) {
		this.caruselService = caruselService;
	}
	
	/*공연홍보 서비스*/
	@Autowired
	private PromotionService promotionService;

	public void setPromotionService(PromotionService promotionService) {
		this.promotionService = promotionService;
	}

	/*카서 서비스*/
	@Autowired
	private CaserService caserService;

	public void setCaserService(CaserService caserService) {
		this.caserService = caserService;
	}
	
	/*유씨씨를가져올 서비스*/
	@Autowired
	private ArticleService articleService;

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	
	/*펀딩 서비스*/
	@Autowired
	private FundService fundService;
	
	public void setFundService(FundService fundService) {
		this.fundService = fundService;
	}

	/*메인화면으로 가는 메서드*/
	@RequestMapping("/main")
	public String mainGo(Model model,HttpSession session){
		/*캐러셀 가져오기*/
		List<CarouselVO> carouselList = caruselService.selectCarouselList();
		model.addAttribute("carouselList", carouselList);
		
		/*펀딩 5순위 까지 가져오기*/
		List<IngFundVO> topFundList =  fundService.selectTopFundList();
		model.addAttribute("topFundList",topFundList);
		
		/*유씨씨 5순위까지 가져오기*/
		List<ArticleVO> topUccList = articleService.selectTopUccList();
		model.addAttribute("topUccList",topUccList);
		
		/*공연홍보 5순위까지 가져오기*/
		List<PromotionVO> topPromotionList = promotionService.selectTopPromotionList();
		model.addAttribute("topPromotionList",topPromotionList);
		
		List<MostViewFundVO> topClickFundList = null;
		List<PromotionListVO> topClickPromotionList = null;
		if (session.getAttribute("loginUser")!=null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
			/*펀딩 연령별로 많이 본 거 가져오기*/
			topClickFundList = fundService.selectTopClickFundList(loginUser.getClassifyCode());
			
			/*공연홍보 연령별로 많이 본거 가져오기*/
			topClickPromotionList = promotionService.selectTopClickPromotionList(loginUser.getClassifyCode());
		}
		if (topClickFundList==null) {
			topClickFundList = new ArrayList<MostViewFundVO>();
		}
		if (topClickFundList.size()<3) {
			List<MostViewFundVO> list = fundService.selectShortFundList(3-topClickFundList.size());
			for (int i = 0; i < list.size(); i++) {
				topClickFundList.add(list.get(i));
			}
		}
		if(topClickPromotionList==null){
			topClickPromotionList = new ArrayList<PromotionListVO>();
		}
		
		if (topClickPromotionList.size()<3) {
			List<PromotionListVO> list = promotionService.selectPromotionList();
			int i=0;
			if (list.size()!=0) {
				while(topClickPromotionList.size()<3){
					topClickPromotionList.add(list.get(i));
					i++;
				}
			}
		}
		
		model.addAttribute("topClickFundList",topClickFundList);
		model.addAttribute("topClickPromotionList",topClickPromotionList);
		
		return "member/main";
	}
	
	/*검색해주는 메서드*/
	@RequestMapping("/search")
	public String searchGo(HttpServletRequest request){
		return null;
	}
}

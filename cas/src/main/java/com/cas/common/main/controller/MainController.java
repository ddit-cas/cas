package com.cas.common.main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cas.article.service.ArticleService;
import com.cas.carousel.service.CarouselService;
import com.cas.caser.service.CaserService;
import com.cas.db.dto.CarouselVO;
import com.cas.db.dto.FundVO;
import com.cas.db.dto.IngFundVO;
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
	public String mainGo(Model model){
		/*캐러셀 가져오기*/
		List<CarouselVO> carouselList = caruselService.selectCarouselList();
		model.addAttribute("carouselList", carouselList);
		
		/*펀딩 5순위 까지 가져오기*/
		List<IngFundVO> topFundList =  fundService.selectTopFundList();
		
		return "member/main";
	}
	
	/*검색해주는 메서드*/
	@RequestMapping("/search")
	public String searchGo(HttpServletRequest request){
		return null;
	}
}

package com.cas.admin.carousel.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cas.article.service.ArticleService;
import com.cas.carousel.service.CarouselService;
import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.CarouselVO;
import com.cas.db.dto.IngFundVO;
import com.cas.db.dto.PromotionListVO;
import com.cas.db.dto.PromotionVO;
import com.cas.fund.service.FundService;
import com.cas.promotion.service.PromotionService;

@Controller
public class AdminCarouselController {

	@Autowired
	private CarouselService carouselService;
	
	public void setCarouselService(CarouselService carouselService) {
		this.carouselService = carouselService;
	}
	
	@Autowired
	private PromotionService promotionService;

	public void setPromotionService(PromotionService promotionService) {
		this.promotionService = promotionService;
	}

	@Autowired
	private ArticleService articleService;
	
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	
	@Autowired
	private FundService fundService;

	public void setFundService(FundService fundService) {
		this.fundService = fundService;
	}

	/*어드민에서 관리할 캐러셀 리스트를 보여줄 화면으로 가는 유알엘을 반환하는 메서드*/
	@RequestMapping("/admin/carousel")
	public String carouselList(Model model){
		List<CarouselVO> carouselList = carouselService.selectCarouselList();
		model.addAttribute("carouselList",carouselList);
		String url = "admin/carousel/admin_carousel";
		return url;
	}
	
	/*
	 * 어드민에서 캐러셀을 추가하거나 캐러셀을 추가할때 세부 화면으로 가는 메서드
	 * 캐러셀 아이디 파라미터로 해당 캐러셀아이디를 가져와서 모델에 셋어트리뷰트해서 양식을 보여준다.
	 * 만약 캐러셀아이디가 없으면 빈 양식을 보여준다. 
	 */
	@RequestMapping("/admin/carouselDetail")
	public String carouselDetail(HttpServletRequest request,Model model){
		String carouselNum = request.getParameter("carouselNum");
		if (carouselNum!=null) {
			CarouselVO carouselVO = carouselService.selectCarousel(carouselNum);
			model.addAttribute("carousel",carouselVO);
			model.addAttribute("carouselUrl","carouselUpdate");
		}else{
			model.addAttribute("carouselUrl","carouselInsert");
		}
		
		/*캐러셀에 띄워줄 전체 글리스트*/
		List<ArticleVO> articleList = new ArrayList<ArticleVO>();
		
		/*공연홍보 리스트*/
		List<PromotionListVO> promotionList = promotionService.selectPromotionList();
		for (int i = 0; i < promotionList.size(); i++) {
			ArticleVO article = new ArticleVO();
			article.setContentNum("/cas/noticeDetail?articleId="+promotionList.get(i).getContentNum());
			article.setBoardName("공지사항");
			article.setContentTitle(promotionList.get(i).getContentTitle());
			article.setContentWriter(promotionList.get(i).getContentWriter());
			articleList.add(article);
		}
		
		/*펀딩 리스트*/
		List<IngFundVO> fundList = fundService.selectIngFundList();
		for (int i = 0; i < fundList.size(); i++) {
			ArticleVO article = new ArticleVO();
			article.setContentNum("/cas/fundDetail?contentNum="+fundList.get(i).getContentNum());
			article.setBoardName("크라우드펀딩");
			article.setContentTitle(fundList.get(i).getContentTitle());
			article.setContentWriter(fundList.get(i).getContentWriter());
			articleList.add(article);
		}
		
		/*고지사항 리스트*/
		List<ArticleVO> noticeList = articleService.selectArticleList("B001");
		for (int i = 0; i < noticeList.size(); i++) {
			ArticleVO article = new ArticleVO();
			article.setContentNum("/cas/noticeDetail?contentNum="+noticeList.get(i).getContentNum());
			article.setBoardName("공지사항");
			article.setContentTitle(noticeList.get(i).getContentTitle());
			article.setContentWriter(noticeList.get(i).getContentWriter());
			articleList.add(article);
		}
		model.addAttribute("articleList",articleList);
		
		return "admin/carousel/admin_carouselDetail";
	}
	
	/*캐러셀 양식 입력후 등록을 실행하는 메서드*/
	@RequestMapping("/admin/carouselInsert")
	public String carouselInsert(@RequestParam("image") MultipartFile multipartFile,CarouselVO carousel,HttpServletRequest request) {
		String upload = request.getSession().getServletContext()
				.getRealPath("upload/carousel");

		if (!multipartFile.isEmpty()) {
			File file = new File(upload, multipartFile.getOriginalFilename()
					+ "$$" + System.currentTimeMillis());

			try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			String carouselImage = request.getContextPath()
					+ "/upload/carousel/" + file.getName();
			carousel.setCarouselImage(carouselImage);
		}
		carouselService.insertCarousel(carousel);
		return "admin/carousel/carouselListGo";
	}
	
	/*캐러셀 양식 입력후 수정을 실행하는 메서드*/
	@RequestMapping("/admin/carouselUpdate")
	public String carouselUpdate(@RequestParam("image") MultipartFile multipartFile,CarouselVO carousel,HttpServletRequest request){
		String upload = request.getSession().getServletContext().getRealPath("upload/carousel");
		
		if(!multipartFile.isEmpty()){
			File file = new File(upload, multipartFile.getOriginalFilename()+"$$"+System.currentTimeMillis());
			
			try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			String carouselImage=request.getContextPath() + "/upload/carousel/" + file.getName();
			carousel.setCarouselImage(carouselImage);
		}
		carouselService.updateCarousel(carousel);
		return "admin/carousel/carouselListGo";
	}
	
	/*등록된 캐러셀을 삭제하는 메서드*/
	@RequestMapping("/admin/carouselDelete")
	public String carouselDelete(HttpServletRequest request){
		carouselService.deleteCarousel(request.getParameter("carouselNum"));
		return "admin/carousel/carouselListGo";
	}
}

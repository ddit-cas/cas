package com.cas.member.promotion.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.ConsertVO;
import com.cas.db.dto.GenreVO;
import com.cas.promotion.service.PromotionService;

@Controller
public class MemberPromotionController {
	@Autowired
	private PromotionService promotionService;
	
	public void setPromotionService(PromotionService promotionService) {
		this.promotionService = promotionService;
	}

	/*
	 * 공연홍보를 입력하거나 수정하는 양식으로 이동하는 메서드
	 * 만약 수정을눌렀을시 글 아이디를 받아서 수정화면을 보여주고
	 * 글아이디가 없으면 그냥 입력화면을보여줌
	 */
	@RequestMapping("/member/PromotionForm")
	public String insertPromotionForm(HttpServletRequest request,Model model){
		
		List<GenreVO> genreList=promotionService.selectGenreList();
		model.addAttribute("genreList", genreList);
		System.out.println();
		return "member/community/show/insertShow";
	}
	
	/*공연 홍보 입력양식을 다 입력후 등록을 누르면 인서트 해주는 메서드*/
	@RequestMapping("/member/insertPromotion")
	public String insertFreeboard(@RequestParam("posterImage")MultipartFile multipartFile
			,HttpServletRequest request,ConsertVO consertVO,ArticleVO articleVO){
		
		String upload = request.getSession().getServletContext()
				.getRealPath("upload/promotion");

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
			String posterImage = request.getContextPath() + "/upload/promotion/"
					+ file.getName();
			articleVO.setContentImg(posterImage);
		}
		articleVO.setBoardCode("B007");
		String address=(String)request.getParameter("address");
		String detailAddress=(String)request.getParameter("detailAddress");
		consertVO.setConsertPlace(detailAddress+"("+address+")");
		int result=promotionService.insertPromotion(articleVO, consertVO);
		System.out.println(result);
		return "redirect:/promotionList";
	}
	
	/*글 수정양식을 다 입력한후 수정을 눌렀을떄 오는 메서드*/
	@RequestMapping("/member/updatePromotion")
	public String updateFreeboard(HttpServletRequest request){
		return null;
	}
	
	/*회원 본인이 글 삭제를 눌렀을시 오는 메서드*/
	@RequestMapping("/member/deletePromotion")
	public String deleteFreeboard(HttpServletRequest request){
		return null;
	}
}

package com.cas.promotion.service.impl;

import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.ConsertVO;
import com.cas.db.dto.GenreVO;
import com.cas.db.dto.PromotionVO;
import com.cas.promotion.dao.PromotionDao;
import com.cas.promotion.service.PromotionService;

public class PromotionServiceImpl implements PromotionService {
	private PromotionDao promotionDao;
	
	public void setPromotionDao(PromotionDao promotionDao){
		this.promotionDao=promotionDao;
	}

	@Override
	public List<GenreVO> selectGenreList() {
		List<GenreVO> genreList=promotionDao.selectGenreList();
		return genreList;
	}

	@Override
	public int insertPromotion(ArticleVO articleVO, ConsertVO consertVO) {
		int result=promotionDao.insertPromotion(articleVO, consertVO);
		return result;
	}

	@Override
	public PromotionVO selectPromotionDetail() {
		PromotionVO promotionVO=promotionDao.selectPromotionDetail();
		return promotionVO;
	}
}

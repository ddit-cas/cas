package com.cas.promotion.service;

import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.ConsertVO;
import com.cas.db.dto.GenreVO;
import com.cas.db.dto.PromotionVO;

public interface PromotionService {
	public List<GenreVO> selectGenreList();
	public int insertPromotion(ArticleVO articleVO,ConsertVO consertVO);
	public PromotionVO selectPromotionDetail();
}

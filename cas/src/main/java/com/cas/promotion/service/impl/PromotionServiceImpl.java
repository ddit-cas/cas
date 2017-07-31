package com.cas.promotion.service.impl;

import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.ConsertVO;
import com.cas.db.dto.GenreVO;
import com.cas.db.dto.LikeVO;
import com.cas.db.dto.PromotionListVO;
import com.cas.db.dto.PromotionVO;
import com.cas.db.dto.ScheduleVO;
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
	public PromotionVO selectPromotionDetail(String contentNum) {
		PromotionVO promotionVO=promotionDao.selectPromotionDetail(contentNum);
		return promotionVO;
	}

	@Override
	public List<PromotionListVO> selectPromotionList() {
		List<PromotionListVO> promotionList=promotionDao.selectPromotionList();
		return promotionList;
	}

	@Override
	public int isLike(LikeVO like) {
		int isLike=promotionDao.isLike(like);
		return isLike;
	}

	@Override
	public List<PromotionListVO> selectDayShow(ScheduleVO schedule) {
		List<PromotionListVO> showList=promotionDao.selectDayShow(schedule);
		return showList;
	}

	@Override
	public List<PromotionListVO> selectMonthShow(ScheduleVO schedule) {
		List<PromotionListVO> showList=promotionDao.selectMonthShow(schedule);
		return showList;
	}

	@Override
	public int selectRecomCount(String contentNum) {
		int recomCount=promotionDao.selectRecomCount(contentNum);
		return recomCount;
	}

	@Override
	public List<PromotionListVO> selectSearchList(String boardCode, String index,
			String key) {
		List<PromotionListVO> resultList;
		resultList = promotionDao.selectSearchList(boardCode, index, key);
		return resultList;
	}
	
	@Override
	public List<PromotionVO> selectTopPromotionList() {
		return promotionDao.selectTopPromotionList();
	}

	@Override
	public List<PromotionListVO> selectTopClickPromotionList(String classifyCode) {
		return promotionDao.selectTopClickPromotionList(classifyCode);
	}


	@Override
	public List<PromotionListVO> searchtTitlePromotion(String title) {
		return promotionDao.searchtTitlePromotion(title);
	}

	@Override
	public List<PromotionListVO> searchWriterPromotion(String writer) {
		return promotionDao.searchWriterPromotion(writer);
	}

	@Override
	public List<PromotionListVO> selectMyPromotionList(String memId) {
		return promotionDao.selectMyPromotionList(memId);
	}

	@Override
	public List<PromotionListVO> searchtTitleMyPromotion(PromotionVO promotionVO) {
		return promotionDao.searchtTitleMyPromotion(promotionVO);
	}
}

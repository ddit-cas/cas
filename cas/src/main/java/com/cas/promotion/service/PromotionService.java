package com.cas.promotion.service;

import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.ConsertVO;
import com.cas.db.dto.GenreVO;
import com.cas.db.dto.LikeVO;
import com.cas.db.dto.PromotionListVO;
import com.cas.db.dto.PromotionVO;
import com.cas.db.dto.ScheduleVO;

public interface PromotionService {
	public List<PromotionListVO> selectSearchList(String boardCode,String index, String key);
	public List<GenreVO> selectGenreList();
	public int insertPromotion(ArticleVO articleVO,ConsertVO consertVO);
	public PromotionVO selectPromotionDetail(String contentNum);
	public List<PromotionListVO> selectPromotionList();
	public int isLike(LikeVO like);
	public List<PromotionListVO> selectDayShow(ScheduleVO schedule);
	public List<PromotionListVO> selectMonthShow(ScheduleVO schedule);
	public int selectRecomCount(String contentNum);
	public List<PromotionVO> selectTopPromotionList();
	public List<PromotionListVO> selectTopClickPromotionList(String classifyCode);
}

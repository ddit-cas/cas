package com.cas.promotion.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.ConsertVO;
import com.cas.db.dto.GenreVO;
import com.cas.db.dto.PromotionVO;
import com.cas.promotion.dao.PromotionDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class PromotionDaoImpl implements PromotionDao {
	
	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient){
		this.sqlMapClient=sqlMapClient;
	}

	@Override
	public List<GenreVO> selectGenreList() {
		List<GenreVO> genreList=null;
		
		try {
			genreList=sqlMapClient.queryForList("selectGenreList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return genreList;
	}

	@Override
	public int insertPromotion(ArticleVO articleVO, ConsertVO consertVO) {
		int result=0;
		System.out.println(consertVO.getConsertContent());
		System.out.println(consertVO.getConsertGenre());
		System.out.println(consertVO.getConsertGeograp());
		System.out.println(consertVO.getConsertPlace());
		System.out.println(consertVO.getConsertTicket());
		System.out.println(consertVO.getConsertTime());
		System.out.println(consertVO.getEndDate());
		System.out.println(consertVO.getStartDate());
		try {
			sqlMapClient.update("insertArticle", articleVO);
			sqlMapClient.update("insertConsert", consertVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public PromotionVO selectPromotionDetail() {
		PromotionVO promotionVO=null;
		
		try {
			promotionVO=(PromotionVO) sqlMapClient.queryForObject("selectPromotionDetail");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return promotionVO;
	}
}

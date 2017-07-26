package com.cas.promotion.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.ConsertVO;
import com.cas.db.dto.GenreVO;
import com.cas.db.dto.PromotionListVO;
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
		try {
			sqlMapClient.update("insertConsert", consertVO);
			String consertNum=(String)sqlMapClient.queryForObject("selectLastConsertNum");
			articleVO.setConsertNum(consertNum);
			System.out.println("공연번호 ------------>"+articleVO.getConsertNum() );
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			sqlMapClient.update("insertArticle", articleVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public PromotionVO selectPromotionDetail(String contentNum) {
		PromotionVO promotionVO=null;
		
		try {
			promotionVO=(PromotionVO) sqlMapClient.queryForObject("selectPromotionDetail",contentNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return promotionVO;
	}

	@Override
	public List<PromotionListVO> selectPromotionList() {
		List<PromotionListVO> promotionList=null;
		
		try {
			promotionList=sqlMapClient.queryForList("selectPromotionList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(promotionList.size());
		return promotionList;
	}

	@Override
	public int isLike(PromotionVO promotionVO) {
		int isLike=0;
		
		try {
			isLike=(Integer) sqlMapClient.queryForObject("isLike", promotionVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return isLike;
	}
}

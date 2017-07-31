package com.cas.promotion.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.ArticleVO;
import com.cas.db.dto.ConsertVO;
import com.cas.db.dto.GenreVO;
import com.cas.db.dto.LikeVO;
import com.cas.db.dto.PromotionListVO;
import com.cas.db.dto.PromotionVO;
import com.cas.db.dto.ScheduleVO;
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
	public int isLike(LikeVO like) {
		int isLike=0;
			System.out.println(like.getContentNum());
			System.out.println(like.getLoginUser());
		try {
			isLike=(Integer) sqlMapClient.queryForObject("isLike", like);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return isLike;
	}

	@Override
	public List<PromotionListVO> selectDayShow(ScheduleVO schedule) {
		List<PromotionListVO> showList=null;
		
		try {
			showList=sqlMapClient.queryForList("selectDayShow",schedule);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return showList;
	}

	@Override
	public List<PromotionListVO> selectMonthShow(ScheduleVO schedule) {
		List<PromotionListVO> showList=null;
		try {
			showList=sqlMapClient.queryForList("selectMonthShow", schedule);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return showList;
	}

	@Override
	public int selectRecomCount(String contentNum) {
		int recomCount=0;
		try {
			recomCount=(Integer) sqlMapClient.queryForObject("selectRecomCount",contentNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(recomCount);
		return recomCount;
	}

	@Override
	public List<PromotionListVO> selectSearchList(String boardCode,
			String index, String key) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<PromotionVO> selectTopPromotionList() {
		List<PromotionVO> topPromotionList = null;
		try {
			topPromotionList = sqlMapClient.queryForList("topPromotionList");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return topPromotionList;
	}

	@Override
	public List<PromotionVO> selectTopClickPromotionList() {
		List<PromotionVO> topClickPromotionList = null;
		try {
			topClickPromotionList = sqlMapClient.queryForList("topClickPromotionList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return topClickPromotionList;
	}

	@Override
	public List<PromotionListVO> searchWriterPromotion(String writer) {
		List<PromotionListVO> promotionList=null;
		System.out.println("작성자"+writer);
		try {
			promotionList=sqlMapClient.queryForList("searchtWriterPromotion",writer);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return promotionList;
	}

	@Override
	public List<PromotionListVO> searchtTitlePromotion(String title) {
		List<PromotionListVO> promotionList=null;
		System.out.println("제목"+title);
		try {
			promotionList=sqlMapClient.queryForList("searchtTitlePromotion",title);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return promotionList;
	}
}

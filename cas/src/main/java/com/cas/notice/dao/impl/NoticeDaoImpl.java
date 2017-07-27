package com.cas.notice.dao.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cas.db.dto.ArticleVO;
import com.cas.notice.dao.NoticeDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class NoticeDaoImpl implements NoticeDao{

	private SqlMapClient sqlMapClient;	

	
	
	public void setSqlMapClient(SqlMapClient sqlMapClient) {
		this.sqlMapClient = sqlMapClient;
	}

	/**
	 * 공지사항리스트 가져오기 
	 * @author 김민환
	 * @param boardCode
	 * 
	 */
	@Override
	public List<ArticleVO> selectNoticeList(String boardCode) {
		List<ArticleVO> resultList = null;
		ArticleVO notice = new ArticleVO();
		notice.setBoardCode(boardCode);
		try {
			resultList = sqlMapClient.queryForList("selectArticleList",notice);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
	}
	
	/**
	 * 공지사항목록에 행을 클릭시 행에 대한 정보 추출
	 * @author 박미현
	 * @param articleId,baordCode
	 */
	
	@Override
	public ArticleVO selectNotice(String articleId,String boardCode) {
		ArticleVO noticevo=new ArticleVO();
		noticevo.setBoardCode(boardCode);
		noticevo.setContentNum(articleId);
		
		ArticleVO result = null;
		try {
			result=(ArticleVO) sqlMapClient.queryForObject("selectNotice",noticevo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	@Override
	public List<ArticleVO> noticeSearch(String boardCode, String index, String key) {
		List<ArticleVO> resultList=null;
		Map<String,String> map=new HashMap<String,String>();
		map.put("index", index);
		map.put("key", key);
		map.put("boardCode", boardCode);
		try {
			resultList = sqlMapClient.queryForList("selectSearchNotice",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
				
		return resultList;
		
	}
	
	@Override
	public boolean insertNotice(ArticleVO article) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateNotice(ArticleVO article) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateNotice(String articleId) {
		// TODO Auto-generated method stub
		return false;
	}


}

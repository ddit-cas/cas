package com.cas.notice.dao;

import java.util.List;

import com.cas.db.dto.ArticleVO;

public interface NoticeDao {

	/*공지사항 리스트를 가져오는 메서다*/
	public List<ArticleVO> selectNoticeList(String boardCode);
	
	/*공지사항 하나를 가져오는 메서드*/
	public ArticleVO selectNotice(String articleId,String boardCode);
	
	public List<ArticleVO> noticeSearch(String index, String key);
	
	/*공지사항을 등록하는 메셔드*/
	public boolean insertNotice(ArticleVO article);
	
	/*공지사항을 수정하는 메서드*/
	public boolean updateNotice(ArticleVO article);
	
	/*공지사항을 삭제하는 메서드*/
	public boolean deleteNotice(ArticleVO article);
	
	

}

package com.cas.like.service.impl;

import com.cas.db.dto.RecomVO;
import com.cas.like.dao.LikeDao;
import com.cas.like.service.LikeService;

public class LikeServiceImpl implements LikeService{

	private LikeDao likeDao;
	
	public void setLikeDao(LikeDao likeDao) {
		this.likeDao = likeDao;
	}

	@Override
	public void insertRecom(RecomVO recom) {
		likeDao.insertRecom(recom);
	}
	
	@Override
	public void deleteRecom(String contentNum) {
		likeDao.deleteRecom(contentNum);
	}

}

package com.cas.like.dao;

import com.cas.db.dto.RecomVO;

public interface LikeDao {

	public void insertRecom(RecomVO recom);

	void deleteRecom(String contentNum);
}

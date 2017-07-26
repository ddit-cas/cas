package com.cas.like.service;

import com.cas.db.dto.RecomVO;

public interface LikeService {

	public void insertRecom(RecomVO recom);

	void deleteRecom(String contentNum);
}

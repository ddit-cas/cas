package com.cas.caser.dao;

import java.util.List;

import com.cas.db.dto.CaserVO;

public interface CaserDao {
	
	public List<CaserVO> selectCaserList();

}

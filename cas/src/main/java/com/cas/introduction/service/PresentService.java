package com.cas.introduction.service;

import com.cas.db.dto.Article;

public interface PresentService {

	/*cas?란의 내용들을 가져오는 메서다*/
	public Article selectPresent();

	/*cas?란의 내용을 수정시켜주는 메서드*/
	public boolean updatePresent();
}

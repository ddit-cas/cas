package com.cas.admin.present.service;

import com.cas.admin.db.dto.Article;

public interface AdminPresentService {

	/*cas?란의 내용들을 가져오는 메서다*/
	public Article selectPresent();

	/*cas?란의 내용을 수정시켜주는 메서드*/
	public boolean updatePresent();
}

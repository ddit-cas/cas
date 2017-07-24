package com.cas.member.comment.service;

import java.util.List;

import com.cas.db.dto.CommentVO;

public interface CommentService {
	public void insertComment(CommentVO commentVO);
	public List<CommentVO> selectComment(String boardNum);
}

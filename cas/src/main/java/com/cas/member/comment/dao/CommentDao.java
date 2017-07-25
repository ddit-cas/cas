package com.cas.member.comment.dao;

import java.util.List;

import com.cas.db.dto.CommentVO;

public interface CommentDao {
	public void insertComment(CommentVO commentVO);
	public List<CommentVO> selectComment(String boardNum);
	public void deleteComment(String boardNum);
	public void updateComment(CommentVO commentVO);
}

package com.cas.member.comment.service.impl;

import java.util.List;

import com.cas.db.dto.CommentVO;
import com.cas.member.comment.dao.CommentDao;
import com.cas.member.comment.service.CommentService;

public class CommentServiceImpl implements CommentService{
	private CommentDao commentDao;
	
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}
	
	@Override
	public void insertComment(CommentVO commentVO) {
		commentDao.insertComment(commentVO);
	}

	@Override
	public List<CommentVO> selectComment(String boardNum) {
		List<CommentVO> commentList=commentDao.selectComment(boardNum);
		return commentList;
	}

	@Override
	public void deleteComment(String boardNum) {
		commentDao.deleteComment(boardNum);
	}

	@Override
	public void updateComment(CommentVO commentVO) {
		commentDao.updateComment(commentVO);
	}

}

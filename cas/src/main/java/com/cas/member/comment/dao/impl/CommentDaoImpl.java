package com.cas.member.comment.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.cas.db.dto.CommentVO;
import com.cas.member.comment.dao.CommentDao;
import com.ibatis.sqlmap.client.SqlMapClient;

public class CommentDaoImpl implements CommentDao{
	private SqlMapClient sqlMapClient;
	
	public void setSqlMapClient(SqlMapClient sqlMapClient) {
		this.sqlMapClient = sqlMapClient;
	}
	
	@Override
	public void insertComment(CommentVO commentVO) {
		try {
			sqlMapClient.insert("insertComment",commentVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<CommentVO> selectComment(String boardNum) {
		List<CommentVO> commentList=null;
		try {
			commentList=sqlMapClient.queryForList("selectCommentList", boardNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return commentList;
	}

	@Override
	public void deleteComment(String boardNum) {
		try {
			sqlMapClient.update("contentOffState",boardNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateComment(CommentVO commentVO) {
		try {
			sqlMapClient.update("updateCommentContent",commentVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

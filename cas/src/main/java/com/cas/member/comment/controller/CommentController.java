package com.cas.member.comment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cas.db.dto.CommentVO;
import com.cas.member.comment.service.CommentService;

@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}
	
	@ResponseBody
	@RequestMapping("/member/insertCommnet")
	public void insertComment(Model model,CommentVO commentVO){
		commentService.insertComment(commentVO);
	}
	
	@ResponseBody
	@RequestMapping("/member/deleteCommnet")
	public void deleteComment(Model model,CommentVO commentVO){
		commentService.deleteComment(commentVO.getContentNum());
	}
	
	@ResponseBody
	@RequestMapping("/member/updateCommnet")
	public void updateComment(Model model,CommentVO commentVO){
		commentService.updateComment(commentVO);
	}
}	

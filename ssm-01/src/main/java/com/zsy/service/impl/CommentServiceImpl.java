package com.zsy.service.impl;

import com.zsy.dao.CommentDao;
import com.zsy.domain.Comment;
import com.zsy.service.ICommentService;
import com.zsy.vo.AccountComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements ICommentService {

    @Autowired
    private CommentDao commentDao;

    @Override
    public List<Comment> findAll() {
        return commentDao.findAll();
    }

    @Override
    public List<AccountComment> OneComment(Integer id) {
        return commentDao.OneComment(id);
    }

    @Override
    public List<Comment> findList(Integer userId) {
        return commentDao.findList(userId);
    }

    @Override
    public Integer delComment(Integer id) {
        return commentDao.delComment(id);
    }

    @Override
    public Integer addComment(Comment comment) {
        return commentDao.addComment(comment);
    }
}

package com.zsy.service;

import com.zsy.domain.Account;
import com.zsy.domain.Comment;
import com.zsy.vo.AccountComment;


import java.util.List;

public interface ICommentService {
    List<Comment> findAll();

    List<AccountComment> OneComment(Integer id);

    List<Comment> findList(Integer userId);

    Integer delComment(Integer id);

    Integer addComment(Comment comment);

    List<Comment> commentAll();

}

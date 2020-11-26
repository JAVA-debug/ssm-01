package com.zsy.service;

import com.zsy.domain.Comment;
import com.zsy.vo.AccountComment;


import java.util.List;

public interface ICommentService {
    List<Comment> findAll();

    List<AccountComment> OneComment(Integer id);
}

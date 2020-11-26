package com.zsy.dao;

import com.zsy.domain.Comment;
import com.zsy.vo.AccountComment;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CommentDao {
    @Select("select * from comment")
    List<Comment> findAll();

//    @Select("SELECT * from account WHERE id = (SELECT userId from comment WHERE productId = #{bookid})")
    List<AccountComment> OneComment(@Param("bookid") Integer id);
}
